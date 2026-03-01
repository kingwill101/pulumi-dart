// ignore_for_file: unused_element, unnecessary_cast


/// Describes the public IP Sku. It can only be set with OrchestrationMode as Flexible.
class PublicIPAddressSku {
  /// Specify public IP sku name
  final String? name;
  /// Specify public IP sku tier
  final String? tier;

  /// Creates a new [PublicIPAddressSku].
  /// [name] Specify public IP sku name
  /// [tier] Specify public IP sku tier
  PublicIPAddressSku({
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
      name: map['name'] == null ? null : map['name'] as String,
      tier: map['tier'] == null ? null : map['tier'] as String,
    );
  }
}

