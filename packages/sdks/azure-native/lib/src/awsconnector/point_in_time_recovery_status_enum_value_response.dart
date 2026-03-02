// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Definition of PointInTimeRecoveryStatusEnumValue
class PointInTimeRecoveryStatusEnumValueResponse {
  /// Property value
  final pulumi.Input<String>? value;

  /// Creates a new [PointInTimeRecoveryStatusEnumValueResponse].
  /// [value] Property value
  PointInTimeRecoveryStatusEnumValueResponse({
    this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'value': ?value,
    };
  }

  factory PointInTimeRecoveryStatusEnumValueResponse.fromMap(Map<String, dynamic> map) {
    return PointInTimeRecoveryStatusEnumValueResponse(
      value: map['value'] == null ? null : (map['value']! as String).input(),
    );
  }
}

