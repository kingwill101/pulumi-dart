// ignore_for_file: unused_element, unnecessary_cast


/// The SKU of a Managed Cluster.
class ManagedClusterSKU {
  /// The name of a managed cluster SKU.
  final String? name;
  /// The tier of a managed cluster SKU. If not specified, the default is 'Free'. See [AKS Pricing Tier](https://learn.microsoft.com/azure/aks/free-standard-pricing-tiers) for more details.
  final String? tier;

  /// Creates a new [ManagedClusterSKU].
  /// [name] The name of a managed cluster SKU.
  /// [tier] The tier of a managed cluster SKU. If not specified, the default is 'Free'. See [AKS Pricing Tier](https://learn.microsoft.com/azure/aks/free-standard-pricing-tiers) for more details.
  ManagedClusterSKU({
    this.name,
    this.tier,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': ?name,
      'tier': ?tier,
    };
  }

  factory ManagedClusterSKU.fromMap(Map<String, dynamic> map) {
    return ManagedClusterSKU(
      name: map['name'] == null ? null : map['name'] as String,
      tier: map['tier'] == null ? null : map['tier'] as String,
    );
  }
}

