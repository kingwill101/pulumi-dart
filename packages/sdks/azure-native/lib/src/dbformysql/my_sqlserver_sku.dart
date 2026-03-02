// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Billing information related properties of a server.
class MySQLServerSku {
  /// The name of the sku, e.g. Standard_D32s_v3.
  final pulumi.Input<String> name;
  /// The tier of the particular SKU, e.g. GeneralPurpose.
  final pulumi.Input<String> tier;

  /// Creates a new [MySQLServerSku].
  /// [name] The name of the sku, e.g. Standard_D32s_v3.
  /// [tier] The tier of the particular SKU, e.g. GeneralPurpose.
  MySQLServerSku({
    required this.name,
    required this.tier,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'tier': tier,
    };
  }

  factory MySQLServerSku.fromMap(Map<String, dynamic> map) {
    return MySQLServerSku(
      name: (map['name'] as String).input(),
      tier: (map['tier'] as String).input(),
    );
  }
}

