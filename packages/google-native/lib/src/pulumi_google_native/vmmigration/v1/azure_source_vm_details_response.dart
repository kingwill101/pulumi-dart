// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'azure_disk_details_response.dart';
import 'vm_capabilities_response.dart';

/// Represent the source Azure VM details.
class AzureSourceVmDetailsResponse {
  /// The total size of the disks being migrated in bytes.
  final String committedStorageBytes;

  /// The disks attached to the source VM.
  final List<AzureDiskDetailsResponse> disks;

  /// The firmware type of the source VM.
  final String firmware;

  /// Information about VM capabilities needed for some Compute Engine features.
  final VmCapabilitiesResponse vmCapabilitiesInfo;

  AzureSourceVmDetailsResponse({
    required this.committedStorageBytes,
    required this.disks,
    required this.firmware,
    required this.vmCapabilitiesInfo,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['committedStorageBytes'] = committedStorageBytes;
    map['disks'] =
        pulumi.Input.encodeList<AzureDiskDetailsResponse, Map<String, dynamic>>(
            disks, (value) => value.toMap());
    map['firmware'] = firmware;
    map['vmCapabilitiesInfo'] = vmCapabilitiesInfo.toMap();
    return map;
  }

  factory AzureSourceVmDetailsResponse.fromMap(Map<String, dynamic> map) {
    return AzureSourceVmDetailsResponse(
      committedStorageBytes: map['committedStorageBytes'] as String,
      disks: pulumi.Input.decodeList<AzureDiskDetailsResponse>(
          map['disks'],
          (value) => AzureDiskDetailsResponse.fromMap(
              (value as Map).cast<String, dynamic>())),
      firmware: map['firmware'] as String,
      vmCapabilitiesInfo: VmCapabilitiesResponse.fromMap(
          (map['vmCapabilitiesInfo'] as Map).cast<String, dynamic>()),
    );
  }
}
