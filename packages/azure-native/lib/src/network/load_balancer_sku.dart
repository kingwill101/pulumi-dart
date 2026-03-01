// ignore_for_file: unused_element, unnecessary_cast


/// SKU of a load balancer.
class LoadBalancerSku {
  /// Name of a load balancer SKU.
  final String? name;
  /// Tier of a load balancer SKU.
  final String? tier;

  /// Creates a new [LoadBalancerSku].
  /// [name] Name of a load balancer SKU.
  /// [tier] Tier of a load balancer SKU.
  LoadBalancerSku({
    this.name,
    this.tier,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': ?name,
      'tier': ?tier,
    };
  }

  factory LoadBalancerSku.fromMap(Map<String, dynamic> map) {
    return LoadBalancerSku(
      name: map['name'] == null ? null : map['name'] as String,
      tier: map['tier'] == null ? null : map['tier'] as String,
    );
  }
}

