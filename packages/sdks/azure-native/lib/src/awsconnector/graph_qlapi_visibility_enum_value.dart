// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Definition of GraphQLApiVisibilityEnumValue
class GraphQLApiVisibilityEnumValue {
  /// Property value
  final pulumi.Input<String>? value;

  /// Creates a new [GraphQLApiVisibilityEnumValue].
  /// [value] Property value
  GraphQLApiVisibilityEnumValue({
    this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'value': ?value,
    };
  }

  factory GraphQLApiVisibilityEnumValue.fromMap(Map<String, dynamic> map) {
    return GraphQLApiVisibilityEnumValue(
      value: map['value'] == null ? null : (map['value'] as String).input(),
    );
  }
}

