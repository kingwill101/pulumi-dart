// ignore_for_file: unused_element, unnecessary_cast

/// Configuration for the Analytics add-on.
class GoogleCloudApigeeV1AnalyticsConfigResponse {
  /// Whether the Analytics add-on is enabled.
  final bool enabled;

  /// Time at which the Analytics add-on expires in milliseconds since epoch. If unspecified, the add-on will never expire.
  final String expireTimeMillis;

  /// The state of the Analytics add-on.
  final String state;

  /// The latest update time.
  final String updateTime;

  /// Creates a new [GoogleCloudApigeeV1AnalyticsConfigResponse].
  /// [enabled] Whether the Analytics add-on is enabled.
  /// [expireTimeMillis] Time at which the Analytics add-on expires in milliseconds since epoch. If unspecified, the add-on will never expire.
  /// [state] The state of the Analytics add-on.
  /// [updateTime] The latest update time.
  GoogleCloudApigeeV1AnalyticsConfigResponse({
    required this.enabled,
    required this.expireTimeMillis,
    required this.state,
    required this.updateTime,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['enabled'] = enabled;
    map['expireTimeMillis'] = expireTimeMillis;
    map['state'] = state;
    map['updateTime'] = updateTime;
    return map;
  }

  factory GoogleCloudApigeeV1AnalyticsConfigResponse.fromMap(
      Map<String, dynamic> map) {
    return GoogleCloudApigeeV1AnalyticsConfigResponse(
      enabled: map['enabled'] as bool,
      expireTimeMillis: map['expireTimeMillis'] as String,
      state: map['state'] as String,
      updateTime: map['updateTime'] as String,
    );
  }
}
