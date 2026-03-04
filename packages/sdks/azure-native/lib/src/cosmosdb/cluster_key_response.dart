// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Cosmos DB Cassandra table cluster key
class ClusterKeyResponse {
  /// Name of the Cosmos DB Cassandra table cluster key
  final pulumi.Input<String>? name;

  /// Order of the Cosmos DB Cassandra table cluster key, only support "Asc" and "Desc"
  final pulumi.Input<String>? orderBy;

  /// Creates a new [ClusterKeyResponse].
  /// [name] Name of the Cosmos DB Cassandra table cluster key
  /// [orderBy] Order of the Cosmos DB Cassandra table cluster key, only support "Asc" and "Desc"
  ClusterKeyResponse({this.name, this.orderBy});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'name': ?name, 'orderBy': ?orderBy};
  }

  factory ClusterKeyResponse.fromMap(Map<String, dynamic> map) {
    return ClusterKeyResponse(
      name: (() {
        final guardedValue = map['name'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      orderBy: (() {
        final guardedValue = map['orderBy'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
