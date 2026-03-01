// ignore_for_file: unused_element, unnecessary_cast

import 'restore_point_source_vmstorage_profile.dart';

/// Describes the properties of the Virtual Machine for which the restore point was created. The properties provided are a subset and the snapshot of the overall Virtual Machine properties captured at the time of the restore point creation.
class RestorePointSourceMetadata {
  /// Gets the storage profile.
  final RestorePointSourceVMStorageProfile? storageProfile;

  /// Creates a new [RestorePointSourceMetadata].
  /// [storageProfile] Gets the storage profile.
  RestorePointSourceMetadata({
    this.storageProfile,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'storageProfile': ?storageProfile == null ? null : storageProfile!.toMap(),
    };
  }

  factory RestorePointSourceMetadata.fromMap(Map<String, dynamic> map) {
    return RestorePointSourceMetadata(
      storageProfile: map['storageProfile'] == null ? null : RestorePointSourceVMStorageProfile.fromMap((map['storageProfile'] as Map).cast<String, dynamic>()),
    );
  }
}

