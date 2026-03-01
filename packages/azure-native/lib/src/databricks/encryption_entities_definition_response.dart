// ignore_for_file: unused_element, unnecessary_cast

import 'encryption_v2_response.dart';
import 'managed_disk_encryption_response.dart';

/// Encryption entities for databricks workspace resource.
class EncryptionEntitiesDefinitionResponse {
  /// Encryption properties for the databricks managed disks.
  final ManagedDiskEncryptionResponse? managedDisk;
  /// Encryption properties for the databricks managed services.
  final EncryptionV2Response? managedServices;

  /// Creates a new [EncryptionEntitiesDefinitionResponse].
  /// [managedDisk] Encryption properties for the databricks managed disks.
  /// [managedServices] Encryption properties for the databricks managed services.
  EncryptionEntitiesDefinitionResponse({
    this.managedDisk,
    this.managedServices,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'managedDisk': ?managedDisk == null ? null : managedDisk!.toMap(),
      'managedServices': ?managedServices == null ? null : managedServices!.toMap(),
    };
  }

  factory EncryptionEntitiesDefinitionResponse.fromMap(Map<String, dynamic> map) {
    return EncryptionEntitiesDefinitionResponse(
      managedDisk: map['managedDisk'] == null ? null : ManagedDiskEncryptionResponse.fromMap((map['managedDisk'] as Map).cast<String, dynamic>()),
      managedServices: map['managedServices'] == null ? null : EncryptionV2Response.fromMap((map['managedServices'] as Map).cast<String, dynamic>()),
    );
  }
}

