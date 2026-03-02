// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Compute information of a server.
class ServerSkuResponse {
  /// Compute tier and size of the database server. This object is empty for an Azure Database for PostgreSQL single server.
  final pulumi.Input<String>? name;
  /// Tier of the compute assigned to a server.
  final pulumi.Input<String>? tier;

  /// Creates a new [ServerSkuResponse].
  /// [name] Compute tier and size of the database server. This object is empty for an Azure Database for PostgreSQL single server.
  /// [tier] Tier of the compute assigned to a server.
  ServerSkuResponse({
    this.name,
    this.tier,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': ?name,
      'tier': ?tier,
    };
  }

  factory ServerSkuResponse.fromMap(Map<String, dynamic> map) {
    return ServerSkuResponse(
      name: map['name'] == null ? null : (map['name']! as String).input(),
      tier: map['tier'] == null ? null : (map['tier']! as String).input(),
    );
  }
}

