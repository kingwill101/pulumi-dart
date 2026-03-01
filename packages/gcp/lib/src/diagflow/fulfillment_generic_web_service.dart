// ignore_for_file: unused_element, unnecessary_cast


class FulfillmentGenericWebService {
  /// The password for HTTP Basic authentication.
  final String? password;
  /// The HTTP request headers to send together with fulfillment requests.
  final Map<String, String>? requestHeaders;
  /// The fulfillment URI for receiving POST requests. It must use https protocol.
  final String uri;
  /// The user name for HTTP Basic authentication.
  final String? username;

  /// Creates a new [FulfillmentGenericWebService].
  /// [password] The password for HTTP Basic authentication.
  /// [requestHeaders] The HTTP request headers to send together with fulfillment requests.
  /// [uri] The fulfillment URI for receiving POST requests. It must use https protocol.
  /// [username] The user name for HTTP Basic authentication.
  FulfillmentGenericWebService({
    this.password,
    this.requestHeaders,
    required this.uri,
    this.username,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'password': ?password,
      'requestHeaders': ?requestHeaders,
      'uri': uri,
      'username': ?username,
    };
  }

  factory FulfillmentGenericWebService.fromMap(Map<String, dynamic> map) {
    return FulfillmentGenericWebService(
      password: map['password'] == null ? null : map['password'] as String,
      requestHeaders: map['requestHeaders'] == null ? null : (map['requestHeaders'] as Map).cast<String, String>(),
      uri: map['uri'] as String,
      username: map['username'] == null ? null : map['username'] as String,
    );
  }
}

