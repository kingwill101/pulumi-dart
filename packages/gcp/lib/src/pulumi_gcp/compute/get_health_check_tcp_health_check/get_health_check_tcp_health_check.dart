// ignore_for_file: unused_element, unnecessary_cast

class GetHealthCheckTcpHealthCheck {
  /// The TCP port number for the TCP health check request.
  /// The default value is 443.
  final int port;

  /// Port name as defined in InstanceGroup#NamedPort#name. If both port and
  /// port_name are defined, port takes precedence.
  final String portName;

  /// Specifies how port is selected for health checking, can be one of the
  /// following values:
  ///
  /// * 'USE_FIXED_PORT': The port number in 'port' is used for health checking.
  ///
  /// * 'USE_NAMED_PORT': The 'portName' is used for health checking.
  ///
  /// * 'USE_SERVING_PORT': For NetworkEndpointGroup, the port specified for each
  /// network endpoint is used for health checking. For other backends, the
  /// port or named port specified in the Backend Service is used for health
  /// checking.
  ///
  /// If not specified, TCP health check follows behavior specified in 'port' and
  /// 'portName' fields. Possible values: ["USE_FIXED_PORT", "USE_NAMED_PORT", "USE_SERVING_PORT"]
  final String portSpecification;

  /// Specifies the type of proxy header to append before sending data to the
  /// backend. Default value: "NONE" Possible values: ["NONE", "PROXY_V1"]
  final String proxyHeader;

  /// The application data to send once the TCP connection has been
  /// established (default value is empty). If both request and response are
  /// empty, the connection establishment alone will indicate health. The request
  /// data can only be ASCII.
  final String request;

  /// The bytes to match against the beginning of the response data. If left empty
  /// (the default value), any response will indicate health. The response data
  /// can only be ASCII.
  final String response;

  GetHealthCheckTcpHealthCheck({
    required this.port,
    required this.portName,
    required this.portSpecification,
    required this.proxyHeader,
    required this.request,
    required this.response,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['port'] = port;
    map['portName'] = portName;
    map['portSpecification'] = portSpecification;
    map['proxyHeader'] = proxyHeader;
    map['request'] = request;
    map['response'] = response;
    return map;
  }

  factory GetHealthCheckTcpHealthCheck.fromMap(Map<String, dynamic> map) {
    return GetHealthCheckTcpHealthCheck(
      port: map['port'] as int,
      portName: map['portName'] as String,
      portSpecification: map['portSpecification'] as String,
      proxyHeader: map['proxyHeader'] as String,
      request: map['request'] as String,
      response: map['response'] as String,
    );
  }
}
