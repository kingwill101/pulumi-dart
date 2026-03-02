// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetClusterKubernetesNetworkConfigElasticLoadBalancing {
  /// Whether zonal shift is enabled.
  final pulumi.Input<bool> enabled;

  /// Creates a new [GetClusterKubernetesNetworkConfigElasticLoadBalancing].
  /// [enabled] Whether zonal shift is enabled.
  GetClusterKubernetesNetworkConfigElasticLoadBalancing({
    required this.enabled,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enabled': enabled,
    };
  }

  factory GetClusterKubernetesNetworkConfigElasticLoadBalancing.fromMap(Map<String, dynamic> map) {
    return GetClusterKubernetesNetworkConfigElasticLoadBalancing(
      enabled: (map['enabled'] as bool).input(),
    );
  }
}

