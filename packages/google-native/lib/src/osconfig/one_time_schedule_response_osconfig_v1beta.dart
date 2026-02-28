// ignore_for_file: unused_element, unnecessary_cast

/// Sets the time for a one time patch deployment. Timestamp is in [RFC3339](https://www.ietf.org/rfc/rfc3339.txt) text format.
class OneTimeScheduleResponseOsconfigV1beta {
  /// The desired patch job execution time.
  final String executeTime;

  /// Creates a new [OneTimeScheduleResponseOsconfigV1beta].
  /// [executeTime] The desired patch job execution time.
  OneTimeScheduleResponseOsconfigV1beta({
    required this.executeTime,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['executeTime'] = executeTime;
    return map;
  }

  factory OneTimeScheduleResponseOsconfigV1beta.fromMap(
      Map<String, dynamic> map) {
    return OneTimeScheduleResponseOsconfigV1beta(
      executeTime: map['executeTime'] as String,
    );
  }
}
