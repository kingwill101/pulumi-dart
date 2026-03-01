// ignore_for_file: unused_element, unnecessary_cast

/// Settings for WorkerPool autoscaling.
class AutoscalingSettingsResponse {
  /// The algorithm to use for autoscaling.
  final String algorithm;

  /// The maximum number of workers to cap scaling at.
  final int maxNumWorkers;

  /// Creates a new [AutoscalingSettingsResponse].
  /// [algorithm] The algorithm to use for autoscaling.
  /// [maxNumWorkers] The maximum number of workers to cap scaling at.
  AutoscalingSettingsResponse({
    required this.algorithm,
    required this.maxNumWorkers,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'algorithm': algorithm,
      'maxNumWorkers': maxNumWorkers,
    };
  }

  factory AutoscalingSettingsResponse.fromMap(Map<String, dynamic> map) {
    return AutoscalingSettingsResponse(
      algorithm: map['algorithm'] as String,
      maxNumWorkers: map['maxNumWorkers'] as int,
    );
  }
}
