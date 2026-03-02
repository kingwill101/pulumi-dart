// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class StoreIndexFieldSearchJsonKey {
  /// The alias of one field.
  final pulumi.Input<String>? alias;
  /// Whether to enable statistics. default to true.
  ///
  /// > **Note:** At least one of the "full_text" and "field_search" should be specified.
  final pulumi.Input<bool>? docValue;
  /// When using the json_keys field, this field is required.
  final pulumi.Input<String> name;
  /// The type of one field. Valid values: ["long", "text", "double"]. Default to "long"
  final pulumi.Input<String>? type;

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
      alias: map['alias'] == null ? null : (map['alias'] as String).input(),
      docValue: map['docValue'] == null ? null : (map['docValue'] as bool).input(),
      name: (map['name'] as String).input(),
      type: map['type'] == null ? null : (map['type'] as String).input(),
    );
  }
}

