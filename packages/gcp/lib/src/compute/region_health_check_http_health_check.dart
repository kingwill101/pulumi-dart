// ignore_for_file: unused_element, unnecessary_cast


class RegionHealthCheckHttpHealthCheck {
  /// The value of the host header in the HTTP health check request.
  /// If left empty (default value), the public IP on behalf of which this health
  /// check is performed will be used.
  final String? host;
  /// The TCP port number for the HTTP health check request.
  /// The default value is 80.
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
  /// If not specified, HTTP health check follows behavior specified in `port` and
  /// `portName` fields.
  /// Possible values are: `USE_FIXED_PORT`, `USE_NAMED_PORT`, `USE_SERVING_PORT`.
  final String? portSpecification;
  /// Specifies the type of proxy header to append before sending data to the
  /// backend.
  /// Default value is `NONE`.
  /// Possible values are: `NONE`, `PROXY_V1`.
  final String? proxyHeader;
  /// The request path of the HTTP health check request.
  /// The default value is /.
  final String? requestPath;
  /// The bytes to match against the beginning of the response data. If left empty
  /// (the default value), any response will indicate health. The response data
  /// can only be ASCII.
  final String? response;

  /// Creates a new [RegionHealthCheckHttpHealthCheck].
  /// [host] The value of the host header in the HTTP health check request.
  /// [port] The TCP port number for the HTTP health check request.
  /// [portName] Port name as defined in InstanceGroup#NamedPort#name. If both port and
  /// [portSpecification] Specifies how port is selected for health checking, can be one of the
  /// [proxyHeader] Specifies the type of proxy header to append before sending data to the
  /// [requestPath] The request path of the HTTP health check request.
  /// [response] The bytes to match against the beginning of the response data. If left empty
  RegionHealthCheckHttpHealthCheck({
    this.host,
    this.port,
    this.portName,
    this.portSpecification,
    this.proxyHeader,
    this.requestPath,
    this.response,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'host': ?host,
      'port': ?port,
      'portName': ?portName,
      'portSpecification': ?portSpecification,
      'proxyHeader': ?proxyHeader,
      'requestPath': ?requestPath,
      'response': ?response,
    };
  }

  factory RegionHealthCheckHttpHealthCheck.fromMap(Map<String, dynamic> map) {
    return RegionHealthCheckHttpHealthCheck(
      host: map['host'] == null ? null : map['host'] as String,
      port: map['port'] == null ? null : map['port'] as int,
      portName: map['portName'] == null ? null : map['portName'] as String,
      portSpecification: map['portSpecification'] == null ? null : map['portSpecification'] as String,
      proxyHeader: map['proxyHeader'] == null ? null : map['proxyHeader'] as String,
      requestPath: map['requestPath'] == null ? null : map['requestPath'] as String,
      response: map['response'] == null ? null : map['response'] as String,
    );
  }
}

