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
      'encryption': ?pulumi.Input.mapOptionalInputValue<EncryptionResponse, Map<String, dynamic>>(encryption, (value) => value.toMap()),
      'resourceGroup': resourceGroup,
      'skuName': ?skuName,
    };
  }

  factory ElasticSanResponse.fromMap(Map<String, dynamic> map) {
    return ElasticSanResponse(
      encryption: map['encryption'] == null ? null : (EncryptionResponse.fromMap((map['encryption'] as Map).cast<String, dynamic>())).input(),
      resourceGroup: (map['resourceGroup'] as String).input(),
      skuName: map['skuName'] == null ? null : (map['skuName'] as String).input(),
    );
  }
}

