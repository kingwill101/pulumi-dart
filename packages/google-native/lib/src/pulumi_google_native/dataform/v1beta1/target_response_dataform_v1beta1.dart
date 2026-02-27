// ignore_for_file: unused_element, unnecessary_cast

/// Represents an action identifier. If the action writes output, the output will be written to the referenced database object.
class TargetResponseDataformV1beta1 {
  /// The action's database (Google Cloud project ID) .
  final String database;

  /// The action's name, within `database` and `schema`.
  final String name;

  /// The action's schema (BigQuery dataset ID), within `database`.
  final String schema;

  TargetResponseDataformV1beta1({
    required this.database,
    required this.name,
    required this.schema,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['database'] = database;
    map['name'] = name;
    map['schema'] = schema;
    return map;
  }

  factory TargetResponseDataformV1beta1.fromMap(Map<String, dynamic> map) {
    return TargetResponseDataformV1beta1(
      database: map['database'] as String,
      name: map['name'] as String,
      schema: map['schema'] as String,
    );
  }
}
