// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'listener_proxy_protocol_config.dart';

/// {@template pulumi_nlb_listener_listener_args_doc}
/// The set of arguments for Listener.
/// {@endtemplate}
/// {@macro pulumi_nlb_listener_listener_args_doc}
class ListenerArgs {
  /// Specifies whether to enable Application-Layer Protocol Negotiation (ALPN). Valid values:
  final pulumi.Input<bool>? alpnEnabled;

  /// The ALPN policy. Valid values:
  /// - `HTTP1Only`: uses only HTTP 1.x. The priority of HTTP 1.1 is higher than the priority of HTTP 1.0.
  /// - `HTTP2Only`: uses only HTTP 2.0.
  /// - `HTTP2Optional`: preferentially uses HTTP 1.x over HTTP 2.0. The priority of HTTP 1.1 is higher than the priority of HTTP 1.0, and the priority of HTTP 1.0 is higher than the priority of HTTP 2.0.
  /// - `HTTP2Preferred`: preferentially uses HTTP 2.0 over HTTP 1.x. The priority of HTTP 2.0 is higher than the priority of HTTP 1.1, and the priority of HTTP 1.1 is higher than the priority of HTTP 1.0.
  ///
  /// &gt; **NOTE:**  This parameter is required if AlpnEnabled is set to true.
  ///
  /// &gt; **NOTE:**  Effective only for TCPSSL listener.
  final pulumi.Input<String>? alpnPolicy;

  /// The list of certificate authority (CA) certificates. This parameter takes effect only for listeners that use SSL over TCP.
  ///
  /// &gt; **NOTE:**  Only one CA certificate is supported.
  final pulumi.Input<List<String>>? caCertificateIds;

  /// Specifies whether to enable mutual authentication. Valid values:
  final pulumi.Input<bool>? caEnabled;

  /// The list of server certificates. This parameter takes effect only for listeners that use SSL over TCP.
  ///
  /// &gt; **NOTE:**  This parameter takes effect only for TCPSSL listeners.
  final pulumi.Input<List<String>>? certificateIds;

  /// The maximum number of connections that can be created per second on the NLB instance. Valid values: `0` to `1000000`. `0` specifies that the number of connections is unlimited.
  final pulumi.Input<int>? cps;

  /// The last port in the listener port range. Valid values: `0` to `65535`. The number of the last port must be greater than the number of the first port.
  ///
  /// &gt; **NOTE:**  This parameter is required when `ListenerPort` is set to `0`.
  final pulumi.Input<int>? endPort;

  /// The timeout period of idle connections. Unit: seconds. Valid values: `1` to `900`. Default value: `900`.
  final pulumi.Input<int>? idleTimeout;

  /// Enter a name for the listener.
  /// The description must be 2 to 256 characters in length, and can contain letters, digits, commas (,), periods (.), semicolons (;), forward slashes (/), at signs (@), underscores (\_), and hyphens (-).
  final pulumi.Input<String>? listenerDescription;

  /// The listener port. Valid values: `0` to `65535`.
  /// If you set the value to `0`, the listener listens by port range. If you set the value to `0`, you must specify `StartPort` and `EndPort`.
  final pulumi.Input<int> listenerPort;

  /// The listening protocol. Valid values: `TCP`, `UDP`, and `TCPSSL`.
  final pulumi.Input<String> listenerProtocol;

  /// The ID of the Network Load Balancer (NLB) instance.
  final pulumi.Input<String> loadBalancerId;

  /// The maximum size of a TCP segment. Unit: bytes. Valid values: `0` to `1500`. `0` specifies that the maximum segment size remains unchanged.
  ///
  /// &gt; **NOTE:**  This parameter is supported only by TCP listeners and listeners that use SSL over TCP.
  final pulumi.Input<int>? mss;

  /// The Proxy Protocol is used to carry the VpcId, PrivateLinkEpId, and PrivateLinkEpsId information to the backend server for configuration. See `proxy_protocol_config` below.
  final pulumi.Input<ListenerProxyProtocolConfig>? proxyProtocolConfig;

  /// Specifies whether to use the Proxy protocol to pass client IP addresses to backend servers. Valid values:
  final pulumi.Input<bool>? proxyProtocolEnabled;

  /// Specifies whether to enable fine-grained monitoring. Valid values:
  final pulumi.Input<bool>? secSensorEnabled;

  /// The security policy ID. System security policies and custom security policies are supported.
  ///
  /// Valid values: `tls_cipher_policy\_1\_0` (default), `tls_cipher_policy\_1\_1`, `tls_cipher_policy\_1\_2`, `tls_cipher_policy\_1\_2\_strict`, and `tls_cipher_policy\_1\_2\_strict_with\_1\_3`.
  ///
  /// &gt; **NOTE:**  This parameter takes effect only for listeners that use SSL over TCP.
  final pulumi.Input<String>? securityPolicyId;

  /// The ID of the server group.
  final pulumi.Input<String> serverGroupId;

  /// The first port in the listener port range. Valid values: `0` to `65535`.
  ///
  /// &gt; **NOTE:**  This parameter is required when `ListenerPort` is set to `0`.
  final pulumi.Input<int>? startPort;

  /// The status of the resource. Valid values: `Running`, `Stopped`. When you want to enable this instance, you can set the property value to `Running`;
  final pulumi.Input<String>? status;

