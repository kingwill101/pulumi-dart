// ignore_for_file: unused_element, unnecessary_cast

/// Additional job parameters that can only be updated during runtime using the projects.jobs.update method. These fields have no effect when specified during job creation.
class RuntimeUpdatableParamsResponse {
  /// The maximum number of workers to cap autoscaling at. This field is currently only supported for Streaming Engine jobs.
  final int maxNumWorkers;

  /// The minimum number of workers to scale down to. This field is currently only supported for Streaming Engine jobs.
  final int minNumWorkers;

  /// Creates a new [RuntimeUpdatableParamsResponse].
  /// [maxNumWorkers] The maximum number of workers to cap autoscaling at. This field is currently only supported for Streaming Engine jobs.
  /// [minNumWorkers] The minimum number of workers to scale down to. This field is currently only supported for Streaming Engine jobs.
  RuntimeUpdatableParamsResponse({
    required this.maxNumWorkers,
    required this.minNumWorkers,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['maxNumWorkers'] = maxNumWorkers;
    map['minNumWorkers'] = minNumWorkers;
    return map;
  }

  factory RuntimeUpdatableParamsResponse.fromMap(Map<String, dynamic> map) {
    return RuntimeUpdatableParamsResponse(
      maxNumWorkers: map['maxNumWorkers'] as int,
      minNumWorkers: map['minNumWorkers'] as int,
    );
  }
}
