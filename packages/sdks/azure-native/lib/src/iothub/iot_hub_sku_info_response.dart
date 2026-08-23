// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Information about the SKU of the IoT hub.
class IotHubSkuInfoResponse {
  /// The number of provisioned IoT Hub units. See: https://docs.microsoft.com/azure/azure-subscription-service-limits#iot-hub-limits.
  final pulumi.Input<double>? capacity;
  /// The name of the SKU.
  final pulumi.Input<String> name;
  /// The billing tier for the IoT hub.
  final pulumi.Input<String> tier;

  /// Creates a new [IotHubSkuInfoResponse].
  /// [capacity] The number of provisioned IoT Hub units. See: https://docs.microsoft.com/azure/azure-subscription-service-limits#iot-hub-limits.
  /// [name] The name of the SKU.
  /// [tier] The billing tier for the IoT hub.
  const IotHubSkuInfoResponse({
    this.capacity,
    required this.name,
    required this.tier,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'capacity': ?capacity,
      'name': name,
      'tier': tier,
    };
  }

  factory IotHubSkuInfoResponse.fromMap(Map<String, dynamic> map) {
    return IotHubSkuInfoResponse(
      capacity: (() { final guardedValue = map['capacity']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as double); })(),
      name: pulumi.Input.fromValue(map['name'] as String),
      tier: pulumi.Input.fromValue(map['tier'] as String),
    );
  }
}
