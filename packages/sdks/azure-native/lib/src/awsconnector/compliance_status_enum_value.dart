// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Definition of ComplianceStatusEnumValue
class ComplianceStatusEnumValue {
  /// Property value
  final pulumi.Input<String>? value;

  /// Creates a new [ComplianceStatusEnumValue].
  /// [value] Property value
  ComplianceStatusEnumValue({
    this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'value': ?value,
    };
  }

  factory ComplianceStatusEnumValue.fromMap(Map<String, dynamic> map) {
    return ComplianceStatusEnumValue(
      value: map['value'] == null ? null : (map['value'] as String).input(),
    );
  }
}

