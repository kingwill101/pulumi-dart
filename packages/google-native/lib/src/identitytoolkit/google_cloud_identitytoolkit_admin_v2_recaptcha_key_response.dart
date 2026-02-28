// ignore_for_file: unused_element, unnecessary_cast

/// The reCAPTCHA key config. reCAPTCHA Enterprise offers different keys for different client platforms.
class GoogleCloudIdentitytoolkitAdminV2RecaptchaKeyResponse {
  /// The reCAPTCHA Enterprise key resource name, e.g. "projects/{project}/keys/{key}"
  final String key;

  /// The client's platform type.
  final String type;

  /// Creates a new [GoogleCloudIdentitytoolkitAdminV2RecaptchaKeyResponse].
  /// [key] The reCAPTCHA Enterprise key resource name, e.g. "projects/{project}/keys/{key}"
  /// [type] The client's platform type.
  GoogleCloudIdentitytoolkitAdminV2RecaptchaKeyResponse({
    required this.key,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['key'] = key;
    map['type'] = type;
    return map;
  }

  factory GoogleCloudIdentitytoolkitAdminV2RecaptchaKeyResponse.fromMap(
      Map<String, dynamic> map) {
    return GoogleCloudIdentitytoolkitAdminV2RecaptchaKeyResponse(
      key: map['key'] as String,
      type: map['type'] as String,
    );
  }
}
