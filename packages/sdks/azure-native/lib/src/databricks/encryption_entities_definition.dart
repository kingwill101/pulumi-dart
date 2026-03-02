// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'encryption_v2.dart';
import 'managed_disk_encryption.dart';

/// Encryption entities for databricks workspace resource.
class EncryptionEntitiesDefinition {
  /// Encryption properties for the databricks managed disks.
  final pulumi.Input<ManagedDiskEncryption>? managedDisk;
  /// Encryption properties for the databricks managed services.
  final pulumi.Input<EncryptionV2>? managedServices;

  /// Creates a new [EncryptionEntitiesDefinition].
  /// [managedDisk] Encryption properties for the databricks managed disks.
  /// [managedServices] Encryption properties for the databricks managed services.
  EncryptionEntitiesDefinition({
    this.managedDisk,
    this.managedServices,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'managedDisk': ?pulumi.Input.mapOptionalInputValue<ManagedDiskEncryption, Map<String, dynamic>>(managedDisk, (value) => value.toMap()),
      'managedServices': ?pulumi.Input.mapOptionalInputValue<EncryptionV2, Map<String, dynamic>>(managedServices, (value) => value.toMap()),
    };
  }

  factory EncryptionEntitiesDefinition.fromMap(Map<String, dynamic> map) {
    return EncryptionEntitiesDefinition(
      managedDisk: map['managedDisk'] == null ? null : (ManagedDiskEncryption.fromMap((map['managedDisk'] as Map).cast<String, dynamic>())).input(),
      managedServices: map['managedServices'] == null ? null : (EncryptionV2.fromMap((map['managedServices'] as Map).cast<String, dynamic>())).input(),
    );
  }
}

