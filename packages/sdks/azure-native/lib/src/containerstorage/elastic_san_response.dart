// ignore_for_file: unused_element, unnecessary_cast

import 'encryption_response.dart';

/// Elastic San Pool Properties
class ElasticSanResponse {
  /// Encryption specifies the encryption configuration for the Azure Disk pool
  final EncryptionResponse? encryption;
  /// Managed resource group for the pool.
  final String resourceGroup;
  /// Sku name
  final String? skuName;

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
      'encryption': ?encryption == null ? null : encryption!.toMap(),
      'resourceGroup': resourceGroup,
      'skuName': ?skuName,
    };
  }

  factory ElasticSanResponse.fromMap(Map<String, dynamic> map) {
    return ElasticSanResponse(
      encryption: map['encryption'] == null ? null : EncryptionResponse.fromMap((map['encryption'] as Map).cast<String, dynamic>()),
      resourceGroup: map['resourceGroup'] as String,
      skuName: map['skuName'] == null ? null : map['skuName'] as String,
    );
  }
}

