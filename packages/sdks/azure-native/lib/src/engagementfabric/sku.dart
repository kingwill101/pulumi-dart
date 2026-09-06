// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The EngagementFabric SKU
class SKU {
  /// The name of the SKU
  final pulumi.Input<String> name;
  /// The price tier of the SKU
  final pulumi.Input<String?>? tier;

  /// Creates a new [SKU].
  /// [name] The name of the SKU
  /// [tier] The price tier of the SKU
  const SKU({
    required this.name,
    this.tier,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'tier': ?tier,
    };
  }

  factory SKU.fromMap(Map<String, dynamic> map) {
    return SKU(
      name: pulumi.Input.fromValue(map['name'] as String),
      tier: (() { final guardedValue = map['tier']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
