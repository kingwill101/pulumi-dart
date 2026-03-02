// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Definition of PointInTimeRecoveryStatusEnumValue
class PointInTimeRecoveryStatusEnumValue {
  /// Property value
  final pulumi.Input<String>? value;

  /// Creates a new [PointInTimeRecoveryStatusEnumValue].
  /// [value] Property value
  PointInTimeRecoveryStatusEnumValue({
    this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'value': ?value,
    };
  }

  factory PointInTimeRecoveryStatusEnumValue.fromMap(Map<String, dynamic> map) {
    return PointInTimeRecoveryStatusEnumValue(
      value: map['value'] == null ? null : (map['value']! as String).input(),
    );
  }
}

