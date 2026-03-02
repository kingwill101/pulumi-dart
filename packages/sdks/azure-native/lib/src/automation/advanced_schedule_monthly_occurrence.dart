// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The properties of the create advanced schedule monthly occurrence.
class AdvancedScheduleMonthlyOccurrence {
  /// Day of the occurrence. Must be one of monday, tuesday, wednesday, thursday, friday, saturday, sunday.
  final pulumi.Input<String>? day;
  /// Occurrence of the week within the month. Must be between 1 and 5
  final pulumi.Input<int>? occurrence;

  /// Creates a new [AdvancedScheduleMonthlyOccurrence].
  /// [day] Day of the occurrence. Must be one of monday, tuesday, wednesday, thursday, friday, saturday, sunday.
  /// [occurrence] Occurrence of the week within the month. Must be between 1 and 5
  AdvancedScheduleMonthlyOccurrence({
    this.day,
    this.occurrence,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'day': ?day,
      'occurrence': ?occurrence,
    };
  }

  factory AdvancedScheduleMonthlyOccurrence.fromMap(Map<String, dynamic> map) {
    return AdvancedScheduleMonthlyOccurrence(
      day: map['day'] == null ? null : (map['day']! as String).input(),
      occurrence: map['occurrence'] == null ? null : (map['occurrence']! as int).input(),
    );
  }
}

