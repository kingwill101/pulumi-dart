// ignore_for_file: unused_element, unnecessary_cast

class GetTagsTimePeriod {
  /// Beginning of the time period.
  final String end;

  /// End of the time period.
  final String start;

  /// Creates a new [GetTagsTimePeriod].
  /// [end] Beginning of the time period.
  /// [start] End of the time period.
  GetTagsTimePeriod({required this.end, required this.start});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'end': end, 'start': start};
  }

  factory GetTagsTimePeriod.fromMap(Map<String, dynamic> map) {
    return GetTagsTimePeriod(
      end: map['end'] as String,
      start: map['start'] as String,
    );
  }
}
