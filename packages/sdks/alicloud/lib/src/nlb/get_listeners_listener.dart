// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetListenersListener {
  /// ndicates whether Application-Layer Protocol Negotiation (ALPN) is enabled.
  final pulumi.Input<bool> alpnEnabled;

  /// The ALPN policy.
  final pulumi.Input<String> alpnPolicy;

  /// CA certificate list information. Currently, only one CA certificate can be added. **NOTE:** This parameter only takes effect for `TCPSSL` listeners.
  final pulumi.Input<List<String>> caCertificateIds;

  /// Whether to start two-way authentication.
  final pulumi.Input<bool> caEnabled;

  /// Server certificate list information. Currently, only one server certificate can be added. This parameter only takes effect for `TCPSSL` listeners.
  final pulumi.Input<List<String>> certificateIds;

  /// The new connection speed limit for a network-based load balancing instance per second. Valid values: `0` ~ `1000000`. `0` indicates unlimited speed.
  final pulumi.Input<int> cps;

  /// Full port listening end port. Valid values: `0` ~ `65535`. The value of the end port is less than the start port.
  final pulumi.Input<String> endPort;

  /// The ID of the Nlb Listener.
  final pulumi.Input<String> id;

  /// Connection idle timeout time. Unit: seconds. Valid values: `1` ~ `900`.
  final pulumi.Input<int> idleTimeout;

  /// Custom listener name. The length is limited to 2 to 256 characters, supports Chinese and English letters, and can include numbers, commas (,), half-width periods (.), half-width semicolons (;), forward slashes (/), at(@), underscores (_), and dashes (-).
  final pulumi.Input<String> listenerDescription;

  /// The ID of the listener.
  final pulumi.Input<String> listenerId;

  /// Listening port. Valid values: `0` ~ `65535`. `0`: indicates that full port listening is used. When set to 0, you must configure `StartPort` and `EndPort`.
  final pulumi.Input<int> listenerPort;

  /// The listening protocol. Valid values: `TCP`, `UDP`, or `TCPSSL`.
  final pulumi.Input<String> listenerProtocol;

  /// The ID of the network-based server load balancer instance.
  final pulumi.Input<String> loadBalancerId;

  /// The maximum segment size of the TCP message. Unit: Bytes. Valid values: `0` ~ `1500`. `0` indicates that the MSS value of the TCP message is not modified. only `TCP` and `TCPSSL` listeners support this field value.
  final pulumi.Input<int> mss;

  /// Whether to enable the Proxy Protocol to carry the source address of the client to the backend server.
  final pulumi.Input<bool> proxyProtocolEnabled;

  /// Indicates whether fine-grained monitoring is enabled.
  final pulumi.Input<bool> secSensorEnabled;

  /// Security policy ID. Support system security policies and custom security policies. Valid values: `tls_cipher_policy_1_0`, `tls_cipher_policy_1_1`, `tls_cipher_policy_1_2`, `tls_cipher_policy_1_2_strict`, or `tls_cipher_policy_1_2_strict_with_1_3`. **Note:** This parameter only takes effect for `TCPSSL` listeners.
  final pulumi.Input<String> securityPolicyId;

  /// The ID of the server group.
  final pulumi.Input<String> serverGroupId;

  /// Full Port listens to the starting port. Valid values: `0` ~ `65535`.
  final pulumi.Input<String> startPort;

  /// The status of the resource.
  final pulumi.Input<String> status;

  /// Creates a new [GetListenersListener].
  /// [alpnEnabled] ndicates whether Application-Layer Protocol Negotiation (ALPN) is enabled.
  /// [alpnPolicy] The ALPN policy.
  /// [caCertificateIds] CA certificate list information. Currently, only one CA certificate can be added. **NOTE:** This parameter only takes effect for `TCPSSL` listeners.
  /// [caEnabled] Whether to start two-way authentication.
  /// [certificateIds] Server certificate list information. Currently, only one server certificate can be added. This parameter only takes effect for `TCPSSL` listeners.
  /// [cps] The new connection speed limit for a network-based load balancing instance per second. Valid values: `0` ~ `1000000`. `0` indicates unlimited speed.
  /// [endPort] Full port listening end port. Valid values: `0` ~ `65535`. The value of the end port is less than the start port.
  /// [id] The ID of the Nlb Listener.
  /// [idleTimeout] Connection idle timeout time. Unit: seconds. Valid values: `1` ~ `900`.
  /// [listenerDescription] Custom listener name. The length is limited to 2 to 256 characters, supports Chinese and English letters, and can include numbers, commas (,), half-width periods (.), half-width semicolons (;), forward slashes (/), at(@), underscores (_), and dashes (-).
  /// [listenerId] The ID of the listener.
  /// [listenerPort] Listening port. Valid values: `0` ~ `65535`. `0`: indicates that full port listening is used. When set to 0, you must configure `StartPort` and `EndPort`.
  /// [listenerProtocol] The listening protocol. Valid values: `TCP`, `UDP`, or `TCPSSL`.
  /// [loadBalancerId] The ID of the network-based server load balancer instance.
  /// [mss] The maximum segment size of the TCP message. Unit: Bytes. Valid values: `0` ~ `1500`. `0` indicates that the MSS value of the TCP message is not modified. only `TCP` and `TCPSSL` listeners support this field value.
  /// [proxyProtocolEnabled] Whether to enable the Proxy Protocol to carry the source address of the client to the backend server.
  /// [secSensorEnabled] Indicates whether fine-grained monitoring is enabled.
  /// [securityPolicyId] Security policy ID. Support system security policies and custom security policies. Valid values: `tls_cipher_policy_1_0`, `tls_cipher_policy_1_1`, `tls_cipher_policy_1_2`, `tls_cipher_policy_1_2_strict`, or `tls_cipher_policy_1_2_strict_with_1_3`. **Note:** This parameter only takes effect for `TCPSSL` listeners.
  /// [serverGroupId] The ID of the server group.
  /// [startPort] Full Port listens to the starting port. Valid values: `0` ~ `65535`.
  /// [status] The status of the resource.
  GetListenersListener({
    required this.alpnEnabled,
    required this.alpnPolicy,
    required this.caCertificateIds,
    required this.caEnabled,
    required this.certificateIds,
    required this.cps,
    required this.endPort,
    required this.id,
    required this.idleTimeout,
    required this.listenerDescription,
    required this.listenerId,
    required this.listenerPort,
    required this.listenerProtocol,
    required this.loadBalancerId,
    required this.mss,
    required this.proxyProtocolEnabled,
    required this.secSensorEnabled,
    required this.securityPolicyId,
    required this.serverGroupId,
    required this.startPort,
    required this.status,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'alpnEnabled': alpnEnabled,
      'alpnPolicy': alpnPolicy,
      'caCertificateIds': caCertificateIds,
      'caEnabled': caEnabled,
      'certificateIds': certificateIds,
      'cps': cps,
      'endPort': endPort,
      'id': id,
      'idleTimeout': idleTimeout,
      'listenerDescription': listenerDescription,
      'listenerId': listenerId,
      'listenerPort': listenerPort,
      'listenerProtocol': listenerProtocol,
      'loadBalancerId': loadBalancerId,
      'mss': mss,
      'proxyProtocolEnabled': proxyProtocolEnabled,
      'secSensorEnabled': secSensorEnabled,
      'securityPolicyId': securityPolicyId,
      'serverGroupId': serverGroupId,
      'startPort': startPort,
      'status': status,
    };
  }

  factory GetListenersListener.fromMap(Map<String, dynamic> map) {
    return GetListenersListener(
      alpnEnabled: pulumi.Input.fromValue(map['alpnEnabled'] as bool),
      alpnPolicy: pulumi.Input.fromValue(map['alpnPolicy'] as String),
      caCertificateIds: pulumi.Input.fromValue(
        (map['caCertificateIds'] as List).cast<String>(),
      ),
      caEnabled: pulumi.Input.fromValue(map['caEnabled'] as bool),
      certificateIds: pulumi.Input.fromValue(
        (map['certificateIds'] as List).cast<String>(),
      ),
      cps: pulumi.Input.fromValue(map['cps'] as int),
      endPort: pulumi.Input.fromValue(map['endPort'] as String),
      id: pulumi.Input.fromValue(map['id'] as String),
      idleTimeout: pulumi.Input.fromValue(map['idleTimeout'] as int),
      listenerDescription: pulumi.Input.fromValue(
        map['listenerDescription'] as String,
      ),
      listenerId: pulumi.Input.fromValue(map['listenerId'] as String),
      listenerPort: pulumi.Input.fromValue(map['listenerPort'] as int),
      listenerProtocol: pulumi.Input.fromValue(
        map['listenerProtocol'] as String,
      ),
      loadBalancerId: pulumi.Input.fromValue(map['loadBalancerId'] as String),
      mss: pulumi.Input.fromValue(map['mss'] as int),
      proxyProtocolEnabled: pulumi.Input.fromValue(
        map['proxyProtocolEnabled'] as bool,
      ),
      secSensorEnabled: pulumi.Input.fromValue(map['secSensorEnabled'] as bool),
      securityPolicyId: pulumi.Input.fromValue(
        map['securityPolicyId'] as String,
      ),
      serverGroupId: pulumi.Input.fromValue(map['serverGroupId'] as String),
      startPort: pulumi.Input.fromValue(map['startPort'] as String),
      status: pulumi.Input.fromValue(map['status'] as String),
    );
  }
}
