// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'aws_disk_details_response_vmmigration_v1alpha1.dart';
import 'vm_capabilities_response_vmmigration_v1alpha1.dart';

/// Represent the source AWS VM details.
class AwsSourceVmDetailsResponseVmmigrationV1alpha1 {
  /// The total size of the disks being migrated in bytes.
  final String committedStorageBytes;

  /// The disks attached to the source VM.
  final List<AwsDiskDetailsResponseVmmigrationV1alpha1> disks;

  /// The firmware type of the source VM.
  final String firmware;

  /// Information about VM capabilities needed for some Compute Engine features.
  final VmCapabilitiesResponseVmmigrationV1alpha1 vmCapabilitiesInfo;

  AwsSourceVmDetailsResponseVmmigrationV1alpha1({
    required this.committedStorageBytes,
    required this.disks,
    required this.firmware,
    required this.vmCapabilitiesInfo,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['committedStorageBytes'] = committedStorageBytes;
    map['disks'] = pulumi.Input.encodeList<
        AwsDiskDetailsResponseVmmigrationV1alpha1,
        Map<String, dynamic>>(disks, (value) => value.toMap());
    map['firmware'] = firmware;
    map['vmCapabilitiesInfo'] = vmCapabilitiesInfo.toMap();
    return map;
  }

  factory AwsSourceVmDetailsResponseVmmigrationV1alpha1.fromMap(
      Map<String, dynamic> map) {
    return AwsSourceVmDetailsResponseVmmigrationV1alpha1(
      committedStorageBytes: map['committedStorageBytes'] as String,
      disks: pulumi.Input.decodeList<AwsDiskDetailsResponseVmmigrationV1alpha1>(
          map['disks'],
          (value) => AwsDiskDetailsResponseVmmigrationV1alpha1.fromMap(
              (value as Map).cast<String, dynamic>())),
      firmware: map['firmware'] as String,
      vmCapabilitiesInfo: VmCapabilitiesResponseVmmigrationV1alpha1.fromMap(
          (map['vmCapabilitiesInfo'] as Map).cast<String, dynamic>()),
    );
  }
}
