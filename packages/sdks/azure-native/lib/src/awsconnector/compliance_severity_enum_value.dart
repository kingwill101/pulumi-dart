// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Definition of ComplianceSeverityEnumValue
class ComplianceSeverityEnumValue {
  /// Property value
  final pulumi.Input<dynamic>? value;

  /// Creates a new [ComplianceSeverityEnumValue].
  /// [value] Property value
  const ComplianceSeverityEnumValue({
    this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'value': ?value,
    };
  }

  factory ComplianceSeverityEnumValue.fromMap(Map<String, dynamic> map) {
    return ComplianceSeverityEnumValue(
      value: (() { final guardedValue = map['value']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
    );
  }
}
