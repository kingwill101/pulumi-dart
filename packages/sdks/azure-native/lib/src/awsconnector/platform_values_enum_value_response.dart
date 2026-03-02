// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Definition of PlatformValuesEnumValue
class PlatformValuesEnumValueResponse {
  /// Property value
  final pulumi.Input<String>? value;

  /// Creates a new [PlatformValuesEnumValueResponse].
  /// [value] Property value
  PlatformValuesEnumValueResponse({
    this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'value': ?value,
    };
  }

  factory PlatformValuesEnumValueResponse.fromMap(Map<String, dynamic> map) {
    return PlatformValuesEnumValueResponse(
      value: map['value'] == null ? null : (map['value']! as String).input(),
    );
  }
}

