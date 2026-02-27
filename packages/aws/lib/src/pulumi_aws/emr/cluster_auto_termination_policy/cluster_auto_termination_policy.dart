// ignore_for_file: unused_element, unnecessary_cast

class ClusterAutoTerminationPolicy {
  /// Specifies the amount of idle time in seconds after which the cluster automatically terminates. You can specify a minimum of `60` seconds and a maximum of `604800` seconds (seven days).
  final int? idleTimeout;

  ClusterAutoTerminationPolicy({
    this.idleTimeout,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final idleTimeoutValue = idleTimeout;
    if (idleTimeoutValue != null) {
      map['idleTimeout'] = idleTimeoutValue;
    }
    return map;
  }

  factory ClusterAutoTerminationPolicy.fromMap(Map<String, dynamic> map) {
    return ClusterAutoTerminationPolicy(
      idleTimeout:
          map['idleTimeout'] == null ? null : map['idleTimeout'] as int,
    );
  }
}
