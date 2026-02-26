// ignore_for_file: unused_element, unnecessary_cast

/// A service with basic scaling will create an instance when the application receives a request. The instance will be turned down when the app becomes idle. Basic scaling is ideal for work that is intermittent or driven by user activity.
class BasicScaling {
  /// Duration of time after the last request that an instance must wait before the instance is shut down.
  final String? idleTimeout;

  /// Maximum number of instances to create for this version.
  final int? maxInstances;

  BasicScaling({
    this.idleTimeout,
    this.maxInstances,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final idleTimeoutValue = idleTimeout;
    if (idleTimeoutValue != null) {
      map['idleTimeout'] = idleTimeoutValue;
    }
    final maxInstancesValue = maxInstances;
    if (maxInstancesValue != null) {
      map['maxInstances'] = maxInstancesValue;
    }
    return map;
  }

  factory BasicScaling.fromMap(Map<String, dynamic> map) {
    return BasicScaling(
      idleTimeout:
          map['idleTimeout'] == null ? null : map['idleTimeout'] as String,
      maxInstances:
          map['maxInstances'] == null ? null : map['maxInstances'] as int,
    );
  }
}
