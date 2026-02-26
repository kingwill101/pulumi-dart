// ignore_for_file: unused_element, unnecessary_cast

class SecurityGatewayServiceDiscoveryApiGatewayResourceOverride {
  /// Contains uri path fragment where HTTP request is sent.
  final String? path;

  SecurityGatewayServiceDiscoveryApiGatewayResourceOverride({
    this.path,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final pathValue = path;
    if (pathValue != null) {
      map['path'] = pathValue;
    }
    return map;
  }

  factory SecurityGatewayServiceDiscoveryApiGatewayResourceOverride.fromMap(
      Map<String, dynamic> map) {
    return SecurityGatewayServiceDiscoveryApiGatewayResourceOverride(
      path: map['path'] == null ? null : map['path'] as String,
    );
  }
}
