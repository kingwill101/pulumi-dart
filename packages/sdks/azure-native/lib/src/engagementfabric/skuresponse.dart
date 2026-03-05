// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The EngagementFabric SKU
class SKUResponse {
  /// The name of the SKU
  final pulumi.Input<String> name;
  /// The price tier of the SKU
  final pulumi.Input<String>? tier;

  /// Creates a new [SKUResponse].
  /// [name] The name of the SKU
  /// [tier] The price tier of the SKU
  SKUResponse({
    required this.name,
    this.tier,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'tier': ?tier,
    };
  }

  factory SKUResponse.fromMap(Map<String, dynamic> map) {
    return SKUResponse(
      name: pulumi.Input.fromValue(map['name'] as String),
      tier: (() { final guardedValue = map['tier']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

