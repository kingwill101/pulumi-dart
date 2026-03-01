// ignore_for_file: unused_element, unnecessary_cast


class StoreIndexFieldSearchJsonKey {
  /// The alias of one field.
  final String? alias;
  /// Whether to enable statistics. default to true.
  ///
  /// > **Note:** At least one of the "full_text" and "field_search" should be specified.
  final bool? docValue;
  /// When using the json_keys field, this field is required.
  final String name;
  /// The type of one field. Valid values: ["long", "text", "double"]. Default to "long"
  final String? type;

  /// Creates a new [StoreIndexFieldSearchJsonKey].
  /// [alias] The alias of one field.
  /// [docValue] Whether to enable statistics. default to true.
  /// [name] When using the json_keys field, this field is required.
  /// [type] The type of one field. Valid values: ["long", "text", "double"]. Default to "long"
  StoreIndexFieldSearchJsonKey({
    this.alias,
    this.docValue,
    required this.name,
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'alias': ?alias,
      'docValue': ?docValue,
      'name': name,
      'type': ?type,
    };
  }

  factory StoreIndexFieldSearchJsonKey.fromMap(Map<String, dynamic> map) {
    return StoreIndexFieldSearchJsonKey(
      alias: map['alias'] == null ? null : map['alias'] as String,
      docValue: map['docValue'] == null ? null : map['docValue'] as bool,
      name: map['name'] as String,
      type: map['type'] == null ? null : map['type'] as String,
    );
  }
}

