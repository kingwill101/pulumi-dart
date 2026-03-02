// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The SKU of a Managed Cluster.
class ManagedClusterSKUResponse {
  /// The name of a managed cluster SKU.
  final pulumi.Input<String>? name;
  /// If not specified, the default is 'Free'. See [AKS Pricing Tier](https://learn.microsoft.com/azure/aks/free-standard-pricing-tiers) for more details.
  final pulumi.Input<String>? tier;

  /// Creates a new [ManagedClusterSKUResponse].
  /// [name] The name of a managed cluster SKU.
  /// [tier] If not specified, the default is 'Free'. See [AKS Pricing Tier](https://learn.microsoft.com/azure/aks/free-standard-pricing-tiers) for more details.
  ManagedClusterSKUResponse({
    this.name,
    this.tier,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': ?name,
      'tier': ?tier,
    };
  }

  factory ManagedClusterSKUResponse.fromMap(Map<String, dynamic> map) {
    return ManagedClusterSKUResponse(
      name: map['name'] == null ? null : (map['name'] as String).input(),
      tier: map['tier'] == null ? null : (map['tier'] as String).input(),
    );
  }
}

