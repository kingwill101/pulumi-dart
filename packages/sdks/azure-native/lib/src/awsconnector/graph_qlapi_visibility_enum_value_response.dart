// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Definition of GraphQLApiVisibilityEnumValue
class GraphQLApiVisibilityEnumValueResponse {
  /// Property value
  final pulumi.Input<String>? value;

  /// Creates a new [GraphQLApiVisibilityEnumValueResponse].
  /// [value] Property value
  GraphQLApiVisibilityEnumValueResponse({
    this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'value': ?value,
    };
  }

  factory GraphQLApiVisibilityEnumValueResponse.fromMap(Map<String, dynamic> map) {
    return GraphQLApiVisibilityEnumValueResponse(
      value: map['value'] == null ? null : (map['value'] as String).input(),
    );
  }
}

