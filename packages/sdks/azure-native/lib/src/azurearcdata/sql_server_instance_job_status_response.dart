// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'background_job_response.dart';
import 'sequencer_action_response.dart';

/// The status of the job running on the SQL Server instance.
class SqlServerInstanceJobStatusResponse {
  /// The background job details.
  final pulumi.Input<BackgroundJobResponse>? backgroundJob;
  /// The unique identifier of the job.
  final pulumi.Input<String>? id;
  /// The name of the SQL Server instance.
  final pulumi.Input<String>? instanceName;
  /// The exception message if the job failed.
  final pulumi.Input<String>? jobException;
  /// The status of the job.
  final pulumi.Input<String>? jobStatus;
  /// The list of sequencer actions.
  final pulumi.Input<List<SequencerActionResponse>>? sequencerActions;

  /// Creates a new [SqlServerInstanceJobStatusResponse].
  /// [backgroundJob] The background job details.
  /// [id] The unique identifier of the job.
  /// [instanceName] The name of the SQL Server instance.
  /// [jobException] The exception message if the job failed.
  /// [jobStatus] The status of the job.
  /// [sequencerActions] The list of sequencer actions.
  SqlServerInstanceJobStatusResponse({
    this.backgroundJob,
    this.id,
    this.instanceName,
    this.jobException,
    this.jobStatus,
    this.sequencerActions,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'backgroundJob': ?pulumi.Input.mapOptionalInputValue<BackgroundJobResponse, Map<String, dynamic>>(backgroundJob, (value) => value.toMap()),
      'id': ?id,
      'instanceName': ?instanceName,
      'jobException': ?jobException,
      'jobStatus': ?jobStatus,
      'sequencerActions': ?pulumi.Input.mapOptionalInputValue<List<SequencerActionResponse>, List<Map<String, dynamic>>>(sequencerActions, (value) => pulumi.Input.encodeList<SequencerActionResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory SqlServerInstanceJobStatusResponse.fromMap(Map<String, dynamic> map) {
    return SqlServerInstanceJobStatusResponse(
      backgroundJob: map['backgroundJob'] == null ? null : (BackgroundJobResponse.fromMap((map['backgroundJob'] as Map).cast<String, dynamic>())).input(),
      id: map['id'] == null ? null : (map['id'] as String).input(),
      instanceName: map['instanceName'] == null ? null : (map['instanceName'] as String).input(),
      jobException: map['jobException'] == null ? null : (map['jobException'] as String).input(),
      jobStatus: map['jobStatus'] == null ? null : (map['jobStatus'] as String).input(),
      sequencerActions: map['sequencerActions'] == null ? null : (pulumi.Input.decodeList<SequencerActionResponse>(map['sequencerActions'], (value) => SequencerActionResponse.fromMap((value as Map).cast<String, dynamic>()))).input(),
    );
  }
}

