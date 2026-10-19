// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class PipeTargetParametersBatchJobParametersDependsOn {
  /// Job ID of the AWS Batch job that's associated with this dependency.
  final pulumi.Input<String?>? jobId;
  /// Type of the job dependency. Valid Values: N_TO_N, SEQUENTIAL.
  final pulumi.Input<String?>? type;

  /// Creates a new [PipeTargetParametersBatchJobParametersDependsOn].
  /// [jobId] Job ID of the AWS Batch job that's associated with this dependency.
  /// [type] Type of the job dependency. Valid Values: N_TO_N, SEQUENTIAL.
  const PipeTargetParametersBatchJobParametersDependsOn({
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
      jobId: (() { final guardedValue = map['jobId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
