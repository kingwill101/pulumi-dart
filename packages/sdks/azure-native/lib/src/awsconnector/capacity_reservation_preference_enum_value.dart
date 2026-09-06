// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Definition of CapacityReservationPreferenceEnumValue
class CapacityReservationPreferenceEnumValue {
  /// Property value
  final pulumi.Input<dynamic>? value;

  /// Creates a new [CapacityReservationPreferenceEnumValue].
  /// [value] Property value
  const CapacityReservationPreferenceEnumValue({
    this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'value': ?value,
    };
  }

  factory CapacityReservationPreferenceEnumValue.fromMap(Map<String, dynamic> map) {
    return CapacityReservationPreferenceEnumValue(
      value: (() { final guardedValue = map['value']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
    );
  }
}
