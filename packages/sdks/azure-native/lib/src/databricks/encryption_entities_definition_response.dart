// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'encryption_v2_response.dart';
import 'managed_disk_encryption_response.dart';

/// Encryption entities for databricks workspace resource.
class EncryptionEntitiesDefinitionResponse {
  /// Encryption properties for the databricks managed disks. Not allowed in Serverless ComputeMode workspace.
  final pulumi.Input<ManagedDiskEncryptionResponse?>? managedDisk;
  /// Encryption properties for the databricks managed services. Supported in both Serverless and Hybrid ComputeMode.
  final pulumi.Input<EncryptionV2Response?>? managedServices;

  /// Creates a new [EncryptionEntitiesDefinitionResponse].
  /// [managedDisk] Encryption properties for the databricks managed disks. Not allowed in Serverless ComputeMode workspace.
  /// [managedServices] Encryption properties for the databricks managed services. Supported in both Serverless and Hybrid ComputeMode.
  const EncryptionEntitiesDefinitionResponse({
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
      managedDisk: (() { final guardedValue = map['managedDisk']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ManagedDiskEncryptionResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      managedServices: (() { final guardedValue = map['managedServices']; if (guardedValue == null) return null; return pulumi.Input.fromValue(EncryptionV2Response.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
