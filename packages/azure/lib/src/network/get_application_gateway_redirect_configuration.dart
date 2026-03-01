// ignore_for_file: unused_element, unnecessary_cast


class GetApplicationGatewayRedirectConfiguration {
  /// The ID of the Rewrite Rule Set
  final String id;
  /// Whether the path is included in the redirected URL.
  final bool includePath;
  /// Whether to include the query string in the redirected URL.
  final bool includeQueryString;
  /// The name of this Application Gateway.
  final String name;
  /// The type of redirect.
  final String redirectType;
  final String targetListenerId;
  /// The name of the listener to redirect to.
  final String targetListenerName;
  /// The URL to redirect the request to.
  final String targetUrl;

  /// Creates a new [GetApplicationGatewayRedirectConfiguration].
  /// [id] The ID of the Rewrite Rule Set
  /// [includePath] Whether the path is included in the redirected URL.
  /// [includeQueryString] Whether to include the query string in the redirected URL.
  /// [name] The name of this Application Gateway.
  /// [redirectType] The type of redirect.
  /// [targetListenerId] Required.
  /// [targetListenerName] The name of the listener to redirect to.
  /// [targetUrl] The URL to redirect the request to.
  GetApplicationGatewayRedirectConfiguration({
    required this.id,
    required this.includePath,
    required this.includeQueryString,
    required this.name,
    required this.redirectType,
    required this.targetListenerId,
    required this.targetListenerName,
    required this.targetUrl,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'includePath': includePath,
      'includeQueryString': includeQueryString,
      'name': name,
      'redirectType': redirectType,
      'targetListenerId': targetListenerId,
      'targetListenerName': targetListenerName,
      'targetUrl': targetUrl,
    };
  }

  factory GetApplicationGatewayRedirectConfiguration.fromMap(Map<String, dynamic> map) {
    return GetApplicationGatewayRedirectConfiguration(
      id: map['id'] as String,
      includePath: map['includePath'] as bool,
      includeQueryString: map['includeQueryString'] as bool,
      name: map['name'] as String,
      redirectType: map['redirectType'] as String,
      targetListenerId: map['targetListenerId'] as String,
      targetListenerName: map['targetListenerName'] as String,
      targetUrl: map['targetUrl'] as String,
    );
  }
}

