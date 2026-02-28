// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_privacy_dlp_v2_inspect_job_config.dart';
import 'google_privacy_dlp_v2_trigger.dart';
import 'job_trigger_status.dart';

/// {@template pulumi_dlp_v2_job_trigger_args_doc}
/// The set of arguments for JobTrigger.
/// {@endtemplate}
/// {@macro pulumi_dlp_v2_job_trigger_args_doc}
class JobTriggerArgs {
  /// User provided description (max 256 chars)
  final pulumi.Input<String>? description;
  /// Display name (max 100 chars)
  final pulumi.Input<String>? displayName;
  /// For inspect jobs, a snapshot of the configuration.
  final pulumi.Input<GooglePrivacyDlpV2InspectJobConfig>? inspectJob;
  /// Deprecated. This field has no effect.
  final pulumi.Input<String>? location;
  /// Unique resource name for the triggeredJob, assigned by the service when the triggeredJob is created, for example `projects/dlp-test-project/jobTriggers/53234423`.
  final pulumi.Input<String>? name;
  final pulumi.Input<String>? project;
  /// A status for this trigger.
  final pulumi.Input<JobTriggerStatus> status;
  /// The trigger id can contain uppercase and lowercase letters, numbers, and hyphens; that is, it must match the regular expression: `[a-zA-Z\d-_]+`. The maximum length is 100 characters. Can be empty to allow the system to generate one.
  final pulumi.Input<String>? triggerId;
  /// A list of triggers which will be OR'ed together. Only one in the list needs to trigger for a job to be started. The list may contain only a single Schedule trigger and must have at least one object.
  final pulumi.Input<List<GooglePrivacyDlpV2Trigger>>? triggers;

  /// Creates a new [JobTriggerArgs].
  /// [description] User provided description (max 256 chars)
  /// [displayName] Display name (max 100 chars)
  /// [inspectJob] For inspect jobs, a snapshot of the configuration.
  /// [location] Deprecated. This field has no effect.
  /// [name] Unique resource name for the triggeredJob, assigned by the service when the triggeredJob is created, for example `projects/dlp-test-project/jobTriggers/53234423`.
  /// [project] Optional.
  /// [status] A status for this trigger.
  /// [triggerId] The trigger id can contain uppercase and lowercase letters, numbers, and hyphens; that is, it must match the regular expression: `[a-zA-Z\d-_]+`. The maximum length is 100 characters. Can be empty to allow the system to generate one.
  /// [triggers] A list of triggers which will be OR'ed together. Only one in the list needs to trigger for a job to be started. The list may contain only a single Schedule trigger and must have at least one object.
  JobTriggerArgs({
    String? description,
    String? displayName,
    GooglePrivacyDlpV2InspectJobConfig? inspectJob,
    String? location,
    String? name,
    String? project,
    required JobTriggerStatus status,
    String? triggerId,
    List<GooglePrivacyDlpV2Trigger>? triggers,
  }) :
      description = pulumi.Input.asOptionalInput<String>(description),
      displayName = pulumi.Input.asOptionalInput<String>(displayName),
      inspectJob = pulumi.Input.asOptionalInput<GooglePrivacyDlpV2InspectJobConfig>(inspectJob),
      location = pulumi.Input.asOptionalInput<String>(location),
      name = pulumi.Input.asOptionalInput<String>(name),
      project = pulumi.Input.asOptionalInput<String>(project),
      status = pulumi.Input.asInput<JobTriggerStatus>(status),
      triggerId = pulumi.Input.asOptionalInput<String>(triggerId),
      triggers = pulumi.Input.asOptionalInput<List<GooglePrivacyDlpV2Trigger>>(triggers);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': ?description,
      'displayName': ?displayName,
      'inspectJob': ?pulumi.Input.mapOptionalInputValue<GooglePrivacyDlpV2InspectJobConfig, Map<String, dynamic>>(inspectJob, (value) => value.toMap()),
      'location': ?location,
      'name': ?name,
      'project': ?project,
      'status': pulumi.Input.mapInputValue<JobTriggerStatus, String>(status, (value) => value.value),
      'triggerId': ?triggerId,
      'triggers': ?pulumi.Input.mapOptionalInputValue<List<GooglePrivacyDlpV2Trigger>, List<Map<String, dynamic>>>(triggers, (value) => pulumi.Input.encodeList<GooglePrivacyDlpV2Trigger, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory JobTriggerArgs.fromMap(Map<String, dynamic> map) {
    return JobTriggerArgs(
      description: map['description'] == null ? null : map['description'] as String,
      displayName: map['displayName'] == null ? null : map['displayName'] as String,
      inspectJob: map['inspectJob'] == null ? null : GooglePrivacyDlpV2InspectJobConfig.fromMap((map['inspectJob'] as Map).cast<String, dynamic>()),
      location: map['location'] == null ? null : map['location'] as String,
      name: map['name'] == null ? null : map['name'] as String,
      project: map['project'] == null ? null : map['project'] as String,
      status: JobTriggerStatus.fromValue(map['status'] as String),
      triggerId: map['triggerId'] == null ? null : map['triggerId'] as String,
      triggers: map['triggers'] == null ? null : pulumi.Input.decodeList<GooglePrivacyDlpV2Trigger>(map['triggers'], (value) => GooglePrivacyDlpV2Trigger.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

