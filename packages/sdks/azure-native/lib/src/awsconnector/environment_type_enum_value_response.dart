// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Definition of EnvironmentTypeEnumValue
class EnvironmentTypeEnumValueResponse {
  /// Property value
  final pulumi.Input<String>? value;

  /// Creates a new [EnvironmentTypeEnumValueResponse].
  /// [value] Property value
  EnvironmentTypeEnumValueResponse({
    this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'value': ?value,
    };
  }

  factory EnvironmentTypeEnumValueResponse.fromMap(Map<String, dynamic> map) {
    return EnvironmentTypeEnumValueResponse(
      value: map['value'] == null ? null : (map['value']! as String).input(),
    );
  }
}

