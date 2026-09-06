// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'available_patch_summary_response.dart';
import 'instance_view_status_response.dart';
import 'last_patch_installation_summary_response.dart';

/// The status of virtual machine patch operations.
class VirtualMachinePatchStatusResponse {
  /// The available patch summary of the latest assessment operation for the virtual machine.
  final pulumi.Input<AvailablePatchSummaryResponse?>? availablePatchSummary;
  /// The enablement status of the specified patchMode
  final pulumi.Input<List<InstanceViewStatusResponse>> configurationStatuses;
  /// The installation summary of the latest installation operation for the virtual machine.
  final pulumi.Input<LastPatchInstallationSummaryResponse?>? lastPatchInstallationSummary;

  /// Creates a new [VirtualMachinePatchStatusResponse].
  /// [availablePatchSummary] The available patch summary of the latest assessment operation for the virtual machine.
  /// [configurationStatuses] The enablement status of the specified patchMode
  /// [lastPatchInstallationSummary] The installation summary of the latest installation operation for the virtual machine.
  const VirtualMachinePatchStatusResponse({
    this.availablePatchSummary,
    required this.configurationStatuses,
    this.lastPatchInstallationSummary,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'availablePatchSummary': ?pulumi.Input.mapOptionalInputValue<AvailablePatchSummaryResponse, Map<String, dynamic>>(availablePatchSummary, (value) => value.toMap()),
      'configurationStatuses': pulumi.Input.mapInputValue<List<InstanceViewStatusResponse>, List<Map<String, dynamic>>>(configurationStatuses, (value) => pulumi.Input.encodeList<InstanceViewStatusResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'lastPatchInstallationSummary': ?pulumi.Input.mapOptionalInputValue<LastPatchInstallationSummaryResponse, Map<String, dynamic>>(lastPatchInstallationSummary, (value) => value.toMap()),
    };
  }

  factory VirtualMachinePatchStatusResponse.fromMap(Map<String, dynamic> map) {
    return VirtualMachinePatchStatusResponse(
      availablePatchSummary: (() { final guardedValue = map['availablePatchSummary']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AvailablePatchSummaryResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      configurationStatuses: pulumi.Input.fromValue(pulumi.Input.decodeList<InstanceViewStatusResponse>(map['configurationStatuses']!, (value) => InstanceViewStatusResponse.fromMap((value as Map).cast<String, dynamic>()))),
      lastPatchInstallationSummary: (() { final guardedValue = map['lastPatchInstallationSummary']; if (guardedValue == null) return null; return pulumi.Input.fromValue(LastPatchInstallationSummaryResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
