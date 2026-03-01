// ignore_for_file: unused_element, unnecessary_cast


class SparkPoolAutoPause {
  /// Number of minutes of idle time before the Spark Pool is automatically paused. Must be between `5` and `10080`.
  final int delayInMinutes;

  /// Creates a new [SparkPoolAutoPause].
  /// [delayInMinutes] Number of minutes of idle time before the Spark Pool is automatically paused. Must be between `5` and `10080`.
  SparkPoolAutoPause({
    required this.delayInMinutes,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'delayInMinutes': delayInMinutes,
    };
  }

  factory SparkPoolAutoPause.fromMap(Map<String, dynamic> map) {
    return SparkPoolAutoPause(
      delayInMinutes: map['delayInMinutes'] as int,
    );
  }
}

