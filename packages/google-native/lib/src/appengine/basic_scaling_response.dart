// ignore_for_file: unused_element, unnecessary_cast

/// A service with basic scaling will create an instance when the application receives a request. The instance will be turned down when the app becomes idle. Basic scaling is ideal for work that is intermittent or driven by user activity.
class BasicScalingResponse {
  /// Duration of time after the last request that an instance must wait before the instance is shut down.
  final String idleTimeout;

  /// Maximum number of instances to create for this version.
  final int maxInstances;

  /// Creates a new [BasicScalingResponse].
  /// [idleTimeout] Duration of time after the last request that an instance must wait before the instance is shut down.
  /// [maxInstances] Maximum number of instances to create for this version.
  BasicScalingResponse({required this.idleTimeout, required this.maxInstances});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'idleTimeout': idleTimeout,
      'maxInstances': maxInstances,
    };
  }

  factory BasicScalingResponse.fromMap(Map<String, dynamic> map) {
    return BasicScalingResponse(
      idleTimeout: map['idleTimeout'] as String,
      maxInstances: map['maxInstances'] as int,
    );
  }
}
