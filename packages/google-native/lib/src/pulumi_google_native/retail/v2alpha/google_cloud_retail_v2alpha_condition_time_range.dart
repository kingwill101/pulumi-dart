// ignore_for_file: unused_element, unnecessary_cast

/// Used for time-dependent conditions. Example: Want to have rule applied for week long sale.
class GoogleCloudRetailV2alphaConditionTimeRange {
  /// End of time range. Range is inclusive.
  final String? endTime;

  /// Start of time range. Range is inclusive.
  final String? startTime;

  GoogleCloudRetailV2alphaConditionTimeRange({
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

  factory GoogleCloudRetailV2alphaConditionTimeRange.fromMap(
      Map<String, dynamic> map) {
    return GoogleCloudRetailV2alphaConditionTimeRange(
      endTime: map['endTime'] == null ? null : map['endTime'] as String,
      startTime: map['startTime'] == null ? null : map['startTime'] as String,
    );
  }
}
