// ignore_for_file: unused_element, unnecessary_cast

class PipelineParallelismConfiguration {
  /// The max number of steps that can be executed in parallel.
  final int maxParallelExecutionSteps;

  PipelineParallelismConfiguration({
    required this.maxParallelExecutionSteps,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['maxParallelExecutionSteps'] = maxParallelExecutionSteps;
    return map;
  }

  factory PipelineParallelismConfiguration.fromMap(Map<String, dynamic> map) {
    return PipelineParallelismConfiguration(
      maxParallelExecutionSteps: map['maxParallelExecutionSteps'] as int,
    );
  }
}