  /// The tag of the resource
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [ListenerArgs].
  /// [alpnEnabled] Specifies whether to enable Application-Layer Protocol Negotiation (ALPN). Valid values:
  /// [alpnPolicy] The ALPN policy. Valid values:
  /// [caCertificateIds] The list of certificate authority (CA) certificates. This parameter takes effect only for listeners that use SSL over TCP.
  /// [caEnabled] Specifies whether to enable mutual authentication. Valid values:
  /// [certificateIds] The list of server certificates. This parameter takes effect only for listeners that use SSL over TCP.
  /// [cps] The maximum number of connections that can be created per second on the NLB instance. Valid values: `0` to `1000000`. `0` specifies that the number of connections is unlimited.
  /// [endPort] The last port in the listener port range. Valid values: `0` to `65535`. The number of the last port must be greater than the number of the first port.
  /// [idleTimeout] The timeout period of idle connections. Unit: seconds. Valid values: `1` to `900`. Default value: `900`.
  /// [listenerDescription] Enter a name for the listener.
  /// [listenerPort] The listener port. Valid values: `0` to `65535`.
  /// [listenerProtocol] The listening protocol. Valid values: `TCP`, `UDP`, and `TCPSSL`.
  /// [loadBalancerId] The ID of the Network Load Balancer (NLB) instance.
  /// [mss] The maximum size of a TCP segment. Unit: bytes. Valid values: `0` to `1500`. `0` specifies that the maximum segment size remains unchanged.
  /// [proxyProtocolConfig] The Proxy Protocol is used to carry the VpcId, PrivateLinkEpId, and PrivateLinkEpsId information to the backend server for configuration. See `proxy_protocol_config` below.
  /// [proxyProtocolEnabled] Specifies whether to use the Proxy protocol to pass client IP addresses to backend servers. Valid values:
  /// [secSensorEnabled] Specifies whether to enable fine-grained monitoring. Valid values:
  /// [securityPolicyId] The security policy ID. System security policies and custom security policies are supported.
  /// [serverGroupId] The ID of the server group.
  /// [startPort] The first port in the listener port range. Valid values: `0` to `65535`.
  /// [status] The status of the resource. Valid values: `Running`, `Stopped`. When you want to enable this instance, you can set the property value to `Running`;
  /// [tags] The tag of the resource
  ListenerArgs({
    this.alpnEnabled,
    this.alpnPolicy,
    this.caCertificateIds,
    this.caEnabled,
    this.certificateIds,
    this.cps,
    this.endPort,
    this.idleTimeout,
    this.listenerDescription,
    required this.listenerPort,
    required this.listenerProtocol,
    required this.loadBalancerId,
    this.mss,
    this.proxyProtocolConfig,
    this.proxyProtocolEnabled,
    this.secSensorEnabled,
    this.securityPolicyId,
    required this.serverGroupId,
    this.startPort,
    this.status,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'alpnEnabled': ?alpnEnabled,
      'alpnPolicy': ?alpnPolicy,
      'caCertificateIds': ?caCertificateIds,
      'caEnabled': ?caEnabled,
      'certificateIds': ?certificateIds,
      'cps': ?cps,
      'endPort': ?endPort,
      'idleTimeout': ?idleTimeout,
      'listenerDescription': ?listenerDescription,
      'listenerPort': listenerPort,
      'listenerProtocol': listenerProtocol,
      'loadBalancerId': loadBalancerId,
      'mss': ?mss,
      'proxyProtocolConfig':
          ?pulumi.Input.mapOptionalInputValue<
            ListenerProxyProtocolConfig,
            Map<String, dynamic>
          >(proxyProtocolConfig, (value) => value.toMap()),
      'proxyProtocolEnabled': ?proxyProtocolEnabled,
      'secSensorEnabled': ?secSensorEnabled,
      'securityPolicyId': ?securityPolicyId,
      'serverGroupId': serverGroupId,
      'startPort': ?startPort,
      'status': ?status,
      'tags': ?tags,
    };
  }

  factory ListenerArgs.fromMap(Map<String, dynamic> map) {
    return ListenerArgs(
      alpnEnabled: (() {
        final guardedValue = map['alpnEnabled'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      alpnPolicy: (() {
        final guardedValue = map['alpnPolicy'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      caCertificateIds: (() {
        final guardedValue = map['caCertificateIds'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue((guardedValue as List).cast<String>());
      })(),
      caEnabled: (() {
        final guardedValue = map['caEnabled'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      certificateIds: (() {
        final guardedValue = map['certificateIds'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue((guardedValue as List).cast<String>());
      })(),
      cps: (() {
        final guardedValue = map['cps'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
      endPort: (() {
        final guardedValue = map['endPort'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
      idleTimeout: (() {
        final guardedValue = map['idleTimeout'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
      listenerDescription: (() {
        final guardedValue = map['listenerDescription'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      listenerPort: pulumi.Input.fromValue(map['listenerPort'] as int),
      listenerProtocol: pulumi.Input.fromValue(
        map['listenerProtocol'] as String,
      ),
      loadBalancerId: pulumi.Input.fromValue(map['loadBalancerId'] as String),
      mss: (() {
        final guardedValue = map['mss'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
      proxyProtocolConfig: (() {
        final guardedValue = map['proxyProtocolConfig'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          ListenerProxyProtocolConfig.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      proxyProtocolEnabled: (() {
        final guardedValue = map['proxyProtocolEnabled'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      secSensorEnabled: (() {
        final guardedValue = map['secSensorEnabled'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      securityPolicyId: (() {
        final guardedValue = map['securityPolicyId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      serverGroupId: pulumi.Input.fromValue(map['serverGroupId'] as String),
      startPort: (() {
        final guardedValue = map['startPort'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
      status: (() {
        final guardedValue = map['status'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      tags: (() {
        final guardedValue = map['tags'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          (guardedValue as Map).cast<String, String>(),
        );
      })(),
    );
  }
}
