// ignore_for_file: unused_element, unnecessary_cast


class CassandraTableSchemaPartitionKey {
  /// Name of the column to partition by.
  final String name;

  /// Creates a new [CassandraTableSchemaPartitionKey].
  /// [name] Name of the column to partition by.
  CassandraTableSchemaPartitionKey({
    required this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
    };
  }

  factory CassandraTableSchemaPartitionKey.fromMap(Map<String, dynamic> map) {
    return CassandraTableSchemaPartitionKey(
      name: map['name'] as String,
    );
  }
}

