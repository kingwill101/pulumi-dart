// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Definition of GraphQLApiIntrospectionConfigEnumValue
class GraphQLApiIntrospectionConfigEnumValueResponse {
  /// Property value
  final pulumi.Input<String>? value;

  /// Creates a new [GraphQLApiIntrospectionConfigEnumValueResponse].
  /// [value] Property value
  GraphQLApiIntrospectionConfigEnumValueResponse({
    this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'value': ?value,
    };
  }

  factory GraphQLApiIntrospectionConfigEnumValueResponse.fromMap(Map<String, dynamic> map) {
    return GraphQLApiIntrospectionConfigEnumValueResponse(
      value: map['value'] == null ? null : (map['value']! as String).input(),
    );
  }
}

