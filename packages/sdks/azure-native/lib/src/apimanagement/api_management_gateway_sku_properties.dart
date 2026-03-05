// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// API Management gateway resource SKU properties.
class ApiManagementGatewaySkuProperties {
  /// Capacity of the SKU (number of deployed units of the SKU)
  final pulumi.Input<int>? capacity;
  /// Name of the Sku.
  final pulumi.Input<String> name;

  /// Creates a new [ApiManagementGatewaySkuProperties].
  /// [capacity] Capacity of the SKU (number of deployed units of the SKU)
  /// [name] Name of the Sku.
  ApiManagementGatewaySkuProperties({
    this.capacity,
    required this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'capacity': ?capacity,
      'name': name,
    };
  }

  factory ApiManagementGatewaySkuProperties.fromMap(Map<String, dynamic> map) {
    return ApiManagementGatewaySkuProperties(
      capacity: (() { final guardedValue = map['capacity']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      name: pulumi.Input.fromValue(map['name'] as String),
    );
  }
}

