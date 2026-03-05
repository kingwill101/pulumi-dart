// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class TableAttribute {
  /// Name of the attribute
  final pulumi.Input<String> name;
  /// Attribute type. Valid values are `S` (string), `N` (number), `B` (binary).
  final pulumi.Input<String> type;

  /// Creates a new [TableAttribute].
  /// [name] Name of the attribute
  /// [type] Attribute type. Valid values are `S` (string), `N` (number), `B` (binary).
  TableAttribute({
    required this.name,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'type': type,
    };
  }

  factory TableAttribute.fromMap(Map<String, dynamic> map) {
    return TableAttribute(
      name: pulumi.Input.fromValue(map['name'] as String),
      type: pulumi.Input.fromValue(map['type'] as String),
    );
  }
}

