// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'cloud_service_role_sku_response.dart';

/// Describes the role properties.
class CloudServiceRoleProfilePropertiesResponse {
  /// Resource name.
  final pulumi.Input<String>? name;
  /// Describes the cloud service role sku.
  final pulumi.Input<CloudServiceRoleSkuResponse>? sku;

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
      'sku': ?pulumi.Input.mapOptionalInputValue<CloudServiceRoleSkuResponse, Map<String, dynamic>>(sku, (value) => value.toMap()),
    };
  }

  factory CloudServiceRoleProfilePropertiesResponse.fromMap(Map<String, dynamic> map) {
    return CloudServiceRoleProfilePropertiesResponse(
      name: map['name'] == null ? null : (map['name'] as String).input(),
      sku: map['sku'] == null ? null : (CloudServiceRoleSkuResponse.fromMap((map['sku'] as Map).cast<String, dynamic>())).input(),
    );
  }
}

