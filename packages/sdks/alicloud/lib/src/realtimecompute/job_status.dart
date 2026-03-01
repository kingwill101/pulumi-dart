// ignore_for_file: unused_element, unnecessary_cast

import 'job_status_failure.dart';
import 'job_status_running.dart';

class JobStatus {
  /// Job current status
  final String? currentJobStatus;
  /// Job failure information
  final JobStatusFailure? failure;
  /// Job Run Health Score
  final int? healthScore;
  /// Risk level, which indicates the risk level of the operation status of the job.
  final String? riskLevel;
  /// job running status, which has value when the job is Running.
  final JobStatusRunning? running;

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
      'failure': ?failure == null ? null : failure!.toMap(),
      'healthScore': ?healthScore,
      'riskLevel': ?riskLevel,
      'running': ?running == null ? null : running!.toMap(),
    };
  }

  factory JobStatus.fromMap(Map<String, dynamic> map) {
    return JobStatus(
      currentJobStatus: map['currentJobStatus'] == null ? null : map['currentJobStatus'] as String,
      failure: map['failure'] == null ? null : JobStatusFailure.fromMap((map['failure'] as Map).cast<String, dynamic>()),
      healthScore: map['healthScore'] == null ? null : map['healthScore'] as int,
      riskLevel: map['riskLevel'] == null ? null : map['riskLevel'] as String,
      running: map['running'] == null ? null : JobStatusRunning.fromMap((map['running'] as Map).cast<String, dynamic>()),
    );
  }
}

