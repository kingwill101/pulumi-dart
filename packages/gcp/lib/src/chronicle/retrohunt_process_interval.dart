// ignore_for_file: unused_element, unnecessary_cast


class RetrohuntProcessInterval {
  /// Exclusive end of the interval.
  final String endTime;
  /// Inclusive start of the interval.
  final String startTime;

  /// Creates a new [RetrohuntProcessInterval].
  /// [endTime] Exclusive end of the interval.
  /// [startTime] Inclusive start of the interval.
  RetrohuntProcessInterval({
    required this.endTime,
    required this.startTime,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'endTime': endTime,
      'startTime': startTime,
    };
  }

  factory RetrohuntProcessInterval.fromMap(Map<String, dynamic> map) {
    return RetrohuntProcessInterval(
      endTime: map['endTime'] as String,
      startTime: map['startTime'] as String,
    );
  }
}

