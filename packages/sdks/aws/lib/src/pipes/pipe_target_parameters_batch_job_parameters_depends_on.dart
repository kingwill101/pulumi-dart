// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class PipeTargetParametersBatchJobParametersDependsOn {
  /// The job ID of the AWS Batch job that's associated with this dependency.
  final pulumi.Input<String>? jobId;
  /// The type of placement strategy. The random placement strategy randomly places tasks on available candidates. The spread placement strategy spreads placement across available candidates evenly based on the field parameter. The binpack strategy places tasks on available candidates that have the least available amount of the resource that is specified with the field parameter. For example, if you binpack on memory, a task is placed on the instance with the least amount of remaining memory (but still enough to run the task). Valid Values: random, spread, binpack.
  final pulumi.Input<String>? type;

  /// Creates a new [PipeTargetParametersBatchJobParametersDependsOn].
  /// [jobId] The job ID of the AWS Batch job that's associated with this dependency.
  /// [type] The type of placement strategy. The random placement strategy randomly places tasks on available candidates. The spread placement strategy spreads placement across available candidates evenly based on the field parameter. The binpack strategy places tasks on available candidates that have the least available amount of the resource that is specified with the field parameter. For example, if you binpack on memory, a task is placed on the instance with the least amount of remaining memory (but still enough to run the task). Valid Values: random, spread, binpack.
  PipeTargetParametersBatchJobParametersDependsOn({
    this.jobId,
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'jobId': ?jobId,
      'type': ?type,
    };
  }

  factory PipeTargetParametersBatchJobParametersDependsOn.fromMap(Map<String, dynamic> map) {
    return PipeTargetParametersBatchJobParametersDependsOn(
      jobId: map['jobId'] == null ? null : (map['jobId'] as String).input(),
      type: map['type'] == null ? null : (map['type'] as String).input(),
    );
  }
}

