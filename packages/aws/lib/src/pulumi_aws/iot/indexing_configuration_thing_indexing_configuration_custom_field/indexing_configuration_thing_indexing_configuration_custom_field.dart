// ignore_for_file: unused_element, unnecessary_cast

class IndexingConfigurationThingIndexingConfigurationCustomField {
  /// The name of the field.
  final String? name;

  /// The data type of the field. Valid values: `Number`, `String`, `Boolean`.
  final String? type;

  IndexingConfigurationThingIndexingConfigurationCustomField({
    this.name,
    this.type,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    final typeValue = type;
    if (typeValue != null) {
      map['type'] = typeValue;
    }
    return map;
  }

  factory IndexingConfigurationThingIndexingConfigurationCustomField.fromMap(
      Map<String, dynamic> map) {
    return IndexingConfigurationThingIndexingConfigurationCustomField(
      name: map['name'] == null ? null : map['name'] as String,
      type: map['type'] == null ? null : map['type'] as String,
    );
  }
}
