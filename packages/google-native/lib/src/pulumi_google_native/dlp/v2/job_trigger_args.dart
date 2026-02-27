// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_privacy_dlp_v2_inspect_job_config.dart';
import 'google_privacy_dlp_v2_trigger.dart';
import 'job_trigger_status.dart';

/// The set of arguments for JobTrigger.
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

  JobTriggerArgs({
    this.description,
    this.displayName,
    this.inspectJob,
    this.location,
    this.name,
    this.project,
    required this.status,
    this.triggerId,
    this.triggers,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final descriptionValue = description;
    if (descriptionValue != null) {
      map['description'] = descriptionValue;
    }
    final displayNameValue = displayName;
    if (displayNameValue != null) {
      map['displayName'] = displayNameValue;
    }
    final inspectJobValue = inspectJob;
    if (inspectJobValue != null) {
      map['inspectJob'] = pulumi.Input.mapOptionalInputValue<
          GooglePrivacyDlpV2InspectJobConfig,
          Map<String, dynamic>>(inspectJobValue, (value) => value.toMap());
    }
    final locationValue = location;
    if (locationValue != null) {
      map['location'] = locationValue;
    }
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    map['status'] = pulumi.Input.mapInputValue<JobTriggerStatus, String>(
        status, (value) => value.value);
    final triggerIdValue = triggerId;
    if (triggerIdValue != null) {
      map['triggerId'] = triggerIdValue;
    }
    final triggersValue = triggers;
    if (triggersValue != null) {
      map['triggers'] = pulumi.Input.mapOptionalInputValue<
              List<GooglePrivacyDlpV2Trigger>, List<Map<String, dynamic>>>(
          triggersValue,
          (value) => pulumi.Input.encodeList<GooglePrivacyDlpV2Trigger,
              Map<String, dynamic>>(value, (value) => value.toMap()));
    }
    return map;
  }

  factory JobTriggerArgs.fromMap(Map<String, dynamic> map) {
    return JobTriggerArgs(
      description: pulumi.Input.asOptionalInput<String>(map['description']),
      displayName: pulumi.Input.asOptionalInput<String>(map['displayName']),
      inspectJob:
          pulumi.Input.asOptionalInput<GooglePrivacyDlpV2InspectJobConfig>(
              map['inspectJob']),
      location: pulumi.Input.asOptionalInput<String>(map['location']),
      name: pulumi.Input.asOptionalInput<String>(map['name']),
      project: pulumi.Input.asOptionalInput<String>(map['project']),
      status: pulumi.Input.asInput<JobTriggerStatus>(map['status']),
      triggerId: pulumi.Input.asOptionalInput<String>(map['triggerId']),
      triggers: pulumi.Input.asOptionalInput<List<GooglePrivacyDlpV2Trigger>>(
          map['triggers']),
    );
  }
}
