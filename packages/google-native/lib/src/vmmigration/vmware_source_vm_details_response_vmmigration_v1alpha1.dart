// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'vm_capabilities_response_vmmigration_v1alpha1.dart';
import 'vmware_disk_details_response_vmmigration_v1alpha1.dart';

/// Represent the source Vmware VM details.
class VmwareSourceVmDetailsResponseVmmigrationV1alpha1 {
  /// The total size of the disks being migrated in bytes.
  final String committedStorageBytes;

  /// The disks attached to the source VM.
  final List<VmwareDiskDetailsResponseVmmigrationV1alpha1> disks;

  /// The firmware type of the source VM.
  final String firmware;

  /// Information about VM capabilities needed for some Compute Engine features.
  final VmCapabilitiesResponseVmmigrationV1alpha1 vmCapabilitiesInfo;

  /// Creates a new [VmwareSourceVmDetailsResponseVmmigrationV1alpha1].
  /// [committedStorageBytes] The total size of the disks being migrated in bytes.
  /// [disks] The disks attached to the source VM.
  /// [firmware] The firmware type of the source VM.
  /// [vmCapabilitiesInfo] Information about VM capabilities needed for some Compute Engine features.
  VmwareSourceVmDetailsResponseVmmigrationV1alpha1({
    required this.committedStorageBytes,
    required this.disks,
    required this.firmware,
    required this.vmCapabilitiesInfo,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'committedStorageBytes': committedStorageBytes,
      'disks':
          pulumi.Input.encodeList<
            VmwareDiskDetailsResponseVmmigrationV1alpha1,
            Map<String, dynamic>
          >(disks, (value) => value.toMap()),
      'firmware': firmware,
      'vmCapabilitiesInfo': vmCapabilitiesInfo.toMap(),
    };
  }

  factory VmwareSourceVmDetailsResponseVmmigrationV1alpha1.fromMap(
    Map<String, dynamic> map,
  ) {
    return VmwareSourceVmDetailsResponseVmmigrationV1alpha1(
      committedStorageBytes: map['committedStorageBytes'] as String,
      disks:
          pulumi.Input.decodeList<VmwareDiskDetailsResponseVmmigrationV1alpha1>(
            map['disks'],
            (value) => VmwareDiskDetailsResponseVmmigrationV1alpha1.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
      firmware: map['firmware'] as String,
      vmCapabilitiesInfo: VmCapabilitiesResponseVmmigrationV1alpha1.fromMap(
        (map['vmCapabilitiesInfo'] as Map).cast<String, dynamic>(),
      ),
    );
  }
}
