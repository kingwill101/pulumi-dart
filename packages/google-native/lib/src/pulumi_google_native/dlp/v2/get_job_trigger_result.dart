// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_privacy_dlp_v2_error_response.dart';
import 'google_privacy_dlp_v2_inspect_job_config_response.dart';
import 'google_privacy_dlp_v2_trigger_response.dart';

/// Result data returned by getJobTrigger.
class GetJobTriggerResult {
  /// The creation timestamp of a triggeredJob.
  final String createTime;

  /// User provided description (max 256 chars)
  final String description;

  /// Display name (max 100 chars)
  final String displayName;

  /// A stream of errors encountered when the trigger was activated. Repeated errors may result in the JobTrigger automatically being paused. Will return the last 100 errors. Whenever the JobTrigger is modified this list will be cleared.
  final List<GooglePrivacyDlpV2ErrorResponse> errors;

  /// For inspect jobs, a snapshot of the configuration.
  final GooglePrivacyDlpV2InspectJobConfigResponse inspectJob;

  /// The timestamp of the last time this trigger executed.
  final String lastRunTime;

  /// Unique resource name for the triggeredJob, assigned by the service when the triggeredJob is created, for example `projects/dlp-test-project/jobTriggers/53234423`.
  final String name;

  /// A status for this trigger.
  final String status;

  /// A list of triggers which will be OR'ed together. Only one in the list needs to trigger for a job to be started. The list may contain only a single Schedule trigger and must have at least one object.
  final List<GooglePrivacyDlpV2TriggerResponse> triggers;

  /// The last update timestamp of a triggeredJob.
  final String updateTime;

  GetJobTriggerResult({
    required this.createTime,
    required this.description,
    required this.displayName,
    required this.errors,
    required this.inspectJob,
    required this.lastRunTime,
    required this.name,
    required this.status,
    required this.triggers,
    required this.updateTime,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['createTime'] = createTime;
    map['description'] = description;
    map['displayName'] = displayName;
    map['errors'] = pulumi.Input.encodeList<GooglePrivacyDlpV2ErrorResponse,
        Map<String, dynamic>>(errors, (value) => value.toMap());
    map['inspectJob'] = inspectJob.toMap();
    map['lastRunTime'] = lastRunTime;
    map['name'] = name;
    map['status'] = status;
    map['triggers'] = pulumi.Input.encodeList<GooglePrivacyDlpV2TriggerResponse,
        Map<String, dynamic>>(triggers, (value) => value.toMap());
    map['updateTime'] = updateTime;
    return map;
  }

  factory GetJobTriggerResult.fromMap(Map<String, dynamic> map) {
    return GetJobTriggerResult(
      createTime: map['createTime'] as String,
      description: map['description'] as String,
      displayName: map['displayName'] as String,
      errors: pulumi.Input.decodeList<GooglePrivacyDlpV2ErrorResponse>(
          map['errors'],
          (value) => GooglePrivacyDlpV2ErrorResponse.fromMap(
              (value as Map).cast<String, dynamic>())),
      inspectJob: GooglePrivacyDlpV2InspectJobConfigResponse.fromMap(
          (map['inspectJob'] as Map).cast<String, dynamic>()),
      lastRunTime: map['lastRunTime'] as String,
      name: map['name'] as String,
      status: map['status'] as String,
      triggers: pulumi.Input.decodeList<GooglePrivacyDlpV2TriggerResponse>(
          map['triggers'],
          (value) => GooglePrivacyDlpV2TriggerResponse.fromMap(
              (value as Map).cast<String, dynamic>())),
      updateTime: map['updateTime'] as String,
    );
  }
}
