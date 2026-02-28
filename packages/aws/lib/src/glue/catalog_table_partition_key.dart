// ignore_for_file: unused_element, unnecessary_cast


class CatalogTablePartitionKey {
  /// Free-form text comment.
  final String? comment;
  /// Name of the Partition Key.
  final String name;
  /// Map of key-value pairs.
  final Map<String, String>? parameters;
  /// Datatype of data in the Partition Key.
  final String? type;

  /// Creates a new [CatalogTablePartitionKey].
  /// [comment] Free-form text comment.
  /// [name] Name of the Partition Key.
  /// [parameters] Map of key-value pairs.
  /// [type] Datatype of data in the Partition Key.
  CatalogTablePartitionKey({
    this.comment,
    required this.name,
    this.parameters,
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'comment': ?comment,
      'name': name,
      'parameters': ?parameters,
      'type': ?type,
    };
  }

  factory CatalogTablePartitionKey.fromMap(Map<String, dynamic> map) {
    return CatalogTablePartitionKey(
      comment: map['comment'] == null ? null : map['comment'] as String,
      name: map['name'] as String,
      parameters: map['parameters'] == null ? null : (map['parameters'] as Map).cast<String, String>(),
      type: map['type'] == null ? null : map['type'] as String,
    );
  }
}

