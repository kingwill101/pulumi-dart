// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'available_patch_summary_response.dart';
import 'instance_view_status_response.dart';
import 'last_patch_installation_summary_response.dart';

/// The status of virtual machine patch operations.
class VirtualMachinePatchStatusResponse {
  /// The available patch summary of the latest assessment operation for the virtual machine.
  final AvailablePatchSummaryResponse? availablePatchSummary;
  /// The enablement status of the specified patchMode
  final List<InstanceViewStatusResponse> configurationStatuses;
  /// The installation summary of the latest installation operation for the virtual machine.
  final LastPatchInstallationSummaryResponse? lastPatchInstallationSummary;

  /// Creates a new [VirtualMachinePatchStatusResponse].
  /// [availablePatchSummary] The available patch summary of the latest assessment operation for the virtual machine.
  /// [configurationStatuses] The enablement status of the specified patchMode
  /// [lastPatchInstallationSummary] The installation summary of the latest installation operation for the virtual machine.
  VirtualMachinePatchStatusResponse({
    this.availablePatchSummary,
    required this.configurationStatuses,
    this.lastPatchInstallationSummary,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'availablePatchSummary': ?availablePatchSummary == null ? null : availablePatchSummary!.toMap(),
      'configurationStatuses': pulumi.Input.encodeList<InstanceViewStatusResponse, Map<String, dynamic>>(configurationStatuses, (value) => value.toMap()),
      'lastPatchInstallationSummary': ?lastPatchInstallationSummary == null ? null : lastPatchInstallationSummary!.toMap(),
    };
  }

  factory VirtualMachinePatchStatusResponse.fromMap(Map<String, dynamic> map) {
    return VirtualMachinePatchStatusResponse(
      availablePatchSummary: map['availablePatchSummary'] == null ? null : AvailablePatchSummaryResponse.fromMap((map['availablePatchSummary'] as Map).cast<String, dynamic>()),
      configurationStatuses: pulumi.Input.decodeList<InstanceViewStatusResponse>(map['configurationStatuses'], (value) => InstanceViewStatusResponse.fromMap((value as Map).cast<String, dynamic>())),
      lastPatchInstallationSummary: map['lastPatchInstallationSummary'] == null ? null : LastPatchInstallationSummaryResponse.fromMap((map['lastPatchInstallationSummary'] as Map).cast<String, dynamic>()),
    );
  }
}

