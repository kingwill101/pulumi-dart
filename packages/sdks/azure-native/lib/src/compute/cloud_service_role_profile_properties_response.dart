// ignore_for_file: unused_element, unnecessary_cast

import 'cloud_service_role_sku_response.dart';

/// Describes the role properties.
class CloudServiceRoleProfilePropertiesResponse {
  /// Resource name.
  final String? name;
  /// Describes the cloud service role sku.
  final CloudServiceRoleSkuResponse? sku;

  /// Creates a new [CloudServiceRoleProfilePropertiesResponse].
  /// [name] Resource name.
  /// [sku] Describes the cloud service role sku.
  CloudServiceRoleProfilePropertiesResponse({
    this.name,
    this.sku,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': ?name,
      'sku': ?sku == null ? null : sku!.toMap(),
    };
  }

  factory CloudServiceRoleProfilePropertiesResponse.fromMap(Map<String, dynamic> map) {
    return CloudServiceRoleProfilePropertiesResponse(
      name: map['name'] == null ? null : map['name'] as String,
      sku: map['sku'] == null ? null : CloudServiceRoleSkuResponse.fromMap((map['sku'] as Map).cast<String, dynamic>()),
    );
  }
}

