// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ClusterAutoTerminationPolicy {
  /// Specifies the amount of idle time in seconds after which the cluster automatically terminates. You can specify a minimum of `60` seconds and a maximum of `604800` seconds (seven days).
  final pulumi.Input<int>? idleTimeout;

  /// Creates a new [ClusterAutoTerminationPolicy].
  /// [idleTimeout] Specifies the amount of idle time in seconds after which the cluster automatically terminates. You can specify a minimum of `60` seconds and a maximum of `604800` seconds (seven days).
  ClusterAutoTerminationPolicy({
    this.idleTimeout,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'idleTimeout': ?idleTimeout,
    };
  }

  factory ClusterAutoTerminationPolicy.fromMap(Map<String, dynamic> map) {
    return ClusterAutoTerminationPolicy(
      idleTimeout: map['idleTimeout'] == null ? null : (map['idleTimeout'] as int).input(),
    );
  }
}

