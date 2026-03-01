// ignore_for_file: unused_element, unnecessary_cast


/// Cosmos DB Cassandra table cluster key
class ClusterKey {
  /// Name of the Cosmos DB Cassandra table cluster key
  final String? name;
  /// Order of the Cosmos DB Cassandra table cluster key, only support "Asc" and "Desc"
  final String? orderBy;

  /// Creates a new [ClusterKey].
  /// [name] Name of the Cosmos DB Cassandra table cluster key
  /// [orderBy] Order of the Cosmos DB Cassandra table cluster key, only support "Asc" and "Desc"
  ClusterKey({
    this.name,
    this.orderBy,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': ?name,
      'orderBy': ?orderBy,
    };
  }

  factory ClusterKey.fromMap(Map<String, dynamic> map) {
    return ClusterKey(
      name: map['name'] == null ? null : map['name'] as String,
      orderBy: map['orderBy'] == null ? null : map['orderBy'] as String,
    );
  }
}

