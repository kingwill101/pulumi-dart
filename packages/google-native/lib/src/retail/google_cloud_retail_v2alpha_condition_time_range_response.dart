// ignore_for_file: unused_element, unnecessary_cast

/// Used for time-dependent conditions. Example: Want to have rule applied for week long sale.
class GoogleCloudRetailV2alphaConditionTimeRangeResponse {
  /// End of time range. Range is inclusive.
  final String endTime;

  /// Start of time range. Range is inclusive.
  final String startTime;

  /// Creates a new [GoogleCloudRetailV2alphaConditionTimeRangeResponse].
  /// [endTime] End of time range. Range is inclusive.
  /// [startTime] Start of time range. Range is inclusive.
  GoogleCloudRetailV2alphaConditionTimeRangeResponse({
    required this.endTime,
    required this.startTime,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['endTime'] = endTime;
    map['startTime'] = startTime;
    return map;
  }

  factory GoogleCloudRetailV2alphaConditionTimeRangeResponse.fromMap(
      Map<String, dynamic> map) {
    return GoogleCloudRetailV2alphaConditionTimeRangeResponse(
      endTime: map['endTime'] as String,
      startTime: map['startTime'] as String,
    );
  }
}
