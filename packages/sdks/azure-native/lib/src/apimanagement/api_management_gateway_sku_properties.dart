// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// API Management gateway resource SKU properties.
class ApiManagementGatewaySkuProperties {
  /// Capacity of the SKU (number of deployed units of the SKU)
  final pulumi.Input<int?>? capacity;
  /// Name of the Sku.
  final pulumi.Input<dynamic> name;

  /// Creates a new [ApiManagementGatewaySkuProperties].
  /// [capacity] Capacity of the SKU (number of deployed units of the SKU)
  /// [name] Name of the Sku.
  const ApiManagementGatewaySkuProperties({
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
      capacity: (() { final guardedValue = map['capacity']; if (guardedValue == null) return null; return pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue)); })(),
      name: pulumi.Input.fromValue(map['name']),
    );
  }
}
