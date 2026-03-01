// ignore_for_file: unused_element, unnecessary_cast


/// CDC policy recurrence details.
class MapperPolicyRecurrence {
  /// Frequency of period in terms of 'Hour', 'Minute' or 'Second'.
  final String? frequency;
  /// Actual interval value as per chosen frequency.
  final int? interval;

  /// Creates a new [MapperPolicyRecurrence].
  /// [frequency] Frequency of period in terms of 'Hour', 'Minute' or 'Second'.
  /// [interval] Actual interval value as per chosen frequency.
  MapperPolicyRecurrence({
    this.frequency,
    this.interval,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'frequency': ?frequency,
      'interval': ?interval,
    };
  }

  factory MapperPolicyRecurrence.fromMap(Map<String, dynamic> map) {
    return MapperPolicyRecurrence(
      frequency: map['frequency'] == null ? null : map['frequency'] as String,
      interval: map['interval'] == null ? null : map['interval'] as int,
    );
  }
}

