// ignore_for_file: unused_element, unnecessary_cast

/// A backend rule provides configuration for an individual API element.
class BackendRuleResponse {
  /// The address of the API backend. The scheme is used to determine the backend protocol and security. The following schemes are accepted: SCHEME PROTOCOL SECURITY http:// HTTP None https:// HTTP TLS grpc:// gRPC None grpcs:// gRPC TLS It is recommended to explicitly include a scheme. Leaving out the scheme may cause constrasting behaviors across platforms. If the port is unspecified, the default is: - 80 for schemes without TLS - 443 for schemes with TLS For HTTP backends, use protocol to specify the protocol version.
  final String address;

  /// The number of seconds to wait for a response from a request. The default varies based on the request protocol and deployment environment.
  final double deadline;

  /// When disable_auth is true, a JWT ID token won't be generated and the original "Authorization" HTTP header will be preserved. If the header is used to carry the original token and is expected by the backend, this field must be set to true to preserve the header.
  final bool disableAuth;

  /// The JWT audience is used when generating a JWT ID token for the backend. This ID token will be added in the HTTP "authorization" header, and sent to the backend.
  final String jwtAudience;

  /// Deprecated, do not use.
  final double minDeadline;

  /// The number of seconds to wait for the completion of a long running operation. The default is no deadline.
  final double operationDeadline;

  /// The map between request protocol and the backend address.
  final Map<String, String> overridesByRequestProtocol;
  final String pathTranslation;

  /// The protocol used for sending a request to the backend. The supported values are "http/1.1" and "h2". The default value is inferred from the scheme in the address field: SCHEME PROTOCOL http:// http/1.1 https:// http/1.1 grpc:// h2 grpcs:// h2 For secure HTTP backends (https://) that support HTTP/2, set this field to "h2" for improved performance. Configuring this field to non-default values is only supported for secure HTTP backends. This field will be ignored for all other backends. See https://www.iana.org/assignments/tls-extensiontype-values/tls-extensiontype-values.xhtml#alpn-protocol-ids for more details on the supported values.
  final String protocol;

  /// Selects the methods to which this rule applies. Refer to selector for syntax details.
  final String selector;

  BackendRuleResponse({
    required this.address,
    required this.deadline,
    required this.disableAuth,
    required this.jwtAudience,
    required this.minDeadline,
    required this.operationDeadline,
    required this.overridesByRequestProtocol,
    required this.pathTranslation,
    required this.protocol,
    required this.selector,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['address'] = address;
    map['deadline'] = deadline;
    map['disableAuth'] = disableAuth;
    map['jwtAudience'] = jwtAudience;
    map['minDeadline'] = minDeadline;
    map['operationDeadline'] = operationDeadline;
    map['overridesByRequestProtocol'] = overridesByRequestProtocol;
    map['pathTranslation'] = pathTranslation;
    map['protocol'] = protocol;
    map['selector'] = selector;
    return map;
  }

  factory BackendRuleResponse.fromMap(Map<String, dynamic> map) {
    return BackendRuleResponse(
      address: map['address'] as String,
      deadline: map['deadline'] as double,
      disableAuth: map['disableAuth'] as bool,
      jwtAudience: map['jwtAudience'] as String,
      minDeadline: map['minDeadline'] as double,
      operationDeadline: map['operationDeadline'] as double,
      overridesByRequestProtocol:
          (map['overridesByRequestProtocol'] as Map).cast<String, String>(),
      pathTranslation: map['pathTranslation'] as String,
      protocol: map['protocol'] as String,
      selector: map['selector'] as String,
    );
  }
}
