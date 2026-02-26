// ignore_for_file: unused_element, unnecessary_cast

/// The set of all usage signals that Data Catalog stores. Note: Usually, these signals are updated daily. In rare cases, an update may fail but will be performed again on the next day.
class GoogleCloudDatacatalogV1UsageSignalResponse {
  /// Common usage statistics over each of the predefined time ranges. Supported time ranges are `{"24H", "7D", "30D", "Lifetime"}`.
  final Map<String, String> commonUsageWithinTimeRange;

  /// Favorite count in the source system.
  final String favoriteCount;

  /// The end timestamp of the duration of usage statistics.
  final String updateTime;

  /// BigQuery usage statistics over each of the predefined time ranges. Supported time ranges are `{"24H", "7D", "30D"}`.
  final Map<String, String> usageWithinTimeRange;

  GoogleCloudDatacatalogV1UsageSignalResponse({
    required this.commonUsageWithinTimeRange,
    required this.favoriteCount,
    required this.updateTime,
    required this.usageWithinTimeRange,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['commonUsageWithinTimeRange'] = commonUsageWithinTimeRange;
    map['favoriteCount'] = favoriteCount;
    map['updateTime'] = updateTime;
    map['usageWithinTimeRange'] = usageWithinTimeRange;
    return map;
  }

  factory GoogleCloudDatacatalogV1UsageSignalResponse.fromMap(
      Map<String, dynamic> map) {
    return GoogleCloudDatacatalogV1UsageSignalResponse(
      commonUsageWithinTimeRange:
          (map['commonUsageWithinTimeRange'] as Map).cast<String, String>(),
      favoriteCount: map['favoriteCount'] as String,
      updateTime: map['updateTime'] as String,
      usageWithinTimeRange:
          (map['usageWithinTimeRange'] as Map).cast<String, String>(),
    );
  }
}
