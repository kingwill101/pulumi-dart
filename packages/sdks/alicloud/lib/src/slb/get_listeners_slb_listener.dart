// ignore_for_file: unused_element, unnecessary_cast


class GetListenersSlbListener {
  /// Port opened on the backend server to receive requests.
  final int backendPort;
  /// Peak bandwidth. If the value is set to -1, the listener is not limited by bandwidth.
  final int bandwidth;
  /// ID of the CA certificate (only required when two-way authentication is used). Only available when the protocol is `https`.
  final String caCertificateId;
  /// Cookie configured by the backend server. Only available when the sticky_session_type is `server`.
  final String cookie;
  /// Cookie timeout in seconds. Only available when the sticky_session_type is `insert`.
  final int cookieTimeout;
  /// The description of slb listener.
  final String description;
  /// Whether to enable https listener support http2 or not. Valid values are `on` and `off`. Default to `on`.
  final String enableHttp2;
  /// Connection timeout in seconds for the Layer 4 TCP listener. Only available when the protocol is `tcp`.
  final int establishedTimeout;
  /// Filter listeners by the specified frontend port.
  final int frontendPort;
  /// Indicate whether Gzip compression is enabled or not. Possible values are `on` and `off`. Only available when the protocol is `http` or `https`.
  final String gzip;
  /// Indicate whether health check is enabled of not. Possible values are `on` and `off`.
  final String healthCheck;
  /// Port used for health check.
  final int healthCheckConnectPort;
  /// Amount of time in seconds to wait for the response for a health check.
  final int healthCheckConnectTimeout;
  /// Domain name used for health check. The SLB sends HTTP head requests to the backend server, the domain is useful when the backend server verifies the host field in the requests. Only available when the protocol is `http`, `https` or `tcp` (in this case health_check_type must be `http`).
  final String healthCheckDomain;
  /// HTTP status codes indicating that the health check is normal. It can contain several comma-separated values such as "http_2xx,http_3xx". Only available when the protocol is `http`, `https` or `tcp` (in this case health_check_type must be `http`).
  final String healthCheckHttpCode;
  /// Time interval between two consecutive health checks.
  final int healthCheckInterval;
  /// Amount of time in seconds to wait for the response from a health check. If an ECS instance sends no response within the specified timeout period, the health check fails. Only available when the protocol is `http` or `https`.
  final int healthCheckTimeout;
  /// Health check method. Possible values are `tcp` and `http`. Only available when the protocol is `tcp`.
  final String healthCheckType;
  /// URI used for health check. Only available when the protocol is `http`, `https` or `tcp` (in this case health_check_type must be `http`).
  final String healthCheckUri;
  /// Number of consecutive successes of health check performed on the same ECS instance (from failure to success).
  final int healthyThreshold;
  /// Timeout of http or https listener established connection idle timeout. Valid value range: [1-60] in seconds. Default to 15.
  final int idleTimeout;
  /// ID of the active/standby server group.
  final String masterSlaveServerGroupId;
  /// Timeout value of the TCP connection in seconds. If the value is 0, the session persistence function is disabled. Only available when the protocol is `tcp`.
  final int persistenceTimeout;
  /// Filter listeners by the specified protocol. Valid values: `http`, `https`, `tcp` and `udp`.
  final String protocol;
  /// Whether to support carrying the client source address to the backend server through the Proxy Protocol. Valid values are `true` and `false`. Default to `false`.
  final bool proxyProtocolV2Enabled;
  /// Timeout of http or https listener request (which does not get response from backend) timeout. Valid value range: [1-180] in seconds. Default to 60.
  final int requestTimeout;
  /// Algorithm used to distribute traffic. Possible values: `wrr` (weighted round robin), `wlc` (weighted least connection) and `rr` (round robin).
  final String scheduler;
  /// Security status. Only available when the protocol is `https`.
  final String securityStatus;
  final String serverCertificateId;
  /// ID of the linked VServer group.
  final String serverGroupId;
  /// ID of the server certificate. Only available when the protocol is `https`.
  final String sslCertificateId;
  /// Listener status.
  final String status;
  /// Indicate whether session persistence is enabled or not. If enabled, all session requests from the same client are sent to the same backend server. Possible values are `on` and `off`. Only available when the protocol is `http` or `https`.
  final String stickySession;
  /// Method used to handle the cookie. Possible values are `insert` (cookie added to the response) and `server` (cookie set by the backend server). Only available when the protocol is `http` or `https` and sticky_session is `on`.
  final String stickySessionType;
  /// Https listener TLS cipher policy. Valid values are `tls_cipher_policy_1_0`, `tls_cipher_policy_1_1`, `tls_cipher_policy_1_2`, `tls_cipher_policy_1_2_strict`. Default to `tls_cipher_policy_1_0`.
  final String tlsCipherPolicy;
  /// Number of consecutive failures of health check performed on the same ECS instance (from success to failure).
  final int unhealthyThreshold;
  /// Indicate whether the HTTP header field "X-Forwarded-For" is added or not; it allows the backend server to know about the user's IP address. Possible values are `on` and `off`. Only available when the protocol is `http` or `https`.
  final String xForwardedFor;
  /// Indicate whether the HTTP header field "X-Forwarded-For_SLBID" is added or not; it allows the backend server to know about the SLB ID. Possible values are `on` and `off`. Only available when the protocol is `http` or `https`.
  final String xForwardedForSlbId;
  /// Indicate whether the HTTP header field "X-Forwarded-For_SLBIP" is added or not; it allows the backend server to know about the SLB IP address. Possible values are `on` and `off`. Only available when the protocol is `http` or `https`.
  final String xForwardedForSlbIp;
  /// Indicate whether the HTTP header field "X-Forwarded-For_proto" is added or not; it allows the backend server to know about the user's protocol. Possible values are `on` and `off`. Only available when the protocol is `http` or `https`.
  final String xForwardedForSlbProto;

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
      backendPort: map['backendPort'] as int,
      bandwidth: map['bandwidth'] as int,
      caCertificateId: map['caCertificateId'] as String,
      cookie: map['cookie'] as String,
      cookieTimeout: map['cookieTimeout'] as int,
      description: map['description'] as String,
      enableHttp2: map['enableHttp2'] as String,
      establishedTimeout: map['establishedTimeout'] as int,
      frontendPort: map['frontendPort'] as int,
      gzip: map['gzip'] as String,
      healthCheck: map['healthCheck'] as String,
      healthCheckConnectPort: map['healthCheckConnectPort'] as int,
      healthCheckConnectTimeout: map['healthCheckConnectTimeout'] as int,
      healthCheckDomain: map['healthCheckDomain'] as String,
      healthCheckHttpCode: map['healthCheckHttpCode'] as String,
      healthCheckInterval: map['healthCheckInterval'] as int,
      healthCheckTimeout: map['healthCheckTimeout'] as int,
      healthCheckType: map['healthCheckType'] as String,
      healthCheckUri: map['healthCheckUri'] as String,
      healthyThreshold: map['healthyThreshold'] as int,
      idleTimeout: map['idleTimeout'] as int,
      masterSlaveServerGroupId: map['masterSlaveServerGroupId'] as String,
      persistenceTimeout: map['persistenceTimeout'] as int,
      protocol: map['protocol'] as String,
      proxyProtocolV2Enabled: map['proxyProtocolV2Enabled'] as bool,
      requestTimeout: map['requestTimeout'] as int,
      scheduler: map['scheduler'] as String,
      securityStatus: map['securityStatus'] as String,
      serverCertificateId: map['serverCertificateId'] as String,
      serverGroupId: map['serverGroupId'] as String,
      sslCertificateId: map['sslCertificateId'] as String,
      status: map['status'] as String,
      stickySession: map['stickySession'] as String,
      stickySessionType: map['stickySessionType'] as String,
      tlsCipherPolicy: map['tlsCipherPolicy'] as String,
      unhealthyThreshold: map['unhealthyThreshold'] as int,
      xForwardedFor: map['xForwardedFor'] as String,
      xForwardedForSlbId: map['xForwardedForSlbId'] as String,
      xForwardedForSlbIp: map['xForwardedForSlbIp'] as String,
      xForwardedForSlbProto: map['xForwardedForSlbProto'] as String,
    );
  }
}

