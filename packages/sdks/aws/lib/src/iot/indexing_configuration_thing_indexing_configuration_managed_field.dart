// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class IndexingConfigurationThingIndexingConfigurationManagedField {
  /// The name of the field.
  final pulumi.Input<String>? name;
  /// The data type of the field. Valid values: `Number`, `String`, `Boolean`.
  final pulumi.Input<String>? type;

  /// Creates a new [IndexingConfigurationThingIndexingConfigurationManagedField].
  /// [name] The name of the field.
  /// [type] The data type of the field. Valid values: `Number`, `String`, `Boolean`.
  IndexingConfigurationThingIndexingConfigurationManagedField({
    this.name,
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': ?name,
      'type': ?type,
    };
  }

  factory IndexingConfigurationThingIndexingConfigurationManagedField.fromMap(Map<String, dynamic> map) {
    return IndexingConfigurationThingIndexingConfigurationManagedField(
      name: map['name'] == null ? null : (map['name'] as String).input(),
      type: map['type'] == null ? null : (map['type'] as String).input(),
    );
  }
}

