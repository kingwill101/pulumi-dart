// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Collection of instances belong to the Spring Cloud Gateway
class GatewayInstanceResponse {
  /// Name of the Spring Cloud Gateway instance
  final pulumi.Input<String> name;
  /// Status of the Spring Cloud Gateway instance
  final pulumi.Input<String> status;

  /// Creates a new [GatewayInstanceResponse].
  /// [name] Name of the Spring Cloud Gateway instance
  /// [status] Status of the Spring Cloud Gateway instance
  const GatewayInstanceResponse({
    required this.name,
    required this.status,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'status': status,
    };
  }

  factory GatewayInstanceResponse.fromMap(Map<String, dynamic> map) {
    return GatewayInstanceResponse(
      name: pulumi.Input.fromValue(map['name'] as String),
      status: pulumi.Input.fromValue(map['status'] as String),
    );
  }
}
