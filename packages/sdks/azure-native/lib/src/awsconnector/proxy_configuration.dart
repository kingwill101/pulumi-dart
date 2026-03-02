// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'key_value_pair.dart';

/// Definition of ProxyConfiguration
class ProxyConfiguration {
  /// The name of the container that will serve as the App Mesh proxy.
  final pulumi.Input<String>? containerName;
  /// The set of network configuration parameters to provide the Container Network Interface (CNI) plugin, specified as key-value pairs.  +   ``IgnoredUID`` - (Required) The user ID (UID) of the proxy container as defined by the ``user`` parameter in a container definition. This is used to ensure the proxy ignores its own traffic. If ``IgnoredGID`` is specified, this field can be empty.  +   ``IgnoredGID`` - (Required) The group ID (GID) of the proxy container as defined by the ``user`` parameter in a container definition. This is used to ensure the proxy ignores its own traffic. If ``IgnoredUID`` is specified, this field can be empty.  +   ``AppPorts`` - (Required) The list of ports that the application uses. Network traffic to these ports is forwarded to the ``ProxyIngressPort`` and ``ProxyEgressPort``.  +   ``ProxyIngressPort`` - (Required) Specifies the port that incoming traffic to the ``AppPorts`` is directed to.  +   ``ProxyEgressPort`` - (Required) Specifies the port that outgoing traffic from the ``AppPorts`` is directed to.  +   ``EgressIgnoredPorts`` - (Required) The egress traffic going to the specified ports is ignored and not redirected to the ``ProxyEgressPort``. It can be an empty list.  +   ``EgressIgnoredIPs`` - (Required) The egress traffic going to the specified IP addresses is ignored and not redirected to the ``ProxyEgressPort``. It can be an empty list.
  final pulumi.Input<List<KeyValuePair>>? proxyConfigurationProperties;
  /// The proxy type. The only supported value is ``APPMESH``.
  final pulumi.Input<String>? type;

  /// Creates a new [ProxyConfiguration].
  /// [containerName] The name of the container that will serve as the App Mesh proxy.
  /// [proxyConfigurationProperties] The set of network configuration parameters to provide the Container Network Interface (CNI) plugin, specified as key-value pairs.  +   ``IgnoredUID`` - (Required) The user ID (UID) of the proxy container as defined by the ``user`` parameter in a container definition. This is used to ensure the proxy ignores its own traffic. If ``IgnoredGID`` is specified, this field can be empty.  +   ``IgnoredGID`` - (Required) The group ID (GID) of the proxy container as defined by the ``user`` parameter in a container definition. This is used to ensure the proxy ignores its own traffic. If ``IgnoredUID`` is specified, this field can be empty.  +   ``AppPorts`` - (Required) The list of ports that the application uses. Network traffic to these ports is forwarded to the ``ProxyIngressPort`` and ``ProxyEgressPort``.  +   ``ProxyIngressPort`` - (Required) Specifies the port that incoming traffic to the ``AppPorts`` is directed to.  +   ``ProxyEgressPort`` - (Required) Specifies the port that outgoing traffic from the ``AppPorts`` is directed to.  +   ``EgressIgnoredPorts`` - (Required) The egress traffic going to the specified ports is ignored and not redirected to the ``ProxyEgressPort``. It can be an empty list.  +   ``EgressIgnoredIPs`` - (Required) The egress traffic going to the specified IP addresses is ignored and not redirected to the ``ProxyEgressPort``. It can be an empty list.
  /// [type] The proxy type. The only supported value is ``APPMESH``.
  ProxyConfiguration({
    this.containerName,
    this.proxyConfigurationProperties,
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'containerName': ?containerName,
      'proxyConfigurationProperties': ?pulumi.Input.mapOptionalInputValue<List<KeyValuePair>, List<Map<String, dynamic>>>(proxyConfigurationProperties, (value) => pulumi.Input.encodeList<KeyValuePair, Map<String, dynamic>>(value, (value) => value.toMap())),
      'type': ?type,
    };
  }

  factory ProxyConfiguration.fromMap(Map<String, dynamic> map) {
    return ProxyConfiguration(
      containerName: map['containerName'] == null ? null : (map['containerName']! as String).input(),
      proxyConfigurationProperties: map['proxyConfigurationProperties'] == null ? null : (pulumi.Input.decodeList<KeyValuePair>(map['proxyConfigurationProperties']!, (value) => KeyValuePair.fromMap((value as Map).cast<String, dynamic>()))).input(),
      type: map['type'] == null ? null : (map['type']! as String).input(),
    );
  }
}

