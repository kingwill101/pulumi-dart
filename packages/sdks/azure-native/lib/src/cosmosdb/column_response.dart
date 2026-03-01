// ignore_for_file: unused_element, unnecessary_cast


/// Cosmos DB Cassandra table column
class ColumnResponse {
  /// Name of the Cosmos DB Cassandra table column
  final String? name;
  /// Type of the Cosmos DB Cassandra table column
  final String? type;

  /// Creates a new [ColumnResponse].
  /// [name] Name of the Cosmos DB Cassandra table column
  /// [type] Type of the Cosmos DB Cassandra table column
  ColumnResponse({
    this.name,
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': ?name,
      'type': ?type,
    };
  }

  factory ColumnResponse.fromMap(Map<String, dynamic> map) {
    return ColumnResponse(
      name: map['name'] == null ? null : map['name'] as String,
      type: map['type'] == null ? null : map['type'] as String,
    );
  }
}

