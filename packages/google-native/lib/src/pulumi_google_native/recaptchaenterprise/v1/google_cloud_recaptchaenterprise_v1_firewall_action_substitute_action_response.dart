// ignore_for_file: unused_element, unnecessary_cast

/// A substitute action transparently serves a different page than the one requested.
class GoogleCloudRecaptchaenterpriseV1FirewallActionSubstituteActionResponse {
  /// Optional. The address to redirect to. The target is a relative path in the current host. Example: "/blog/404.html".
  final String path;

  GoogleCloudRecaptchaenterpriseV1FirewallActionSubstituteActionResponse({
    required this.path,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['path'] = path;
    return map;
  }

  factory GoogleCloudRecaptchaenterpriseV1FirewallActionSubstituteActionResponse.fromMap(
      Map<String, dynamic> map) {
    return GoogleCloudRecaptchaenterpriseV1FirewallActionSubstituteActionResponse(
      path: map['path'] as String,
    );
  }
}
