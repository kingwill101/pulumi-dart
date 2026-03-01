// ignore_for_file: unused_element, unnecessary_cast

import 'os_disk_response.dart';

class StorageProfileResponse {
  /// The disk to use with this virtual machine.
  final OsDiskResponse osDisk;
  /// The resource IDs of volumes that are requested to be attached to the virtual machine.
  final List<String>? volumeAttachments;

  /// Creates a new [StorageProfileResponse].
  /// [osDisk] The disk to use with this virtual machine.
  /// [volumeAttachments] The resource IDs of volumes that are requested to be attached to the virtual machine.
  StorageProfileResponse({
    required this.osDisk,
    this.volumeAttachments,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'osDisk': osDisk.toMap(),
      'volumeAttachments': ?volumeAttachments,
    };
  }

  factory StorageProfileResponse.fromMap(Map<String, dynamic> map) {
    return StorageProfileResponse(
      osDisk: OsDiskResponse.fromMap((map['osDisk'] as Map).cast<String, dynamic>()),
      volumeAttachments: map['volumeAttachments'] == null ? null : (map['volumeAttachments'] as List).cast<String>(),
    );
  }
}

