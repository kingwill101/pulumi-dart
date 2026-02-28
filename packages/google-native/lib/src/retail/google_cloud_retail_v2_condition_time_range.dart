// ignore_for_file: unused_element, unnecessary_cast

/// Used for time-dependent conditions. Example: Want to have rule applied for week long sale.
class GoogleCloudRetailV2ConditionTimeRange {
  /// End of time range. Range is inclusive.
  final String? endTime;

  /// Start of time range. Range is inclusive.
  final String? startTime;

  /// Creates a new [GoogleCloudRetailV2ConditionTimeRange].
  /// [endTime] End of time range. Range is inclusive.
  /// [startTime] Start of time range. Range is inclusive.
  GoogleCloudRetailV2ConditionTimeRange({
    this.endTime,
    this.startTime,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final endTimeValue = endTime;
    if (endTimeValue != null) {
      map['endTime'] = endTimeValue;
    }
    final startTimeValue = startTime;
    if (startTimeValue != null) {
      map['startTime'] = startTimeValue;
    }
    return map;
  }

  factory GoogleCloudRetailV2ConditionTimeRange.fromMap(
      Map<String, dynamic> map) {
    return GoogleCloudRetailV2ConditionTimeRange(
      endTime: map['endTime'] == null ? null : map['endTime'] as String,
      startTime: map['startTime'] == null ? null : map['startTime'] as String,
    );
  }
}
