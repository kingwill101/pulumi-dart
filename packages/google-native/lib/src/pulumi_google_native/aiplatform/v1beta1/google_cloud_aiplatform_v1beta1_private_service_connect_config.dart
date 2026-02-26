// ignore_for_file: unused_element, unnecessary_cast

/// Represents configuration for private service connect.
class GoogleCloudAiplatformV1beta1PrivateServiceConnectConfig {
  /// If true, expose the IndexEndpoint via private service connect.
  final bool enablePrivateServiceConnect;

  /// A list of Projects from which the forwarding rule will target the service attachment.
  final List<String>? projectAllowlist;

  GoogleCloudAiplatformV1beta1PrivateServiceConnectConfig({
    required this.enablePrivateServiceConnect,
    this.projectAllowlist,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['enablePrivateServiceConnect'] = enablePrivateServiceConnect;
    final projectAllowlistValue = projectAllowlist;
    if (projectAllowlistValue != null) {
      map['projectAllowlist'] = projectAllowlistValue;
    }
    return map;
  }

  factory GoogleCloudAiplatformV1beta1PrivateServiceConnectConfig.fromMap(
      Map<String, dynamic> map) {
    return GoogleCloudAiplatformV1beta1PrivateServiceConnectConfig(
      enablePrivateServiceConnect: map['enablePrivateServiceConnect'] as bool,
      projectAllowlist: map['projectAllowlist'] == null
          ? null
          : (map['projectAllowlist'] as List).cast<String>(),
    );
  }
}
