// ignore_for_file: unused_element, unnecessary_cast

/// A service with basic scaling will create an instance when the application receives a request. The instance will be turned down when the app becomes idle. Basic scaling is ideal for work that is intermittent or driven by user activity.
class BasicScalingResponse2 {
  /// Duration of time after the last request that an instance must wait before the instance is shut down.
  final String idleTimeout;

  /// Maximum number of instances to create for this version.
  final int maxInstances;

  BasicScalingResponse2({
    required this.idleTimeout,
    required this.maxInstances,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['idleTimeout'] = idleTimeout;
    map['maxInstances'] = maxInstances;
    return map;
  }

  factory BasicScalingResponse2.fromMap(Map<String, dynamic> map) {
    return BasicScalingResponse2(
      idleTimeout: map['idleTimeout'] as String,
      maxInstances: map['maxInstances'] as int,
    );
  }
}
