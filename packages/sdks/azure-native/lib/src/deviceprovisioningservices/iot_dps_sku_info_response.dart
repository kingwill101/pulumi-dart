// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// List of possible provisioning service SKUs.
class IotDpsSkuInfoResponse {
  /// The number of units to provision
  final pulumi.Input<double?>? capacity;
  /// Sku name.
  final pulumi.Input<String?>? name;
  /// Pricing tier name of the provisioning service.
  final pulumi.Input<String> tier;

  /// Creates a new [IotDpsSkuInfoResponse].
  /// [capacity] The number of units to provision
  /// [name] Sku name.
  /// [tier] Pricing tier name of the provisioning service.
  const IotDpsSkuInfoResponse({
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
      capacity: (() { final guardedValue = map['capacity']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toDouble()); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tier: pulumi.Input.fromValue(map['tier'] as String),
    );
  }
}
