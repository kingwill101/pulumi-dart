// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'job_status_failure.dart';
import 'job_status_running.dart';

class JobStatus {
  /// Job current status
  final pulumi.Input<String>? currentJobStatus;

  /// Job failure information
  final pulumi.Input<JobStatusFailure>? failure;

  /// Job Run Health Score
  final pulumi.Input<int>? healthScore;

  /// Risk level, which indicates the risk level of the operation status of the job.
  final pulumi.Input<String>? riskLevel;

  /// job running status, which has value when the job is Running.
  final pulumi.Input<JobStatusRunning>? running;

  /// Creates a new [JobStatus].
  /// [currentJobStatus] Job current status
  /// [failure] Job failure information
  /// [healthScore] Job Run Health Score
  /// [riskLevel] Risk level, which indicates the risk level of the operation status of the job.
  /// [running] job running status, which has value when the job is Running.
  JobStatus({
    this.currentJobStatus,
    this.failure,
    this.healthScore,
    this.riskLevel,
    this.running,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'currentJobStatus': ?currentJobStatus,
      'failure':
          ?pulumi.Input.mapOptionalInputValue<
            JobStatusFailure,
            Map<String, dynamic>
          >(failure, (value) => value.toMap()),
      'healthScore': ?healthScore,
      'riskLevel': ?riskLevel,
      'running':
          ?pulumi.Input.mapOptionalInputValue<
            JobStatusRunning,
            Map<String, dynamic>
          >(running, (value) => value.toMap()),
    };
  }

  factory JobStatus.fromMap(Map<String, dynamic> map) {
    return JobStatus(
      currentJobStatus: (() {
        final guardedValue = map['currentJobStatus'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      failure: (() {
        final guardedValue = map['failure'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          JobStatusFailure.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      healthScore: (() {
        final guardedValue = map['healthScore'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
      riskLevel: (() {
        final guardedValue = map['riskLevel'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      running: (() {
        final guardedValue = map['running'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          JobStatusRunning.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
    );
  }
}
