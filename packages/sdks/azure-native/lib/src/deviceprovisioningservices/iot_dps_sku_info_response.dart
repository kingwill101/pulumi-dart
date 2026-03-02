// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// List of possible provisioning service SKUs.
class IotDpsSkuInfoResponse {
  /// The number of units to provision
  final pulumi.Input<double>? capacity;
  /// Sku name.
  final pulumi.Input<String>? name;
  /// Pricing tier name of the provisioning service.
  final pulumi.Input<String> tier;

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
      capacity: map['capacity'] == null ? null : (map['capacity'] as double).input(),
      name: map['name'] == null ? null : (map['name'] as String).input(),
      tier: (map['tier'] as String).input(),
    );
  }
}

