// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetTableAttribute {
  /// Name of the DynamoDB table.
  final pulumi.Input<String> name;
  final pulumi.Input<String> type;

  /// Creates a new [GetTableAttribute].
  /// [name] Name of the DynamoDB table.
  /// [type] Required.
  const GetTableAttribute({
    required this.name,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'type': type,
    };
  }

  factory GetTableAttribute.fromMap(Map<String, dynamic> map) {
    return GetTableAttribute(
      name: pulumi.Input.fromValue(map['name'] as String),
      type: pulumi.Input.fromValue(map['type'] as String),
    );
  }
}
