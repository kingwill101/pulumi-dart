// ignore_for_file: unused_element, unnecessary_cast


class IndexingConfigurationThingGroupIndexingConfigurationManagedField {
  /// The name of the field.
  final String? name;
  /// The data type of the field. Valid values: `Number`, `String`, `Boolean`.
  final String? type;

  /// Creates a new [IndexingConfigurationThingGroupIndexingConfigurationManagedField].
  /// [name] The name of the field.
  /// [type] The data type of the field. Valid values: `Number`, `String`, `Boolean`.
  IndexingConfigurationThingGroupIndexingConfigurationManagedField({
    this.name,
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': ?name,
      'type': ?type,
    };
  }

  factory IndexingConfigurationThingGroupIndexingConfigurationManagedField.fromMap(Map<String, dynamic> map) {
    return IndexingConfigurationThingGroupIndexingConfigurationManagedField(
      name: map['name'] == null ? null : map['name'] as String,
      type: map['type'] == null ? null : map['type'] as String,
    );
  }
}

