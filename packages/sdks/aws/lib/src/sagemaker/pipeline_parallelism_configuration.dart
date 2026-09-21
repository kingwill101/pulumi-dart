// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class PipelineParallelismConfiguration {
  /// The max number of steps that can be executed in parallel.
  final pulumi.Input<int> maxParallelExecutionSteps;

  /// Creates a new [PipelineParallelismConfiguration].
  /// [maxParallelExecutionSteps] The max number of steps that can be executed in parallel.
  const PipelineParallelismConfiguration({
    required this.maxParallelExecutionSteps,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'maxParallelExecutionSteps': maxParallelExecutionSteps,
    };
  }

  factory PipelineParallelismConfiguration.fromMap(Map<String, dynamic> map) {
    return PipelineParallelismConfiguration(
      maxParallelExecutionSteps: pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(map['maxParallelExecutionSteps'])),
    );
  }
}
