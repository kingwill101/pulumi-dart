// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'encryption_response.dart';

/// Elastic San Pool Properties
class ElasticSanResponse {
  /// Encryption specifies the encryption configuration for the Azure Disk pool
  final pulumi.Input<EncryptionResponse>? encryption;

  /// Managed resource group for the pool.
  final pulumi.Input<String> resourceGroup;

  /// Sku name
  final pulumi.Input<String>? skuName;

  /// Creates a new [ElasticSanResponse].
  /// [encryption] Encryption specifies the encryption configuration for the Azure Disk pool
  /// [resourceGroup] Managed resource group for the pool.
  /// [skuName] Sku name
  ElasticSanResponse({
    this.encryption,
    required this.resourceGroup,
    this.skuName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'encryption':
          ?pulumi.Input.mapOptionalInputValue<
            EncryptionResponse,
            Map<String, dynamic>
          >(encryption, (value) => value.toMap()),
      'resourceGroup': resourceGroup,
      'skuName': ?skuName,
    };
  }

  factory ElasticSanResponse.fromMap(Map<String, dynamic> map) {
    return ElasticSanResponse(
      encryption: (() {
        final guardedValue = map['encryption'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          EncryptionResponse.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      resourceGroup: pulumi.Input.fromValue(map['resourceGroup'] as String),
      skuName: (() {
        final guardedValue = map['skuName'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
