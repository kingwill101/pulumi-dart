// ignore_for_file: unused_element, unnecessary_cast

class GetTagsTimePeriod {
  /// Beginning of the time period.
  final String end;

  /// End of the time period.
  final String start;

  GetTagsTimePeriod({
    required this.end,
    required this.start,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['end'] = end;
    map['start'] = start;
    return map;
  }

  factory GetTagsTimePeriod.fromMap(Map<String, dynamic> map) {
    return GetTagsTimePeriod(
      end: map['end'] as String,
      start: map['start'] as String,
    );
  }
}
