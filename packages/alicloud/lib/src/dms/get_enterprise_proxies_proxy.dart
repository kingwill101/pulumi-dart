// ignore_for_file: unused_element, unnecessary_cast


class GetEnterpriseProxiesProxy {
  /// The ID of the user who enabled the secure access proxy feature.
  final String creatorId;
  /// The nickname of the user who enabled the secure access proxy feature.
  final String creatorName;
  /// The port that was used by HTTPS clients to connect to the database instance.
  final int httpsPort;
  /// The ID of the Proxy.
  final String id;
  /// The ID of the database instance.
  final String instanceId;
  /// Indicates whether the internal endpoint is enabled. Default value: true.
  final bool privateEnable;
  /// The internal endpoint.
  final String privateHost;
  /// Database protocol connection port number.
  final int protocolPort;
  /// Database protocol type, for example, MYSQL.
  final String protocolType;
  /// The ID of the secure access proxy.
  final String proxyId;
  /// Indicates whether the public endpoint is enabled.
  final bool publicEnable;
  /// The public endpoint. A public endpoint is returned no matter whether the public endpoint is enabled or disabled. **Note:** When the public network address is in the **true** state, the returned public network address is a valid address with DNS resolution capability. When the public address is in the **false** state, the returned Public address is an invalid address without DNS resolution.
  final String publicHost;

  /// Creates a new [GetEnterpriseProxiesProxy].
  /// [creatorId] The ID of the user who enabled the secure access proxy feature.
  /// [creatorName] The nickname of the user who enabled the secure access proxy feature.
  /// [httpsPort] The port that was used by HTTPS clients to connect to the database instance.
  /// [id] The ID of the Proxy.
  /// [instanceId] The ID of the database instance.
  /// [privateEnable] Indicates whether the internal endpoint is enabled. Default value: true.
  /// [privateHost] The internal endpoint.
  /// [protocolPort] Database protocol connection port number.
  /// [protocolType] Database protocol type, for example, MYSQL.
  /// [proxyId] The ID of the secure access proxy.
  /// [publicEnable] Indicates whether the public endpoint is enabled.
  /// [publicHost] The public endpoint. A public endpoint is returned no matter whether the public endpoint is enabled or disabled. **Note:** When the public network address is in the **true** state, the returned public network address is a valid address with DNS resolution capability. When the public address is in the **false** state, the returned Public address is an invalid address without DNS resolution.
  GetEnterpriseProxiesProxy({
    required this.creatorId,
    required this.creatorName,
    required this.httpsPort,
    required this.id,
    required this.instanceId,
    required this.privateEnable,
    required this.privateHost,
    required this.protocolPort,
    required this.protocolType,
    required this.proxyId,
    required this.publicEnable,
    required this.publicHost,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'creatorId': creatorId,
      'creatorName': creatorName,
      'httpsPort': httpsPort,
      'id': id,
      'instanceId': instanceId,
      'privateEnable': privateEnable,
      'privateHost': privateHost,
      'protocolPort': protocolPort,
      'protocolType': protocolType,
      'proxyId': proxyId,
      'publicEnable': publicEnable,
      'publicHost': publicHost,
    };
  }

  factory GetEnterpriseProxiesProxy.fromMap(Map<String, dynamic> map) {
    return GetEnterpriseProxiesProxy(
      creatorId: map['creatorId'] as String,
      creatorName: map['creatorName'] as String,
      httpsPort: map['httpsPort'] as int,
      id: map['id'] as String,
      instanceId: map['instanceId'] as String,
      privateEnable: map['privateEnable'] as bool,
      privateHost: map['privateHost'] as String,
      protocolPort: map['protocolPort'] as int,
      protocolType: map['protocolType'] as String,
      proxyId: map['proxyId'] as String,
      publicEnable: map['publicEnable'] as bool,
      publicHost: map['publicHost'] as String,
    );
  }
}

