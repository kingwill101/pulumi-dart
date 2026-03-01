// ignore_for_file: unused_element, unnecessary_cast

class ExpressGatewayServiceIngressPath {
  final String accessType;
  final String endpoint;

  /// Creates a new [ExpressGatewayServiceIngressPath].
  /// [accessType] Required.
  /// [endpoint] Required.
  ExpressGatewayServiceIngressPath({
    required this.accessType,
    required this.endpoint,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'accessType': accessType, 'endpoint': endpoint};
  }

  factory ExpressGatewayServiceIngressPath.fromMap(Map<String, dynamic> map) {
    return ExpressGatewayServiceIngressPath(
      accessType: map['accessType'] as String,
      endpoint: map['endpoint'] as String,
    );
  }
}
