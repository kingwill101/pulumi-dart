// ignore_for_file: unused_element, unnecessary_cast

class GetSecurityGatewayServiceDiscoveryApiGatewayResourceOverride {
  /// Contains uri path fragment where HTTP request is sent.
  final String path;

  GetSecurityGatewayServiceDiscoveryApiGatewayResourceOverride({
    required this.path,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['path'] = path;
    return map;
  }

  factory GetSecurityGatewayServiceDiscoveryApiGatewayResourceOverride.fromMap(
      Map<String, dynamic> map) {
    return GetSecurityGatewayServiceDiscoveryApiGatewayResourceOverride(
      path: map['path'] as String,
    );
  }
}
