// ignore_for_file: unused_element, unnecessary_cast

class StandardAppVersionBasicScaling {
  /// Duration of time after the last request that an instance must wait before the instance is shut down.
  /// A duration in seconds with up to nine fractional digits, terminated by 's'. Example: "3.5s". Defaults to 900s.
  final String? idleTimeout;

  /// Maximum number of instances to create for this version. Must be in the range [1.0, 200.0].
  final int maxInstances;

  /// Creates a new [StandardAppVersionBasicScaling].
  /// [idleTimeout] Duration of time after the last request that an instance must wait before the instance is shut down.
  /// [maxInstances] Maximum number of instances to create for this version. Must be in the range [1.0, 200.0].
  StandardAppVersionBasicScaling({
    this.idleTimeout,
    required this.maxInstances,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final idleTimeoutValue = idleTimeout;
    if (idleTimeoutValue != null) {
      map['idleTimeout'] = idleTimeoutValue;
    }
    map['maxInstances'] = maxInstances;
    return map;
  }

  factory StandardAppVersionBasicScaling.fromMap(Map<String, dynamic> map) {
    return StandardAppVersionBasicScaling(
      idleTimeout:
          map['idleTimeout'] == null ? null : map['idleTimeout'] as String,
      maxInstances: map['maxInstances'] as int,
    );
  }
}
