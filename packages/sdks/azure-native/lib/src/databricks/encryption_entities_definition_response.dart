// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'encryption_v2_response.dart';
import 'managed_disk_encryption_response.dart';

/// Encryption entities for databricks workspace resource.
class EncryptionEntitiesDefinitionResponse {
  /// Encryption properties for the databricks managed disks.
  final pulumi.Input<ManagedDiskEncryptionResponse>? managedDisk;
  /// Encryption properties for the databricks managed services.
  final pulumi.Input<EncryptionV2Response>? managedServices;

  /// Creates a new [EncryptionEntitiesDefinitionResponse].
  /// [managedDisk] Encryption properties for the databricks managed disks.
  /// [managedServices] Encryption properties for the databricks managed services.
  EncryptionEntitiesDefinitionResponse({
    this.managedDisk,
    this.managedServices,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'managedDisk': ?pulumi.Input.mapOptionalInputValue<ManagedDiskEncryptionResponse, Map<String, dynamic>>(managedDisk, (value) => value.toMap()),
      'managedServices': ?pulumi.Input.mapOptionalInputValue<EncryptionV2Response, Map<String, dynamic>>(managedServices, (value) => value.toMap()),
    };
  }

  factory EncryptionEntitiesDefinitionResponse.fromMap(Map<String, dynamic> map) {
    return EncryptionEntitiesDefinitionResponse(
      managedDisk: map['managedDisk'] == null ? null : (ManagedDiskEncryptionResponse.fromMap((map['managedDisk'] as Map).cast<String, dynamic>())).input(),
      managedServices: map['managedServices'] == null ? null : (EncryptionV2Response.fromMap((map['managedServices'] as Map).cast<String, dynamic>())).input(),
    );
  }
}

