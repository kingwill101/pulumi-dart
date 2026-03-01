// ignore_for_file: unused_element, unnecessary_cast

/// Represents configuration for private service connect.
class GoogleCloudAiplatformV1PrivateServiceConnectConfigResponse {
  /// If true, expose the IndexEndpoint via private service connect.
  final bool enablePrivateServiceConnect;

  /// A list of Projects from which the forwarding rule will target the service attachment.
  final List<String> projectAllowlist;

  /// Creates a new [GoogleCloudAiplatformV1PrivateServiceConnectConfigResponse].
  /// [enablePrivateServiceConnect] If true, expose the IndexEndpoint via private service connect.
  /// [projectAllowlist] A list of Projects from which the forwarding rule will target the service attachment.
  GoogleCloudAiplatformV1PrivateServiceConnectConfigResponse({
    required this.enablePrivateServiceConnect,
    required this.projectAllowlist,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enablePrivateServiceConnect': enablePrivateServiceConnect,
      'projectAllowlist': projectAllowlist,
    };
  }

  factory GoogleCloudAiplatformV1PrivateServiceConnectConfigResponse.fromMap(
    Map<String, dynamic> map,
  ) {
    return GoogleCloudAiplatformV1PrivateServiceConnectConfigResponse(
      enablePrivateServiceConnect: map['enablePrivateServiceConnect'] as bool,
      projectAllowlist: (map['projectAllowlist'] as List).cast<String>(),
    );
  }
}
