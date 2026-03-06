// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Properties that define a Azure Arc PrivateLinkScope resource.
class KubernetesConfigurationPrivateLinkScopeProperties {
  /// Managed Cluster ARM ID for the private link scope  (Required)
  final pulumi.Input<String> clusterResourceId;
  /// Indicates whether machines associated with the private link scope can also use public Azure Arc service endpoints.
  final pulumi.Input<String>? publicNetworkAccess;

  /// Creates a new [KubernetesConfigurationPrivateLinkScopeProperties].
  /// [clusterResourceId] Managed Cluster ARM ID for the private link scope  (Required)
  /// [publicNetworkAccess] Indicates whether machines associated with the private link scope can also use public Azure Arc service endpoints.
  const KubernetesConfigurationPrivateLinkScopeProperties({
    required this.clusterResourceId,
    this.publicNetworkAccess,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'clusterResourceId': clusterResourceId,
      'publicNetworkAccess': ?publicNetworkAccess,
    };
  }

  factory KubernetesConfigurationPrivateLinkScopeProperties.fromMap(Map<String, dynamic> map) {
    return KubernetesConfigurationPrivateLinkScopeProperties(
      clusterResourceId: pulumi.Input.fromValue(map['clusterResourceId'] as String),
      publicNetworkAccess: (() { final guardedValue = map['publicNetworkAccess']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

