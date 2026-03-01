// ignore_for_file: unused_element, unnecessary_cast


/// Information about the SKU of the IoT hub.
class IotHubSkuInfoResponse {
  /// The number of provisioned IoT Hub units. See: https://docs.microsoft.com/azure/azure-subscription-service-limits#iot-hub-limits.
  final double? capacity;
  /// The name of the SKU.
  final String name;
  /// The billing tier for the IoT hub.
  final String tier;

  /// Creates a new [IotHubSkuInfoResponse].
  /// [capacity] The number of provisioned IoT Hub units. See: https://docs.microsoft.com/azure/azure-subscription-service-limits#iot-hub-limits.
  /// [name] The name of the SKU.
  /// [tier] The billing tier for the IoT hub.
  IotHubSkuInfoResponse({
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
      capacity: map['capacity'] == null ? null : map['capacity'] as double,
      name: map['name'] as String,
      tier: map['tier'] as String,
    );
  }
}

