// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Definition of TargetHealthReasonEnumEnumValue
class TargetHealthReasonEnumEnumValueResponse {
  /// Property value
  final pulumi.Input<String>? value;

  /// Creates a new [TargetHealthReasonEnumEnumValueResponse].
  /// [value] Property value
  TargetHealthReasonEnumEnumValueResponse({
    this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'value': ?value,
    };
  }

  factory TargetHealthReasonEnumEnumValueResponse.fromMap(Map<String, dynamic> map) {
    return TargetHealthReasonEnumEnumValueResponse(
      value: map['value'] == null ? null : (map['value']! as String).input(),
    );
  }
}

