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
    final map = <String, dynamic>{};
    final endInclusiveValue = endInclusive;
    if (endInclusiveValue != null) {
      map['endInclusive'] = endInclusiveValue;
    }
    final startInclusiveValue = startInclusive;
    if (startInclusiveValue != null) {
      map['startInclusive'] = startInclusiveValue;
    }
    return map;
  }

  factory FilterFilterCriteriaEcrImageLastInUseAt.fromMap(
      Map<String, dynamic> map) {
    return FilterFilterCriteriaEcrImageLastInUseAt(
      endInclusive:
          map['endInclusive'] == null ? null : map['endInclusive'] as String,
      startInclusive: map['startInclusive'] == null
          ? null
          : map['startInclusive'] as String,
    );
  }
}
