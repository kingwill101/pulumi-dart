// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Describes the public IP Sku. It can only be set with OrchestrationMode as
/// Flexible.
class PublicIPAddressSkuResponse {
  /// Specify public IP sku name
  final pulumi.Input<String>? name;
  /// Specify public IP sku tier
  final pulumi.Input<String>? tier;

  /// Creates a new [PublicIPAddressSkuResponse].
  /// [name] Specify public IP sku name
  /// [tier] Specify public IP sku tier
  PublicIPAddressSkuResponse({
    this.name,
    this.tier,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': ?name,
      'tier': ?tier,
    };
  }

  factory PublicIPAddressSkuResponse.fromMap(Map<String, dynamic> map) {
    return PublicIPAddressSkuResponse(
      name: map['name'] == null ? null : (map['name']! as String).input(),
      tier: map['tier'] == null ? null : (map['tier']! as String).input(),
    );
  }
}

