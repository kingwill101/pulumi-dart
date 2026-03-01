// ignore_for_file: unused_element, unnecessary_cast


/// Properties of an hourly schedule.
class HourDetails {
  /// Minutes of the hour the schedule will run.
  final int? minute;

  /// Creates a new [HourDetails].
  /// [minute] Minutes of the hour the schedule will run.
  HourDetails({
    this.minute,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'minute': ?minute,
    };
  }

  factory HourDetails.fromMap(Map<String, dynamic> map) {
    return HourDetails(
      minute: map['minute'] == null ? null : map['minute'] as int,
    );
  }
}

