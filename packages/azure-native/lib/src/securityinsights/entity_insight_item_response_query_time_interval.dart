// ignore_for_file: unused_element, unnecessary_cast


/// The Time interval that the query actually executed on.
class EntityInsightItemResponseQueryTimeInterval {
  /// Insight query end time
  final String? endTime;
  /// Insight query start time
  final String? startTime;

  /// Creates a new [EntityInsightItemResponseQueryTimeInterval].
  /// [endTime] Insight query end time
  /// [startTime] Insight query start time
  EntityInsightItemResponseQueryTimeInterval({
    this.endTime,
    this.startTime,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'endTime': ?endTime,
      'startTime': ?startTime,
    };
  }

  factory EntityInsightItemResponseQueryTimeInterval.fromMap(Map<String, dynamic> map) {
    return EntityInsightItemResponseQueryTimeInterval(
      endTime: map['endTime'] == null ? null : map['endTime'] as String,
      startTime: map['startTime'] == null ? null : map['startTime'] as String,
    );
  }
}

