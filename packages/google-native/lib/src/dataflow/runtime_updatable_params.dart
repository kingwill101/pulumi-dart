// ignore_for_file: unused_element, unnecessary_cast

/// Additional job parameters that can only be updated during runtime using the projects.jobs.update method. These fields have no effect when specified during job creation.
class RuntimeUpdatableParams {
  /// The maximum number of workers to cap autoscaling at. This field is currently only supported for Streaming Engine jobs.
  final int? maxNumWorkers;

  /// The minimum number of workers to scale down to. This field is currently only supported for Streaming Engine jobs.
  final int? minNumWorkers;

  /// Creates a new [RuntimeUpdatableParams].
  /// [maxNumWorkers] The maximum number of workers to cap autoscaling at. This field is currently only supported for Streaming Engine jobs.
  /// [minNumWorkers] The minimum number of workers to scale down to. This field is currently only supported for Streaming Engine jobs.
  RuntimeUpdatableParams({this.maxNumWorkers, this.minNumWorkers});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'maxNumWorkers': ?maxNumWorkers,
      'minNumWorkers': ?minNumWorkers,
    };
  }

  factory RuntimeUpdatableParams.fromMap(Map<String, dynamic> map) {
    return RuntimeUpdatableParams(
      maxNumWorkers: map['maxNumWorkers'] == null
          ? null
          : map['maxNumWorkers'] as int,
      minNumWorkers: map['minNumWorkers'] == null
          ? null
          : map['minNumWorkers'] as int,
    );
  }
}
