// ignore_for_file: unused_element, unnecessary_cast


/// Billing information related properties of a server.
class MySQLServerSku {
  /// The name of the sku, e.g. Standard_D32s_v3.
  final String name;
  /// The tier of the particular SKU, e.g. GeneralPurpose.
  final String tier;

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
      name: map['name'] as String,
      tier: map['tier'] as String,
    );
  }
}

