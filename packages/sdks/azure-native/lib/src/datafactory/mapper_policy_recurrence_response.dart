// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// CDC policy recurrence details.
class MapperPolicyRecurrenceResponse {
  /// Frequency of period in terms of 'Hour', 'Minute' or 'Second'.
  final pulumi.Input<String>? frequency;
  /// Actual interval value as per chosen frequency.
  final pulumi.Input<int>? interval;

  /// Creates a new [MapperPolicyRecurrenceResponse].
  /// [frequency] Frequency of period in terms of 'Hour', 'Minute' or 'Second'.
  /// [interval] Actual interval value as per chosen frequency.
  MapperPolicyRecurrenceResponse({
    this.frequency,
    this.interval,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'frequency': ?frequency,
      'interval': ?interval,
    };
  }

  factory MapperPolicyRecurrenceResponse.fromMap(Map<String, dynamic> map) {
    return MapperPolicyRecurrenceResponse(
      frequency: map['frequency'] == null ? null : (map['frequency']! as String).input(),
      interval: map['interval'] == null ? null : (map['interval']! as int).input(),
    );
  }
}

