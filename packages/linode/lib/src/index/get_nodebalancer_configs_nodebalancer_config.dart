// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_nodebalancer_configs_nodebalancer_config_node_status.dart';

class GetNodebalancerConfigsNodebalancerConfig {
  /// What algorithm this NodeBalancer should use for routing traffic to backends (`roundrobin`, `leastconn`, `source`)
  final String algorithm;
  /// The type of check to perform against backends to ensure they are serving requests. This is used to determine if backends are up or down. If none no check is performed. connection requires only a connection to the backend to succeed. http and http_body rely on the backend serving HTTP, and that the response returned matches what is expected. (`none`, `connection`, `http`, `http_body`)
  final String check;
  /// How many times to attempt a check before considering a backend to be down. (1-30)
  final int checkAttempts;
  /// This value must be present in the response body of the check in order for it to pass. If this value is not present in the response body of a check request, the backend is considered to be down
  final String checkBody;
  /// How often, in seconds, to check that backends are up and serving requests.
  final int checkInterval;
  /// If true, any response from this backend with a 5xx status code will be enough for it to be considered unhealthy and taken out of rotation.
  final bool checkPassive;
  /// The URL path to check on each backend. If the backend does not respond to this request it is considered to be down.
  final String checkPath;
  /// How long, in seconds, to wait for a check attempt before considering it failed. (1-30)
  final int checkTimeout;
  /// What ciphers to use for SSL connections served by this NodeBalancer. `legacy` is considered insecure and should only be used if necessary. (`recommended`, `legacy`)
  final String cipherSuite;
  /// The config's ID.
  final int id;
  /// A structure containing information about the health of the backends for this port. This information is updated periodically as checks are performed against backends.
  final List<GetNodebalancerConfigsNodebalancerConfigNodeStatus> nodeStatuses;
  /// The ID of the NodeBalancer to access.
  ///
  /// * `filter` - (Optional) A set of filters used to select Linode NodeBalancers that meet certain requirements.
  final int nodebalancerId;
  /// The TCP port this Config is for.
  final int port;
  /// The protocol this port is configured to serve. If this is set to https you must include an ssl_cert and an ssl_key. (`http`, `https`, `tcp`) (Defaults to `http`)
  final String protocol;
  /// The version of ProxyProtocol to use for the underlying NodeBalancer. This requires protocol to be `tcp`. (`none`, `v1`, and `v2`) (Defaults to `none`)
  final String proxyProtocol;
  /// The read-only common name automatically derived from the SSL certificate assigned to this NodeBalancerConfig. Please refer to this field to verify that the appropriate certificate is assigned to your NodeBalancerConfig.
  final String sslCommonname;
  /// The read-only fingerprint automatically derived from the SSL certificate assigned to this NodeBalancerConfig. Please refer to this field to verify that the appropriate certificate is assigned to your NodeBalancerConfig.
  final String sslFingerprint;
  /// Controls how session stickiness is handled on this port. (`none`, `table`, `http_cookie`)
  final String stickiness;
  /// Specifies the port on the backend node used for active health checks, which may differ from the port serving traffic.
  final int udpCheckPort;
  /// The idle time in seconds after which a session that hasn’t received packets is destroyed.
  final int udpSessionTimeout;

