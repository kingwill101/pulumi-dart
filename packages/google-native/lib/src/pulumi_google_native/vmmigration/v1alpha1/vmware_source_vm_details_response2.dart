// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import 'vm_capabilities_response2.dart';
import 'vmware_disk_details_response2.dart';

/// Represent the source Vmware VM details.
class VmwareSourceVmDetailsResponse2 {
  /// The total size of the disks being migrated in bytes.
  final String committedStorageBytes;

  /// The disks attached to the source VM.
  final List<VmwareDiskDetailsResponse2> disks;

  /// The firmware type of the source VM.
  final String firmware;

  /// Information about VM capabilities needed for some Compute Engine features.
  final VmCapabilitiesResponse2 vmCapabilitiesInfo;

  VmwareSourceVmDetailsResponse2({
    required this.committedStorageBytes,
    required this.disks,
    required this.firmware,
    required this.vmCapabilitiesInfo,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['committedStorageBytes'] = committedStorageBytes;
    map['disks'] =
        Input.encodeList<VmwareDiskDetailsResponse2, Map<String, dynamic>>(
            disks, (value) => value.toMap());
    map['firmware'] = firmware;
    map['vmCapabilitiesInfo'] = vmCapabilitiesInfo.toMap();
    return map;
  }

  factory VmwareSourceVmDetailsResponse2.fromMap(Map<String, dynamic> map) {
    return VmwareSourceVmDetailsResponse2(
      committedStorageBytes: map['committedStorageBytes'] as String,
      disks: Input.decodeList<VmwareDiskDetailsResponse2>(
          map['disks'],
          (value) => VmwareDiskDetailsResponse2.fromMap(
              (value as Map).cast<String, dynamic>())),
      firmware: map['firmware'] as String,
      vmCapabilitiesInfo: VmCapabilitiesResponse2.fromMap(
          (map['vmCapabilitiesInfo'] as Map).cast<String, dynamic>()),
    );
  }
}
