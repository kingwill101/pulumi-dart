// ignore_for_file: unused_element, unnecessary_cast

class AiFeatureOnlineStoreDedicatedServingEndpointPrivateServiceConnectConfig {
  /// If set to true, customers will use private service connection to send request. Otherwise, the connection will set to public endpoint.
  final bool enablePrivateServiceConnect;

  /// A list of Projects from which the forwarding rule will target the service attachment.
  final List<String>? projectAllowlists;

  /// Creates a new [AiFeatureOnlineStoreDedicatedServingEndpointPrivateServiceConnectConfig].
  /// [enablePrivateServiceConnect] If set to true, customers will use private service connection to send request. Otherwise, the connection will set to public endpoint.
  /// [projectAllowlists] A list of Projects from which the forwarding rule will target the service attachment.
  AiFeatureOnlineStoreDedicatedServingEndpointPrivateServiceConnectConfig({
    required this.enablePrivateServiceConnect,
    this.projectAllowlists,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enablePrivateServiceConnect': enablePrivateServiceConnect,
      'projectAllowlists': ?projectAllowlists,
    };
  }

  factory AiFeatureOnlineStoreDedicatedServingEndpointPrivateServiceConnectConfig.fromMap(
    Map<String, dynamic> map,
  ) {
    return AiFeatureOnlineStoreDedicatedServingEndpointPrivateServiceConnectConfig(
      enablePrivateServiceConnect: map['enablePrivateServiceConnect'] as bool,
      projectAllowlists: map['projectAllowlists'] == null
          ? null
          : (map['projectAllowlists'] as List).cast<String>(),
    );
  }
}
