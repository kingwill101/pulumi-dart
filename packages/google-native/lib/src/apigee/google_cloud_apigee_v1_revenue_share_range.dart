// ignore_for_file: unused_element, unnecessary_cast

/// API call volume range and the percentage of revenue to share with the developer when the total number of API calls is within the range.
class GoogleCloudApigeeV1RevenueShareRange {
  /// Ending value of the range. Set to 0 or `null` for the last range of values.
  final String? end;

  /// Percentage of the revenue to be shared with the developer. For example, to share 21 percent of the total revenue with the developer, set this value to 21. Specify a decimal number with a maximum of two digits following the decimal point.
  final double? sharePercentage;

  /// Starting value of the range. Set to 0 or `null` for the initial range of values.
  final String? start;

  /// Creates a new [GoogleCloudApigeeV1RevenueShareRange].
  /// [end] Ending value of the range. Set to 0 or `null` for the last range of values.
  /// [sharePercentage] Percentage of the revenue to be shared with the developer. For example, to share 21 percent of the total revenue with the developer, set this value to 21. Specify a decimal number with a maximum of two digits following the decimal point.
  /// [start] Starting value of the range. Set to 0 or `null` for the initial range of values.
  GoogleCloudApigeeV1RevenueShareRange({
    this.end,
    this.sharePercentage,
    this.start,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final endValue = end;
    if (endValue != null) {
      map['end'] = endValue;
    }
    final sharePercentageValue = sharePercentage;
    if (sharePercentageValue != null) {
      map['sharePercentage'] = sharePercentageValue;
    }
    final startValue = start;
    if (startValue != null) {
      map['start'] = startValue;
    }
    return map;
  }

  factory GoogleCloudApigeeV1RevenueShareRange.fromMap(
      Map<String, dynamic> map) {
    return GoogleCloudApigeeV1RevenueShareRange(
      end: map['end'] == null ? null : map['end'] as String,
      sharePercentage: map['sharePercentage'] == null
          ? null
          : map['sharePercentage'] as double,
      start: map['start'] == null ? null : map['start'] as String,
    );
  }
}
