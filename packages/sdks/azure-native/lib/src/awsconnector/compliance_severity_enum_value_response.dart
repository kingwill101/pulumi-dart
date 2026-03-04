// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Definition of ComplianceSeverityEnumValue
class ComplianceSeverityEnumValueResponse {
  /// Property value
  final pulumi.Input<String>? value;

  /// Creates a new [ComplianceSeverityEnumValueResponse].
  /// [value] Property value
  ComplianceSeverityEnumValueResponse({this.value});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'value': ?value};
  }

  factory ComplianceSeverityEnumValueResponse.fromMap(
    Map<String, dynamic> map,
  ) {
    return ComplianceSeverityEnumValueResponse(
      value: (() {
        final guardedValue = map['value'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
