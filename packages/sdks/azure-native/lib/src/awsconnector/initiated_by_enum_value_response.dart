// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Definition of InitiatedByEnumValue
class InitiatedByEnumValueResponse {
  /// Property value
  final pulumi.Input<String>? value;

  /// Creates a new [InitiatedByEnumValueResponse].
  /// [value] Property value
  InitiatedByEnumValueResponse({this.value});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'value': ?value};
  }

  factory InitiatedByEnumValueResponse.fromMap(Map<String, dynamic> map) {
    return InitiatedByEnumValueResponse(
      value: (() {
        final guardedValue = map['value'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
