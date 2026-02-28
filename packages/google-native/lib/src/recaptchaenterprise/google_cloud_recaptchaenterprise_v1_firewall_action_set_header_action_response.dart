// ignore_for_file: unused_element, unnecessary_cast

/// A set header action sets a header and forwards the request to the backend. This can be used to trigger custom protection implemented on the backend.
class GoogleCloudRecaptchaenterpriseV1FirewallActionSetHeaderActionResponse {
  /// Optional. The header key to set in the request to the backend server.
  final String key;

  /// Optional. The header value to set in the request to the backend server.
  final String value;

  /// Creates a new [GoogleCloudRecaptchaenterpriseV1FirewallActionSetHeaderActionResponse].
  /// [key] Optional. The header key to set in the request to the backend server.
  /// [value] Optional. The header value to set in the request to the backend server.
  GoogleCloudRecaptchaenterpriseV1FirewallActionSetHeaderActionResponse({
    required this.key,
    required this.value,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['key'] = key;
    map['value'] = value;
    return map;
  }

  factory GoogleCloudRecaptchaenterpriseV1FirewallActionSetHeaderActionResponse.fromMap(
      Map<String, dynamic> map) {
    return GoogleCloudRecaptchaenterpriseV1FirewallActionSetHeaderActionResponse(
      key: map['key'] as String,
      value: map['value'] as String,
    );
  }
}
