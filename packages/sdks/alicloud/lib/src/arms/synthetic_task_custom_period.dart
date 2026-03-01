// ignore_for_file: unused_element, unnecessary_cast


class SyntheticTaskCustomPeriod {
  /// End hours, 0-24.
  final int? endHour;
  /// Starting hours, 0-24.
  final int? startHour;

  /// Creates a new [SyntheticTaskCustomPeriod].
  /// [endHour] End hours, 0-24.
  /// [startHour] Starting hours, 0-24.
  SyntheticTaskCustomPeriod({
    this.endHour,
    this.startHour,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'endHour': ?endHour,
      'startHour': ?startHour,
    };
  }

  factory SyntheticTaskCustomPeriod.fromMap(Map<String, dynamic> map) {
    return SyntheticTaskCustomPeriod(
      endHour: map['endHour'] == null ? null : map['endHour'] as int,
      startHour: map['startHour'] == null ? null : map['startHour'] as int,
    );
  }
}

