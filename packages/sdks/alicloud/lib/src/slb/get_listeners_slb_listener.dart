// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetListenersSlbListener {
  /// Port opened on the backend server to receive requests.
  final pulumi.Input<int> backendPort;
  /// Peak bandwidth. If the value is set to -1, the listener is not limited by bandwidth.
  final pulumi.Input<int> bandwidth;
  /// ID of the CA certificate (only required when two-way authentication is used). Only available when the protocol is `https`.
  final pulumi.Input<String> caCertificateId;
  /// Cookie configured by the backend server. Only available when the sticky_session_type is `server`.
  final pulumi.Input<String> cookie;
  /// Cookie timeout in seconds. Only available when the sticky_session_type is `insert`.
  final pulumi.Input<int> cookieTimeout;
  /// The description of slb listener.
  final pulumi.Input<String> description;
  /// Whether to enable https listener support http2 or not. Valid values are `on` and `off`. Default to `on`.
  final pulumi.Input<String> enableHttp2;
  /// Connection timeout in seconds for the Layer 4 TCP listener. Only available when the protocol is `tcp`.
  final pulumi.Input<int> establishedTimeout;
  /// Filter listeners by the specified frontend port.
  final pulumi.Input<int> frontendPort;
  /// Indicate whether Gzip compression is enabled or not. Possible values are `on` and `off`. Only available when the protocol is `http` or `https`.
  final pulumi.Input<String> gzip;
  /// Indicate whether health check is enabled of not. Possible values are `on` and `off`.
  final pulumi.Input<String> healthCheck;
  /// Port used for health check.
  final pulumi.Input<int> healthCheckConnectPort;
  /// Amount of time in seconds to wait for the response for a health check.
  final pulumi.Input<int> healthCheckConnectTimeout;
  /// Domain name used for health check. The SLB sends HTTP head requests to the backend server, the domain is useful when the backend server verifies the host field in the requests. Only available when the protocol is `http`, `https` or `tcp` (in this case health_check_type must be `http`).
  final pulumi.Input<String> healthCheckDomain;
  /// HTTP status codes indicating that the health check is normal. It can contain several comma-separated values such as "http_2xx,http_3xx". Only available when the protocol is `http`, `https` or `tcp` (in this case health_check_type must be `http`).
  final pulumi.Input<String> healthCheckHttpCode;
  /// Time interval between two consecutive health checks.
  final pulumi.Input<int> healthCheckInterval;
  /// Amount of time in seconds to wait for the response from a health check. If an ECS instance sends no response within the specified timeout period, the health check fails. Only available when the protocol is `http` or `https`.
  final pulumi.Input<int> healthCheckTimeout;
  /// Health check method. Possible values are `tcp` and `http`. Only available when the protocol is `tcp`.
  final pulumi.Input<String> healthCheckType;
  /// URI used for health check. Only available when the protocol is `http`, `https` or `tcp` (in this case health_check_type must be `http`).
  final pulumi.Input<String> healthCheckUri;
  /// Number of consecutive successes of health check performed on the same ECS instance (from failure to success).
  final pulumi.Input<int> healthyThreshold;
  /// Timeout of http or https listener established connection idle timeout. Valid value range: [1-60] in seconds. Default to 15.
  final pulumi.Input<int> idleTimeout;
  /// ID of the active/standby server group.
  final pulumi.Input<String> masterSlaveServerGroupId;
  /// Timeout value of the TCP connection in seconds. If the value is 0, the session persistence function is disabled. Only available when the protocol is `tcp`.
  final pulumi.Input<int> persistenceTimeout;
  /// Filter listeners by the specified protocol. Valid values: `http`, `https`, `tcp` and `udp`.
  final pulumi.Input<String> protocol;
  /// Whether to support carrying the client source address to the backend server through the Proxy Protocol. Valid values are `true` and `false`. Default to `false`.
  final pulumi.Input<bool> proxyProtocolV2Enabled;
  /// Timeout of http or https listener request (which does not get response from backend) timeout. Valid value range: [1-180] in seconds. Default to 60.
  final pulumi.Input<int> requestTimeout;
  /// Algorithm used to distribute traffic. Possible values: `wrr` (weighted round robin), `wlc` (weighted least connection) and `rr` (round robin).
  final pulumi.Input<String> scheduler;
  /// Security status. Only available when the protocol is `https`.
  final pulumi.Input<String> securityStatus;
  final pulumi.Input<String> serverCertificateId;
  /// ID of the linked VServer group.
  final pulumi.Input<String> serverGroupId;
  /// ID of the server certificate. Only available when the protocol is `https`.
  final pulumi.Input<String> sslCertificateId;
  /// Listener status.
  final pulumi.Input<String> status;
  /// Indicate whether session persistence is enabled or not. If enabled, all session requests from the same client are sent to the same backend server. Possible values are `on` and `off`. Only available when the protocol is `http` or `https`.
  final pulumi.Input<String> stickySession;
  /// Method used to handle the cookie. Possible values are `insert` (cookie added to the response) and `server` (cookie set by the backend server). Only available when the protocol is `http` or `https` and sticky_session is `on`.
  final pulumi.Input<String> stickySessionType;
  /// Https listener TLS cipher policy. Valid values are `tls_cipher_policy_1_0`, `tls_cipher_policy_1_1`, `tls_cipher_policy_1_2`, `tls_cipher_policy_1_2_strict`. Default to `tls_cipher_policy_1_0`.
  final pulumi.Input<String> tlsCipherPolicy;
  /// Number of consecutive failures of health check performed on the same ECS instance (from success to failure).
  final pulumi.Input<int> unhealthyThreshold;
  /// Indicate whether the HTTP header field "X-Forwarded-For" is added or not; it allows the backend server to know about the user's IP address. Possible values are `on` and `off`. Only available when the protocol is `http` or `https`.
  final pulumi.Input<String> xForwardedFor;
  /// Indicate whether the HTTP header field "X-Forwarded-For_SLBID" is added or not; it allows the backend server to know about the SLB ID. Possible values are `on` and `off`. Only available when the protocol is `http` or `https`.
  final pulumi.Input<String> xForwardedForSlbId;
  /// Indicate whether the HTTP header field "X-Forwarded-For_SLBIP" is added or not; it allows the backend server to know about the SLB IP address. Possible values are `on` and `off`. Only available when the protocol is `http` or `https`.
  final pulumi.Input<String> xForwardedForSlbIp;
  /// Indicate whether the HTTP header field "X-Forwarded-For_proto" is added or not; it allows the backend server to know about the user's protocol. Possible values are `on` and `off`. Only available when the protocol is `http` or `https`.
  final pulumi.Input<String> xForwardedForSlbProto;

  /// Creates a new [GetListenersSlbListener].
  /// [backendPort] Port opened on the backend server to receive requests.
  /// [bandwidth] Peak bandwidth. If the value is set to -1, the listener is not limited by bandwidth.
  /// [caCertificateId] ID of the CA certificate (only required when two-way authentication is used). Only available when the protocol is `https`.
  /// [cookie] Cookie configured by the backend server. Only available when the sticky_session_type is `server`.
  /// [cookieTimeout] Cookie timeout in seconds. Only available when the sticky_session_type is `insert`.
  /// [description] The description of slb listener.
  /// [enableHttp2] Whether to enable https listener support http2 or not. Valid values are `on` and `off`. Default to `on`.
  /// [establishedTimeout] Connection timeout in seconds for the Layer 4 TCP listener. Only available when the protocol is `tcp`.
  /// [frontendPort] Filter listeners by the specified frontend port.
  /// [gzip] Indicate whether Gzip compression is enabled or not. Possible values are `on` and `off`. Only available when the protocol is `http` or `https`.
  /// [healthCheck] Indicate whether health check is enabled of not. Possible values are `on` and `off`.
  /// [healthCheckConnectPort] Port used for health check.
  /// [healthCheckConnectTimeout] Amount of time in seconds to wait for the response for a health check.
  /// [healthCheckDomain] Domain name used for health check. The SLB sends HTTP head requests to the backend server, the domain is useful when the backend server verifies the host field in the requests. Only available when the protocol is `http`, `https` or `tcp` (in this case health_check_type must be `http`).
  /// [healthCheckHttpCode] HTTP status codes indicating that the health check is normal. It can contain several comma-separated values such as "http_2xx,http_3xx". Only available when the protocol is `http`, `https` or `tcp` (in this case health_check_type must be `http`).
  /// [healthCheckInterval] Time interval between two consecutive health checks.
  /// [healthCheckTimeout] Amount of time in seconds to wait for the response from a health check. If an ECS instance sends no response within the specified timeout period, the health check fails. Only available when the protocol is `http` or `https`.
  /// [healthCheckType] Health check method. Possible values are `tcp` and `http`. Only available when the protocol is `tcp`.
  /// [healthCheckUri] URI used for health check. Only available when the protocol is `http`, `https` or `tcp` (in this case health_check_type must be `http`).
  /// [healthyThreshold] Number of consecutive successes of health check performed on the same ECS instance (from failure to success).
  /// [idleTimeout] Timeout of http or https listener established connection idle timeout. Valid value range: [1-60] in seconds. Default to 15.
  /// [masterSlaveServerGroupId] ID of the active/standby server group.
  /// [persistenceTimeout] Timeout value of the TCP connection in seconds. If the value is 0, the session persistence function is disabled. Only available when the protocol is `tcp`.
  /// [protocol] Filter listeners by the specified protocol. Valid values: `http`, `https`, `tcp` and `udp`.
  /// [proxyProtocolV2Enabled] Whether to support carrying the client source address to the backend server through the Proxy Protocol. Valid values are `true` and `false`. Default to `false`.
  /// [requestTimeout] Timeout of http or https listener request (which does not get response from backend) timeout. Valid value range: [1-180] in seconds. Default to 60.
  /// [scheduler] Algorithm used to distribute traffic. Possible values: `wrr` (weighted round robin), `wlc` (weighted least connection) and `rr` (round robin).
  /// [securityStatus] Security status. Only available when the protocol is `https`.
  /// [serverCertificateId] Required.
  /// [serverGroupId] ID of the linked VServer group.
  /// [sslCertificateId] ID of the server certificate. Only available when the protocol is `https`.
  /// [status] Listener status.
  /// [stickySession] Indicate whether session persistence is enabled or not. If enabled, all session requests from the same client are sent to the same backend server. Possible values are `on` and `off`. Only available when the protocol is `http` or `https`.
  /// [stickySessionType] Method used to handle the cookie. Possible values are `insert` (cookie added to the response) and `server` (cookie set by the backend server). Only available when the protocol is `http` or `https` and sticky_session is `on`.
  /// [tlsCipherPolicy] Https listener TLS cipher policy. Valid values are `tls_cipher_policy_1_0`, `tls_cipher_policy_1_1`, `tls_cipher_policy_1_2`, `tls_cipher_policy_1_2_strict`. Default to `tls_cipher_policy_1_0`.
  /// [unhealthyThreshold] Number of consecutive failures of health check performed on the same ECS instance (from success to failure).
  /// [xForwardedFor] Indicate whether the HTTP header field "X-Forwarded-For" is added or not; it allows the backend server to know about the user's IP address. Possible values are `on` and `off`. Only available when the protocol is `http` or `https`.
  /// [xForwardedForSlbId] Indicate whether the HTTP header field "X-Forwarded-For_SLBID" is added or not; it allows the backend server to know about the SLB ID. Possible values are `on` and `off`. Only available when the protocol is `http` or `https`.
  /// [xForwardedForSlbIp] Indicate whether the HTTP header field "X-Forwarded-For_SLBIP" is added or not; it allows the backend server to know about the SLB IP address. Possible values are `on` and `off`. Only available when the protocol is `http` or `https`.
  /// [xForwardedForSlbProto] Indicate whether the HTTP header field "X-Forwarded-For_proto" is added or not; it allows the backend server to know about the user's protocol. Possible values are `on` and `off`. Only available when the protocol is `http` or `https`.
  GetListenersSlbListener({
    required this.backendPort,
    required this.bandwidth,
    required this.caCertificateId,
    required this.cookie,
    required this.cookieTimeout,
    required this.description,
    required this.enableHttp2,
    required this.establishedTimeout,
    required this.frontendPort,
    required this.gzip,
    required this.healthCheck,
    required this.healthCheckConnectPort,
    required this.healthCheckConnectTimeout,
    required this.healthCheckDomain,
    required this.healthCheckHttpCode,
    required this.healthCheckInterval,
    required this.healthCheckTimeout,
    required this.healthCheckType,
    required this.healthCheckUri,
    required this.healthyThreshold,
    required this.idleTimeout,
    required this.masterSlaveServerGroupId,
    required this.persistenceTimeout,
    required this.protocol,
    required this.proxyProtocolV2Enabled,
    required this.requestTimeout,
    required this.scheduler,
    required this.securityStatus,
    required this.serverCertificateId,
    required this.serverGroupId,
    required this.sslCertificateId,
    required this.status,
    required this.stickySession,
    required this.stickySessionType,
    required this.tlsCipherPolicy,
    required this.unhealthyThreshold,
    required this.xForwardedFor,
    required this.xForwardedForSlbId,
    required this.xForwardedForSlbIp,
    required this.xForwardedForSlbProto,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'backendPort': backendPort,
      'bandwidth': bandwidth,
      'caCertificateId': caCertificateId,
      'cookie': cookie,
      'cookieTimeout': cookieTimeout,
      'description': description,
      'enableHttp2': enableHttp2,
      'establishedTimeout': establishedTimeout,
      'frontendPort': frontendPort,
      'gzip': gzip,
      'healthCheck': healthCheck,
      'healthCheckConnectPort': healthCheckConnectPort,
      'healthCheckConnectTimeout': healthCheckConnectTimeout,
      'healthCheckDomain': healthCheckDomain,
      'healthCheckHttpCode': healthCheckHttpCode,
      'healthCheckInterval': healthCheckInterval,
      'healthCheckTimeout': healthCheckTimeout,
      'healthCheckType': healthCheckType,
      'healthCheckUri': healthCheckUri,
      'healthyThreshold': healthyThreshold,
      'idleTimeout': idleTimeout,
      'masterSlaveServerGroupId': masterSlaveServerGroupId,
      'persistenceTimeout': persistenceTimeout,
      'protocol': protocol,
      'proxyProtocolV2Enabled': proxyProtocolV2Enabled,
      'requestTimeout': requestTimeout,
      'scheduler': scheduler,
      'securityStatus': securityStatus,
      'serverCertificateId': serverCertificateId,
      'serverGroupId': serverGroupId,
      'sslCertificateId': sslCertificateId,
      'status': status,
      'stickySession': stickySession,
      'stickySessionType': stickySessionType,
      'tlsCipherPolicy': tlsCipherPolicy,
      'unhealthyThreshold': unhealthyThreshold,
      'xForwardedFor': xForwardedFor,
      'xForwardedForSlbId': xForwardedForSlbId,
      'xForwardedForSlbIp': xForwardedForSlbIp,
      'xForwardedForSlbProto': xForwardedForSlbProto,
    };
  }

  factory GetListenersSlbListener.fromMap(Map<String, dynamic> map) {
    return GetListenersSlbListener(
      backendPort: (map['backendPort'] as int).input(),
      bandwidth: (map['bandwidth'] as int).input(),
      caCertificateId: (map['caCertificateId'] as String).input(),
      cookie: (map['cookie'] as String).input(),
      cookieTimeout: (map['cookieTimeout'] as int).input(),
      description: (map['description'] as String).input(),
      enableHttp2: (map['enableHttp2'] as String).input(),
      establishedTimeout: (map['establishedTimeout'] as int).input(),
      frontendPort: (map['frontendPort'] as int).input(),
      gzip: (map['gzip'] as String).input(),
      healthCheck: (map['healthCheck'] as String).input(),
      healthCheckConnectPort: (map['healthCheckConnectPort'] as int).input(),
      healthCheckConnectTimeout: (map['healthCheckConnectTimeout'] as int).input(),
      healthCheckDomain: (map['healthCheckDomain'] as String).input(),
      healthCheckHttpCode: (map['healthCheckHttpCode'] as String).input(),
      healthCheckInterval: (map['healthCheckInterval'] as int).input(),
      healthCheckTimeout: (map['healthCheckTimeout'] as int).input(),
      healthCheckType: (map['healthCheckType'] as String).input(),
      healthCheckUri: (map['healthCheckUri'] as String).input(),
      healthyThreshold: (map['healthyThreshold'] as int).input(),
      idleTimeout: (map['idleTimeout'] as int).input(),
      masterSlaveServerGroupId: (map['masterSlaveServerGroupId'] as String).input(),
      persistenceTimeout: (map['persistenceTimeout'] as int).input(),
      protocol: (map['protocol'] as String).input(),
      proxyProtocolV2Enabled: (map['proxyProtocolV2Enabled'] as bool).input(),
      requestTimeout: (map['requestTimeout'] as int).input(),
      scheduler: (map['scheduler'] as String).input(),
      securityStatus: (map['securityStatus'] as String).input(),
      serverCertificateId: (map['serverCertificateId'] as String).input(),
      serverGroupId: (map['serverGroupId'] as String).input(),
      sslCertificateId: (map['sslCertificateId'] as String).input(),
      status: (map['status'] as String).input(),
      stickySession: (map['stickySession'] as String).input(),
      stickySessionType: (map['stickySessionType'] as String).input(),
      tlsCipherPolicy: (map['tlsCipherPolicy'] as String).input(),
      unhealthyThreshold: (map['unhealthyThreshold'] as int).input(),
      xForwardedFor: (map['xForwardedFor'] as String).input(),
      xForwardedForSlbId: (map['xForwardedForSlbId'] as String).input(),
      xForwardedForSlbIp: (map['xForwardedForSlbIp'] as String).input(),
      xForwardedForSlbProto: (map['xForwardedForSlbProto'] as String).input(),
    );
  }
}

