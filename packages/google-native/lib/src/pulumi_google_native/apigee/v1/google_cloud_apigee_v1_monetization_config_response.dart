// ignore_for_file: unused_element, unnecessary_cast

/// Configuration for the Monetization add-on.
class GoogleCloudApigeeV1MonetizationConfigResponse {
  /// Flag that specifies whether the Monetization add-on is enabled.
  final bool enabled;

  GoogleCloudApigeeV1MonetizationConfigResponse({
    required this.enabled,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['enabled'] = enabled;
    return map;
  }

  factory GoogleCloudApigeeV1MonetizationConfigResponse.fromMap(
      Map<String, dynamic> map) {
    return GoogleCloudApigeeV1MonetizationConfigResponse(
      enabled: map['enabled'] as bool,
    );
  }
}
