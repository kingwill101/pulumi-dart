// ignore_for_file: unused_element, unnecessary_cast

import 'encryption_v2.dart';
import 'managed_disk_encryption.dart';

/// Encryption entities for databricks workspace resource.
class EncryptionEntitiesDefinition {
  /// Encryption properties for the databricks managed disks.
  final ManagedDiskEncryption? managedDisk;
  /// Encryption properties for the databricks managed services.
  final EncryptionV2? managedServices;

  /// Creates a new [EncryptionEntitiesDefinition].
  /// [managedDisk] Encryption properties for the databricks managed disks.
  /// [managedServices] Encryption properties for the databricks managed services.
  EncryptionEntitiesDefinition({
    this.managedDisk,
    this.managedServices,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'managedDisk': ?managedDisk == null ? null : managedDisk!.toMap(),
      'managedServices': ?managedServices == null ? null : managedServices!.toMap(),
    };
  }

  factory EncryptionEntitiesDefinition.fromMap(Map<String, dynamic> map) {
    return EncryptionEntitiesDefinition(
      managedDisk: map['managedDisk'] == null ? null : ManagedDiskEncryption.fromMap((map['managedDisk'] as Map).cast<String, dynamic>()),
      managedServices: map['managedServices'] == null ? null : EncryptionV2.fromMap((map['managedServices'] as Map).cast<String, dynamic>()),
    );
  }
}

