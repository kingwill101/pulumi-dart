// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Azure SKU definition.
class AzureSku {
  /// The number of instances of the cluster.
  final pulumi.Input<int>? capacity;
  /// SKU name.
  final pulumi.Input<String> name;
  /// SKU tier.
  final pulumi.Input<String> tier;

  /// Creates a new [AzureSku].
  /// [capacity] The number of instances of the cluster.
  /// [name] SKU name.
  /// [tier] SKU tier.
  AzureSku({
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

  factory AzureSku.fromMap(Map<String, dynamic> map) {
    return AzureSku(
      capacity: map['capacity'] == null ? null : (map['capacity']! as int).input(),
      name: (map['name'] as String).input(),
      tier: (map['tier'] as String).input(),
    );
  }
}

