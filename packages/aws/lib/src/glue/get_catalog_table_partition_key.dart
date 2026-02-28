// ignore_for_file: unused_element, unnecessary_cast

class GetCatalogTablePartitionKey {
  /// Free-form text comment.
  final String comment;

  /// Name of the table.
  final String name;

  /// Map of initialization parameters for the SerDe, in key-value form.
  final Map<String, String> parameters;

  /// Datatype of data in the Column.
  final String type;

  /// Creates a new [GetCatalogTablePartitionKey].
  /// [comment] Free-form text comment.
  /// [name] Name of the table.
  /// [parameters] Map of initialization parameters for the SerDe, in key-value form.
  /// [type] Datatype of data in the Column.
  GetCatalogTablePartitionKey({
    required this.comment,
    required this.name,
    required this.parameters,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['comment'] = comment;
    map['name'] = name;
    map['parameters'] = parameters;
    map['type'] = type;
    return map;
  }

  factory GetCatalogTablePartitionKey.fromMap(Map<String, dynamic> map) {
    return GetCatalogTablePartitionKey(
      comment: map['comment'] as String,
      name: map['name'] as String,
      parameters: (map['parameters'] as Map).cast<String, String>(),
      type: map['type'] as String,
    );
  }
}
