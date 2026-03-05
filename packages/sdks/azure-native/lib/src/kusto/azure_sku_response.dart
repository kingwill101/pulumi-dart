// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Azure SKU definition.
class AzureSkuResponse {
  /// The number of instances of the cluster.
  final pulumi.Input<int>? capacity;
  /// SKU name.
  final pulumi.Input<String> name;
  /// SKU tier.
  final pulumi.Input<String> tier;

  /// Creates a new [AzureSkuResponse].
  /// [capacity] The number of instances of the cluster.
  /// [name] SKU name.
  /// [tier] SKU tier.
  AzureSkuResponse({
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

  factory AzureSkuResponse.fromMap(Map<String, dynamic> map) {
    return AzureSkuResponse(
      capacity: (() { final guardedValue = map['capacity']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      name: pulumi.Input.fromValue(map['name'] as String),
      tier: pulumi.Input.fromValue(map['tier'] as String),
    );
  }
}