  /// Creates a new [GetNodebalancerConfigsNodebalancerConfig].
  /// [algorithm] What algorithm this NodeBalancer should use for routing traffic to backends (`roundrobin`, `leastconn`, `source`)
  /// [check] The type of check to perform against backends to ensure they are serving requests. This is used to determine if backends are up or down. If none no check is performed. connection requires only a connection to the backend to succeed. http and http_body rely on the backend serving HTTP, and that the response returned matches what is expected. (`none`, `connection`, `http`, `http_body`)
  /// [checkAttempts] How many times to attempt a check before considering a backend to be down. (1-30)
  /// [checkBody] This value must be present in the response body of the check in order for it to pass. If this value is not present in the response body of a check request, the backend is considered to be down
  /// [checkInterval] How often, in seconds, to check that backends are up and serving requests.
  /// [checkPassive] If true, any response from this backend with a 5xx status code will be enough for it to be considered unhealthy and taken out of rotation.
  /// [checkPath] The URL path to check on each backend. If the backend does not respond to this request it is considered to be down.
  /// [checkTimeout] How long, in seconds, to wait for a check attempt before considering it failed. (1-30)
  /// [cipherSuite] What ciphers to use for SSL connections served by this NodeBalancer. `legacy` is considered insecure and should only be used if necessary. (`recommended`, `legacy`)
  /// [id] The config's ID.
  /// [nodeStatuses] A structure containing information about the health of the backends for this port. This information is updated periodically as checks are performed against backends.
  /// [nodebalancerId] The ID of the NodeBalancer to access.
  /// [port] The TCP port this Config is for.
  /// [protocol] The protocol this port is configured to serve. If this is set to https you must include an ssl_cert and an ssl_key. (`http`, `https`, `tcp`) (Defaults to `http`)
  /// [proxyProtocol] The version of ProxyProtocol to use for the underlying NodeBalancer. This requires protocol to be `tcp`. (`none`, `v1`, and `v2`) (Defaults to `none`)
  /// [sslCommonname] The read-only common name automatically derived from the SSL certificate assigned to this NodeBalancerConfig. Please refer to this field to verify that the appropriate certificate is assigned to your NodeBalancerConfig.
  /// [sslFingerprint] The read-only fingerprint automatically derived from the SSL certificate assigned to this NodeBalancerConfig. Please refer to this field to verify that the appropriate certificate is assigned to your NodeBalancerConfig.
  /// [stickiness] Controls how session stickiness is handled on this port. (`none`, `table`, `http_cookie`)
  /// [udpCheckPort] Specifies the port on the backend node used for active health checks, which may differ from the port serving traffic.
  /// [udpSessionTimeout] The idle time in seconds after which a session that hasn’t received packets is destroyed.
  GetNodebalancerConfigsNodebalancerConfig({
    required this.algorithm,
    required this.check,
    required this.checkAttempts,
    required this.checkBody,
    required this.checkInterval,
    required this.checkPassive,
    required this.checkPath,
    required this.checkTimeout,
    required this.cipherSuite,
    required this.id,
    required this.nodeStatuses,
    required this.nodebalancerId,
    required this.port,
    required this.protocol,
    required this.proxyProtocol,
    required this.sslCommonname,
    required this.sslFingerprint,
    required this.stickiness,
    required this.udpCheckPort,
    required this.udpSessionTimeout,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'algorithm': algorithm,
      'check': check,
      'checkAttempts': checkAttempts,
      'checkBody': checkBody,
      'checkInterval': checkInterval,
      'checkPassive': checkPassive,
      'checkPath': checkPath,
      'checkTimeout': checkTimeout,
      'cipherSuite': cipherSuite,
      'id': id,
      'nodeStatuses': pulumi.Input.encodeList<GetNodebalancerConfigsNodebalancerConfigNodeStatus, Map<String, dynamic>>(nodeStatuses, (value) => value.toMap()),
      'nodebalancerId': nodebalancerId,
      'port': port,
      'protocol': protocol,
      'proxyProtocol': proxyProtocol,
      'sslCommonname': sslCommonname,
      'sslFingerprint': sslFingerprint,
      'stickiness': stickiness,
      'udpCheckPort': udpCheckPort,
      'udpSessionTimeout': udpSessionTimeout,
    };
  }

  factory GetNodebalancerConfigsNodebalancerConfig.fromMap(Map<String, dynamic> map) {
    return GetNodebalancerConfigsNodebalancerConfig(
      algorithm: map['algorithm'] as String,
      check: map['check'] as String,
      checkAttempts: map['checkAttempts'] as int,
      checkBody: map['checkBody'] as String,
      checkInterval: map['checkInterval'] as int,
      checkPassive: map['checkPassive'] as bool,
      checkPath: map['checkPath'] as String,
      checkTimeout: map['checkTimeout'] as int,
      cipherSuite: map['cipherSuite'] as String,
      id: map['id'] as int,
      nodeStatuses: pulumi.Input.decodeList<GetNodebalancerConfigsNodebalancerConfigNodeStatus>(map['nodeStatuses'], (value) => GetNodebalancerConfigsNodebalancerConfigNodeStatus.fromMap((value as Map).cast<String, dynamic>())),
      nodebalancerId: map['nodebalancerId'] as int,
      port: map['port'] as int,
      protocol: map['protocol'] as String,
      proxyProtocol: map['proxyProtocol'] as String,
      sslCommonname: map['sslCommonname'] as String,
      sslFingerprint: map['sslFingerprint'] as String,
      stickiness: map['stickiness'] as String,
      udpCheckPort: map['udpCheckPort'] as int,
      udpSessionTimeout: map['udpSessionTimeout'] as int,
    );
  }
}

