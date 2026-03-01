// ignore_for_file: unused_element, unnecessary_cast

import 'cloud_service_role_sku.dart';

/// Describes the role properties.
class CloudServiceRoleProfileProperties {
  /// Resource name.
  final String? name;
  /// Describes the cloud service role sku.
  final CloudServiceRoleSku? sku;

  /// Creates a new [CloudServiceRoleProfileProperties].
  /// [name] Resource name.
  /// [sku] Describes the cloud service role sku.
  CloudServiceRoleProfileProperties({
    this.name,
    this.sku,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': ?name,
      'sku': ?sku == null ? null : sku!.toMap(),
    };
  }

  factory CloudServiceRoleProfileProperties.fromMap(Map<String, dynamic> map) {
    return CloudServiceRoleProfileProperties(
      name: map['name'] == null ? null : map['name'] as String,
      sku: map['sku'] == null ? null : CloudServiceRoleSku.fromMap((map['sku'] as Map).cast<String, dynamic>()),
    );
  }
}

