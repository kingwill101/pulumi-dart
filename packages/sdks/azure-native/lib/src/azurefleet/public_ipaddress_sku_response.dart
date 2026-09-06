// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Describes the public IP Sku. It can only be set with OrchestrationMode as
/// Flexible.
class PublicIPAddressSkuResponse {
  /// Specify public IP sku name
  final pulumi.Input<String?>? name;
  /// Specify public IP sku tier
  final pulumi.Input<String?>? tier;

  /// Creates a new [PublicIPAddressSkuResponse].
  /// [name] Specify public IP sku name
  /// [tier] Specify public IP sku tier
  const PublicIPAddressSkuResponse({
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
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tier: (() { final guardedValue = map['tier']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
