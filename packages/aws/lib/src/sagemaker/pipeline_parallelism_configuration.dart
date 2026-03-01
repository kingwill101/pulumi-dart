// ignore_for_file: unused_element, unnecessary_cast

class PipelineParallelismConfiguration {
  /// The max number of steps that can be executed in parallel.
  final int maxParallelExecutionSteps;

  /// Creates a new [PipelineParallelismConfiguration].
  /// [maxParallelExecutionSteps] The max number of steps that can be executed in parallel.
  PipelineParallelismConfiguration({required this.maxParallelExecutionSteps});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'maxParallelExecutionSteps': maxParallelExecutionSteps,
    };
  }

  factory PipelineParallelismConfiguration.fromMap(Map<String, dynamic> map) {
    return PipelineParallelismConfiguration(
      maxParallelExecutionSteps: map['maxParallelExecutionSteps'] as int,
    );
  }
}
