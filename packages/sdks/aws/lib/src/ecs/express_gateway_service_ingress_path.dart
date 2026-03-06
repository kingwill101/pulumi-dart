// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ExpressGatewayServiceIngressPath {
  final pulumi.Input<String> accessType;
  final pulumi.Input<String> endpoint;

  /// Creates a new [ExpressGatewayServiceIngressPath].
  /// [accessType] Required.
  /// [endpoint] Required.
  const ExpressGatewayServiceIngressPath({
    required this.accessType,
    required this.endpoint,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accessType': accessType,
      'endpoint': endpoint,
    };
  }

  factory ExpressGatewayServiceIngressPath.fromMap(Map<String, dynamic> map) {
    return ExpressGatewayServiceIngressPath(
      accessType: pulumi.Input.fromValue(map['accessType'] as String),
      endpoint: pulumi.Input.fromValue(map['endpoint'] as String),
    );
  }
}

