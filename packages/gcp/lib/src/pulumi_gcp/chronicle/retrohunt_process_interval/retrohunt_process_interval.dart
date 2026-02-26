// ignore_for_file: unused_element, unnecessary_cast

class RetrohuntProcessInterval {
  /// Exclusive end of the interval.
  final String endTime;

  /// Inclusive start of the interval.
  final String startTime;

  RetrohuntProcessInterval({
    required this.endTime,
    required this.startTime,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['endTime'] = endTime;
    map['startTime'] = startTime;
    return map;
  }

  factory RetrohuntProcessInterval.fromMap(Map<String, dynamic> map) {
    return RetrohuntProcessInterval(
      endTime: map['endTime'] as String,
      startTime: map['startTime'] as String,
    );
  }
}
