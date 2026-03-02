// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The cost analysis configuration for the cluster
class ManagedClusterCostAnalysisResponse {
  /// Whether to enable cost analysis. The Managed Cluster sku.tier must be set to 'Standard' or 'Premium' to enable this feature. Enabling this will add Kubernetes Namespace and Deployment details to the Cost Analysis views in the Azure portal. If not specified, the default is false. For more information see aka.ms/aks/docs/cost-analysis.
  final pulumi.Input<bool>? enabled;

  /// Creates a new [ManagedClusterCostAnalysisResponse].
  /// [enabled] Whether to enable cost analysis. The Managed Cluster sku.tier must be set to 'Standard' or 'Premium' to enable this feature. Enabling this will add Kubernetes Namespace and Deployment details to the Cost Analysis views in the Azure portal. If not specified, the default is false. For more information see aka.ms/aks/docs/cost-analysis.
  ManagedClusterCostAnalysisResponse({
    this.enabled,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enabled': ?enabled,
    };
  }

  factory ManagedClusterCostAnalysisResponse.fromMap(Map<String, dynamic> map) {
    return ManagedClusterCostAnalysisResponse(
      enabled: map['enabled'] == null ? null : (map['enabled']! as bool).input(),
    );
  }
}

