// ignore_for_file: unused_element, unnecessary_cast


/// The cost analysis configuration for the cluster
class ManagedClusterCostAnalysis {
  /// Whether to enable cost analysis. The Managed Cluster sku.tier must be set to 'Standard' or 'Premium' to enable this feature. Enabling this will add Kubernetes Namespace and Deployment details to the Cost Analysis views in the Azure portal. If not specified, the default is false. For more information see aka.ms/aks/docs/cost-analysis.
  final bool? enabled;

  /// Creates a new [ManagedClusterCostAnalysis].
  /// [enabled] Whether to enable cost analysis. The Managed Cluster sku.tier must be set to 'Standard' or 'Premium' to enable this feature. Enabling this will add Kubernetes Namespace and Deployment details to the Cost Analysis views in the Azure portal. If not specified, the default is false. For more information see aka.ms/aks/docs/cost-analysis.
  ManagedClusterCostAnalysis({
    this.enabled,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enabled': ?enabled,
    };
  }

  factory ManagedClusterCostAnalysis.fromMap(Map<String, dynamic> map) {
    return ManagedClusterCostAnalysis(
      enabled: map['enabled'] == null ? null : map['enabled'] as bool,
    );
  }
}

