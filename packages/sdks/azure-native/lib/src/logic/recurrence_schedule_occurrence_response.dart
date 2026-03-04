// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The recurrence schedule occurrence.
class RecurrenceScheduleOccurrenceResponse {
  /// The day of the week.
  final pulumi.Input<String>? day;

  /// The occurrence.
  final pulumi.Input<int>? occurrence;

  /// Creates a new [RecurrenceScheduleOccurrenceResponse].
  /// [day] The day of the week.
  /// [occurrence] The occurrence.
  RecurrenceScheduleOccurrenceResponse({this.day, this.occurrence});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'day': ?day, 'occurrence': ?occurrence};
  }

  factory RecurrenceScheduleOccurrenceResponse.fromMap(
    Map<String, dynamic> map,
  ) {
    return RecurrenceScheduleOccurrenceResponse(
      day: (() {
        final guardedValue = map['day'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      occurrence: (() {
        final guardedValue = map['occurrence'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
    );
  }
}
