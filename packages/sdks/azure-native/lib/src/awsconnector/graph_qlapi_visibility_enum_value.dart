// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Definition of GraphQLApiVisibilityEnumValue
class GraphQLApiVisibilityEnumValue {
  /// Property value
  final pulumi.Input<String>? value;

  /// Creates a new [GraphQLApiVisibilityEnumValue].
  /// [value] Property value
  const GraphQLApiVisibilityEnumValue({
    this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'value': ?value,
    };
  }

  factory GraphQLApiVisibilityEnumValue.fromMap(Map<String, dynamic> map) {
    return GraphQLApiVisibilityEnumValue(
      value: (() { final guardedValue = map['value']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
