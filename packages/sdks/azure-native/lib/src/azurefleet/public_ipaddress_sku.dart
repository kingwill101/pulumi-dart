// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Describes the public IP Sku. It can only be set with OrchestrationMode as
/// Flexible.
class PublicIPAddressSku {
  /// Specify public IP sku name
  final pulumi.Input<dynamic>? name;
  /// Specify public IP sku tier
  final pulumi.Input<dynamic>? tier;

  /// Creates a new [PublicIPAddressSku].
  /// [name] Specify public IP sku name
  /// [tier] Specify public IP sku tier
  const PublicIPAddressSku({
    this.name,
    this.tier,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': ?name,
      'tier': ?tier,
    };
  }

  factory PublicIPAddressSku.fromMap(Map<String, dynamic> map) {
    return PublicIPAddressSku(
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
      tier: (() { final guardedValue = map['tier']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
    );
  }
}
