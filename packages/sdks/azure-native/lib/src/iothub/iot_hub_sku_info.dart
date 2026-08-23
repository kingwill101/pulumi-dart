// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Information about the SKU of the IoT hub.
class IotHubSkuInfo {
  /// The number of provisioned IoT Hub units. See: https://docs.microsoft.com/azure/azure-subscription-service-limits#iot-hub-limits.
  final pulumi.Input<double>? capacity;
  /// The name of the SKU.
  final pulumi.Input<String> name;

  /// Creates a new [IotHubSkuInfo].
  /// [capacity] The number of provisioned IoT Hub units. See: https://docs.microsoft.com/azure/azure-subscription-service-limits#iot-hub-limits.
  /// [name] The name of the SKU.
  const IotHubSkuInfo({
    this.capacity,
    required this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'capacity': ?capacity,
      'name': name,
    };
  }

  factory IotHubSkuInfo.fromMap(Map<String, dynamic> map) {
    return IotHubSkuInfo(
      capacity: (() { final guardedValue = map['capacity']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as double); })(),
      name: pulumi.Input.fromValue(map['name'] as String),
    );
  }
}
