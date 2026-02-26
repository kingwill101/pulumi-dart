// ignore_for_file: unused_element, unnecessary_cast

/// Sets the time for a one time patch deployment. Timestamp is in [RFC3339](https://www.ietf.org/rfc/rfc3339.txt) text format.
class OneTimeSchedule {
  /// The desired patch job execution time.
  final String executeTime;

  OneTimeSchedule({
    required this.executeTime,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['executeTime'] = executeTime;
    return map;
  }

  factory OneTimeSchedule.fromMap(Map<String, dynamic> map) {
    return OneTimeSchedule(
      executeTime: map['executeTime'] as String,
    );
  }
}
