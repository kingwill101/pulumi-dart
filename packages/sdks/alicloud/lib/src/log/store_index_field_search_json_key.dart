// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class StoreIndexFieldSearchJsonKey {
  /// The alias of one field.
  final pulumi.Input<String>? alias;

  /// Whether to enable statistics. default to true.
  ///
  /// &gt; **Note:** At least one of the "full_text" and "field_search" should be specified.
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
      alias: (() {
        final guardedValue = map['alias'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      docValue: (() {
        final guardedValue = map['docValue'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      name: pulumi.Input.fromValue(map['name'] as String),
      type: (() {
        final guardedValue = map['type'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
