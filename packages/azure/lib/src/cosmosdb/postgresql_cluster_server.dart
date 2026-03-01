// ignore_for_file: unused_element, unnecessary_cast


class PostgresqlClusterServer {
  /// The Fully Qualified Domain Name of the server.
  final String? fqdn;
  /// The name which should be used for this Azure Cosmos DB for PostgreSQL Cluster. Changing this forces a new resource to be created.
  final String? name;

  /// Creates a new [PostgresqlClusterServer].
  /// [fqdn] The Fully Qualified Domain Name of the server.
  /// [name] The name which should be used for this Azure Cosmos DB for PostgreSQL Cluster. Changing this forces a new resource to be created.
  PostgresqlClusterServer({
    this.fqdn,
    this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'fqdn': ?fqdn,
      'name': ?name,
    };
  }

  factory PostgresqlClusterServer.fromMap(Map<String, dynamic> map) {
    return PostgresqlClusterServer(
      fqdn: map['fqdn'] == null ? null : map['fqdn'] as String,
      name: map['name'] == null ? null : map['name'] as String,
    );
  }
}

