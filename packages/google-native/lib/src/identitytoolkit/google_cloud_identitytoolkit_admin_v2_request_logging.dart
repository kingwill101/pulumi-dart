// ignore_for_file: unused_element, unnecessary_cast

/// Configuration for logging requests made to this project to Stackdriver Logging
class GoogleCloudIdentitytoolkitAdminV2RequestLogging {
  /// Whether logging is enabled for this project or not.
  final bool? enabled;

  /// Creates a new [GoogleCloudIdentitytoolkitAdminV2RequestLogging].
  /// [enabled] Whether logging is enabled for this project or not.
  GoogleCloudIdentitytoolkitAdminV2RequestLogging({
    this.enabled,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final enabledValue = enabled;
    if (enabledValue != null) {
      map['enabled'] = enabledValue;
    }
    return map;
  }

  factory GoogleCloudIdentitytoolkitAdminV2RequestLogging.fromMap(
      Map<String, dynamic> map) {
    return GoogleCloudIdentitytoolkitAdminV2RequestLogging(
      enabled: map['enabled'] == null ? null : map['enabled'] as bool,
    );
  }
}
