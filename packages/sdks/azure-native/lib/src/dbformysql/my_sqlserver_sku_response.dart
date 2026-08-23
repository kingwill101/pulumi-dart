// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Billing information related properties of a server.
class MySQLServerSkuResponse {
  /// The name of the sku, e.g. Standard_D32s_v3.
  final pulumi.Input<String> name;
  /// The tier of the particular SKU, e.g. GeneralPurpose.
  final pulumi.Input<String> tier;

  /// Creates a new [MySQLServerSkuResponse].
  /// [name] The name of the sku, e.g. Standard_D32s_v3.
  /// [tier] The tier of the particular SKU, e.g. GeneralPurpose.
  const MySQLServerSkuResponse({
    required this.name,
    required this.tier,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'tier': tier,
    };
  }

  factory MySQLServerSkuResponse.fromMap(Map<String, dynamic> map) {
    return MySQLServerSkuResponse(
      name: pulumi.Input.fromValue(map['name'] as String),
      tier: pulumi.Input.fromValue(map['tier'] as String),
    );
  }
}
