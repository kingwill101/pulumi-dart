// ignore_for_file: unused_element, unnecessary_cast


class FilterFilterCriteriaEcrImageLastInUseAt {
  /// (Required) The end of the port range, inclusive.
  final String? endInclusive;
  /// (Optional) Start of the date range in RFC 3339 format, inclusive. Set the timezone to UTC.
  final String? startInclusive;

  /// Creates a new [FilterFilterCriteriaEcrImageLastInUseAt].
  /// [endInclusive] (Required) The end of the port range, inclusive.
  /// [startInclusive] (Optional) Start of the date range in RFC 3339 format, inclusive. Set the timezone to UTC.
  FilterFilterCriteriaEcrImageLastInUseAt({
    this.endInclusive,
    this.startInclusive,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'endInclusive': ?endInclusive,
      'startInclusive': ?startInclusive,
    };
  }

  factory FilterFilterCriteriaEcrImageLastInUseAt.fromMap(Map<String, dynamic> map) {
    return FilterFilterCriteriaEcrImageLastInUseAt(
      endInclusive: map['endInclusive'] == null ? null : map['endInclusive'] as String,
      startInclusive: map['startInclusive'] == null ? null : map['startInclusive'] as String,
    );
  }
}

