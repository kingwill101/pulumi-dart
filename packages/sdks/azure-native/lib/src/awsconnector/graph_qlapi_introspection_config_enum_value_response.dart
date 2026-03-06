// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Definition of GraphQLApiIntrospectionConfigEnumValue
class GraphQLApiIntrospectionConfigEnumValueResponse {
  /// Property value
  final pulumi.Input<String>? value;

  /// Creates a new [GraphQLApiIntrospectionConfigEnumValueResponse].
  /// [value] Property value
  const GraphQLApiIntrospectionConfigEnumValueResponse({
    this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'value': ?value,
    };
  }

  factory GraphQLApiIntrospectionConfigEnumValueResponse.fromMap(Map<String, dynamic> map) {
    return GraphQLApiIntrospectionConfigEnumValueResponse(
      value: (() { final guardedValue = map['value']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

