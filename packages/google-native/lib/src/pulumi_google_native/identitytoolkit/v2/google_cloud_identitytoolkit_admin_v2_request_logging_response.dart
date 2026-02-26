// ignore_for_file: unused_element, unnecessary_cast

/// Configuration for logging requests made to this project to Stackdriver Logging
class GoogleCloudIdentitytoolkitAdminV2RequestLoggingResponse {
  /// Whether logging is enabled for this project or not.
  final bool enabled;

  GoogleCloudIdentitytoolkitAdminV2RequestLoggingResponse({
    required this.enabled,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['enabled'] = enabled;
    return map;
  }

  factory GoogleCloudIdentitytoolkitAdminV2RequestLoggingResponse.fromMap(
      Map<String, dynamic> map) {
    return GoogleCloudIdentitytoolkitAdminV2RequestLoggingResponse(
      enabled: map['enabled'] as bool,
    );
  }
}
