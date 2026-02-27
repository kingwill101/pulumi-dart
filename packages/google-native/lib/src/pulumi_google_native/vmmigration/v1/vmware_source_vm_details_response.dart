// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'vm_capabilities_response.dart';
import 'vmware_disk_details_response.dart';

/// Represent the source Vmware VM details.
class VmwareSourceVmDetailsResponse {
  /// The total size of the disks being migrated in bytes.
  final String committedStorageBytes;

  /// The disks attached to the source VM.
  final List<VmwareDiskDetailsResponse> disks;

  /// The firmware type of the source VM.
  final String firmware;

  /// Information about VM capabilities needed for some Compute Engine features.
  final VmCapabilitiesResponse vmCapabilitiesInfo;

  VmwareSourceVmDetailsResponse({
    required this.committedStorageBytes,
    required this.disks,
    required this.firmware,
    required this.vmCapabilitiesInfo,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['committedStorageBytes'] = committedStorageBytes;
    map['disks'] = pulumi.Input.encodeList<VmwareDiskDetailsResponse,
        Map<String, dynamic>>(disks, (value) => value.toMap());
    map['firmware'] = firmware;
    map['vmCapabilitiesInfo'] = vmCapabilitiesInfo.toMap();
    return map;
  }

  factory VmwareSourceVmDetailsResponse.fromMap(Map<String, dynamic> map) {
    return VmwareSourceVmDetailsResponse(
      committedStorageBytes: map['committedStorageBytes'] as String,
      disks: pulumi.Input.decodeList<VmwareDiskDetailsResponse>(
          map['disks'],
          (value) => VmwareDiskDetailsResponse.fromMap(
              (value as Map).cast<String, dynamic>())),
      firmware: map['firmware'] as String,
      vmCapabilitiesInfo: VmCapabilitiesResponse.fromMap(
          (map['vmCapabilitiesInfo'] as Map).cast<String, dynamic>()),
    );
  }
}
