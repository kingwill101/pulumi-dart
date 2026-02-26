// ignore_for_file: unused_element, unnecessary_cast

class AiFeatureOnlineStoreDedicatedServingEndpointPrivateServiceConnectConfig {
  /// If set to true, customers will use private service connection to send request. Otherwise, the connection will set to public endpoint.
  final bool enablePrivateServiceConnect;

  /// A list of Projects from which the forwarding rule will target the service attachment.
  final List<String>? projectAllowlists;

  AiFeatureOnlineStoreDedicatedServingEndpointPrivateServiceConnectConfig({
    required this.enablePrivateServiceConnect,
    this.projectAllowlists,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['enablePrivateServiceConnect'] = enablePrivateServiceConnect;
    final projectAllowlistsValue = projectAllowlists;
    if (projectAllowlistsValue != null) {
      map['projectAllowlists'] = projectAllowlistsValue;
    }
    return map;
  }

  factory AiFeatureOnlineStoreDedicatedServingEndpointPrivateServiceConnectConfig.fromMap(
      Map<String, dynamic> map) {
    return AiFeatureOnlineStoreDedicatedServingEndpointPrivateServiceConnectConfig(
      enablePrivateServiceConnect: map['enablePrivateServiceConnect'] as bool,
      projectAllowlists: map['projectAllowlists'] == null
          ? null
          : (map['projectAllowlists'] as List).cast<String>(),
    );
  }
}
