// ignore_for_file: unused_element, unnecessary_cast

/// Configuration for the Integration add-on.
class GoogleCloudApigeeV1IntegrationConfigResponse {
  /// Flag that specifies whether the Integration add-on is enabled.
  final bool enabled;

  GoogleCloudApigeeV1IntegrationConfigResponse({
    required this.enabled,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['enabled'] = enabled;
    return map;
  }

  factory GoogleCloudApigeeV1IntegrationConfigResponse.fromMap(
      Map<String, dynamic> map) {
    return GoogleCloudApigeeV1IntegrationConfigResponse(
      enabled: map['enabled'] as bool,
    );
  }
}
