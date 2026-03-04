// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Definition of ConfigChangeStatusEnumValue
class ConfigChangeStatusEnumValueResponse {
  /// Property value
  final pulumi.Input<String>? value;

  /// Creates a new [ConfigChangeStatusEnumValueResponse].
  /// [value] Property value
  ConfigChangeStatusEnumValueResponse({this.value});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'value': ?value};
  }

  factory ConfigChangeStatusEnumValueResponse.fromMap(
    Map<String, dynamic> map,
  ) {
    return ConfigChangeStatusEnumValueResponse(
      value: (() {
        final guardedValue = map['value'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
