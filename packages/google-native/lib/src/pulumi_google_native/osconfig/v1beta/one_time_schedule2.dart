// ignore_for_file: unused_element, unnecessary_cast

/// Sets the time for a one time patch deployment. Timestamp is in [RFC3339](https://www.ietf.org/rfc/rfc3339.txt) text format.
class OneTimeSchedule2 {
  /// The desired patch job execution time.
  final String executeTime;

  OneTimeSchedule2({
    required this.executeTime,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['executeTime'] = executeTime;
    return map;
  }

  factory OneTimeSchedule2.fromMap(Map<String, dynamic> map) {
    return OneTimeSchedule2(
      executeTime: map['executeTime'] as String,
    );
  }
}
