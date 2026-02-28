// ignore_for_file: unused_element, unnecessary_cast


class SecurityGatewayServiceDiscoveryApiGatewayResourceOverride {
  /// Contains uri path fragment where HTTP request is sent.
  final String? path;

  /// Creates a new [SecurityGatewayServiceDiscoveryApiGatewayResourceOverride].
  /// [path] Contains uri path fragment where HTTP request is sent.
  SecurityGatewayServiceDiscoveryApiGatewayResourceOverride({
    this.path,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'path': ?path,
    };
  }

  factory SecurityGatewayServiceDiscoveryApiGatewayResourceOverride.fromMap(Map<String, dynamic> map) {
    return SecurityGatewayServiceDiscoveryApiGatewayResourceOverride(
      path: map['path'] == null ? null : map['path'] as String,
    );
  }
}

