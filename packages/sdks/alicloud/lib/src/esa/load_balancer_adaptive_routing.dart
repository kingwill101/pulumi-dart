// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class LoadBalancerAdaptiveRouting {
  /// Whether to failover across pools.
  final pulumi.Input<bool>? failoverAcrossPools;

  /// Creates a new [LoadBalancerAdaptiveRouting].
  /// [failoverAcrossPools] Whether to failover across pools.
  LoadBalancerAdaptiveRouting({
    this.failoverAcrossPools,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'failoverAcrossPools': ?failoverAcrossPools,
    };
  }

  factory LoadBalancerAdaptiveRouting.fromMap(Map<String, dynamic> map) {
    return LoadBalancerAdaptiveRouting(
      failoverAcrossPools: map['failoverAcrossPools'] == null ? null : (map['failoverAcrossPools']! as bool).input(),
    );
  }
}

