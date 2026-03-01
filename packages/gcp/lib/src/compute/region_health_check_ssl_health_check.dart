// ignore_for_file: unused_element, unnecessary_cast

class RegionHealthCheckSslHealthCheck {
  /// The TCP port number for the HTTP2 health check request.
  /// The default value is 443.
  final int? port;

  /// Port name as defined in InstanceGroup#NamedPort#name. If both port and
  /// port_name are defined, port takes precedence.
  final String? portName;

  /// Specifies how port is selected for health checking, can be one of the
  /// following values:
  /// * `USE_FIXED_PORT`: The port number in `port` is used for health checking.
  /// * `USE_NAMED_PORT`: The `portName` is used for health checking.
  /// * `USE_SERVING_PORT`: For NetworkEndpointGroup, the port specified for each
  /// network endpoint is used for health checking. For other backends, the
  /// port or named port specified in the Backend Service is used for health
  /// checking.
  /// If not specified, HTTP2 health check follows behavior specified in `port` and
  /// `portName` fields.
  /// Possible values are: `USE_FIXED_PORT`, `USE_NAMED_PORT`, `USE_SERVING_PORT`.
  final String? portSpecification;

  /// Specifies the type of proxy header to append before sending data to the
  /// backend.
  /// Default value is `NONE`.
  /// Possible values are: `NONE`, `PROXY_V1`.
  final String? proxyHeader;

  /// The application data to send once the SSL connection has been
  /// established (default value is empty). If both request and response are
  /// empty, the connection establishment alone will indicate health. The request
  /// data can only be ASCII.
  final String? request;

  /// The bytes to match against the beginning of the response data. If left empty
  /// (the default value), any response will indicate health. The response data
  /// can only be ASCII.
  final String? response;

  /// Creates a new [RegionHealthCheckSslHealthCheck].
  /// [port] The TCP port number for the HTTP2 health check request.
  /// [portName] Port name as defined in InstanceGroup#NamedPort#name. If both port and
  /// [portSpecification] Specifies how port is selected for health checking, can be one of the
  /// [proxyHeader] Specifies the type of proxy header to append before sending data to the
  /// [request] The application data to send once the SSL connection has been
  /// [response] The bytes to match against the beginning of the response data. If left empty
  RegionHealthCheckSslHealthCheck({
    this.port,
    this.portName,
    this.portSpecification,
    this.proxyHeader,
    this.request,
    this.response,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'port': ?port,
      'portName': ?portName,
      'portSpecification': ?portSpecification,
      'proxyHeader': ?proxyHeader,
      'request': ?request,
      'response': ?response,
    };
  }

  factory RegionHealthCheckSslHealthCheck.fromMap(Map<String, dynamic> map) {
    return RegionHealthCheckSslHealthCheck(
      port: map['port'] == null ? null : map['port'] as int,
      portName: map['portName'] == null ? null : map['portName'] as String,
      portSpecification: map['portSpecification'] == null
          ? null
          : map['portSpecification'] as String,
      proxyHeader: map['proxyHeader'] == null
          ? null
          : map['proxyHeader'] as String,
      request: map['request'] == null ? null : map['request'] as String,
      response: map['response'] == null ? null : map['response'] as String,
    );
  }
}
