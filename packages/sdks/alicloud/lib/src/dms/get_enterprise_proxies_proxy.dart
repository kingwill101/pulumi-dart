// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetEnterpriseProxiesProxy {
  /// The ID of the user who enabled the secure access proxy feature.
  final pulumi.Input<String> creatorId;
  /// The nickname of the user who enabled the secure access proxy feature.
  final pulumi.Input<String> creatorName;
  /// The port that was used by HTTPS clients to connect to the database instance.
  final pulumi.Input<int> httpsPort;
  /// The ID of the Proxy.
  final pulumi.Input<String> id;
  /// The ID of the database instance.
  final pulumi.Input<String> instanceId;
  /// Indicates whether the internal endpoint is enabled. Default value: true.
  final pulumi.Input<bool> privateEnable;
  /// The internal endpoint.
  final pulumi.Input<String> privateHost;
  /// Database protocol connection port number.
  final pulumi.Input<int> protocolPort;
  /// Database protocol type, for example, MYSQL.
  final pulumi.Input<String> protocolType;
  /// The ID of the secure access proxy.
  final pulumi.Input<String> proxyId;
  /// Indicates whether the public endpoint is enabled.
  final pulumi.Input<bool> publicEnable;
  /// The public endpoint. A public endpoint is returned no matter whether the public endpoint is enabled or disabled. **Note:** When the public network address is in the **true** state, the returned public network address is a valid address with DNS resolution capability. When the public address is in the **false** state, the returned Public address is an invalid address without DNS resolution.
  final pulumi.Input<String> publicHost;

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
      creatorId: (map['creatorId'] as String).input(),
      creatorName: (map['creatorName'] as String).input(),
      httpsPort: (map['httpsPort'] as int).input(),
      id: (map['id'] as String).input(),
      instanceId: (map['instanceId'] as String).input(),
      privateEnable: (map['privateEnable'] as bool).input(),
      privateHost: (map['privateHost'] as String).input(),
      protocolPort: (map['protocolPort'] as int).input(),
      protocolType: (map['protocolType'] as String).input(),
      proxyId: (map['proxyId'] as String).input(),
      publicEnable: (map['publicEnable'] as bool).input(),
      publicHost: (map['publicHost'] as String).input(),
    );
  }
}

