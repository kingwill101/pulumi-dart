// ignore_for_file: unused_element, unnecessary_cast


/// List of possible provisioning service SKUs.
class IotDpsSkuInfoResponse {
  /// The number of units to provision
  final double? capacity;
  /// Sku name.
  final String? name;
  /// Pricing tier name of the provisioning service.
  final String tier;

  /// Creates a new [IotDpsSkuInfoResponse].
  /// [capacity] The number of units to provision
  /// [name] Sku name.
  /// [tier] Pricing tier name of the provisioning service.
  IotDpsSkuInfoResponse({
    this.capacity,
    this.name,
    required this.tier,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'capacity': ?capacity,
      'name': ?name,
      'tier': tier,
    };
  }

  factory IotDpsSkuInfoResponse.fromMap(Map<String, dynamic> map) {
    return IotDpsSkuInfoResponse(
      capacity: map['capacity'] == null ? null : map['capacity'] as double,
      name: map['name'] == null ? null : map['name'] as String,
      tier: map['tier'] as String,
    );
  }
}

