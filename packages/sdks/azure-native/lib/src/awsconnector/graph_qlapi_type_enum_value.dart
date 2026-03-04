// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Definition of GraphQLApiTypeEnumValue
class GraphQLApiTypeEnumValue {
  /// Property value
  final pulumi.Input<String>? value;

  /// Creates a new [GraphQLApiTypeEnumValue].
  /// [value] Property value
  GraphQLApiTypeEnumValue({this.value});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'value': ?value};
  }

  factory GraphQLApiTypeEnumValue.fromMap(Map<String, dynamic> map) {
    return GraphQLApiTypeEnumValue(
      value: (() {
        final guardedValue = map['value'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
