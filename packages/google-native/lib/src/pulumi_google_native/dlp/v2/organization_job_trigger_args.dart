// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import 'google_privacy_dlp_v2_inspect_job_config.dart';
import 'google_privacy_dlp_v2_trigger.dart';
import 'organization_job_trigger_status.dart';

/// The set of arguments for OrganizationJobTrigger.
class OrganizationJobTriggerArgs {
  /// User provided description (max 256 chars)
  final Input<String>? description;

  /// Display name (max 100 chars)
  final Input<String>? displayName;

  /// For inspect jobs, a snapshot of the configuration.
  final Input<GooglePrivacyDlpV2InspectJobConfig>? inspectJob;

  /// Deprecated. This field has no effect.
  final Input<String>? location;

  /// Unique resource name for the triggeredJob, assigned by the service when the triggeredJob is created, for example `projects/dlp-test-project/jobTriggers/53234423`.
  final Input<String>? name;
  final Input<String> organizationId;

  /// A status for this trigger.
  final Input<OrganizationJobTriggerStatus> status;

  /// The trigger id can contain uppercase and lowercase letters, numbers, and hyphens; that is, it must match the regular expression: `[a-zA-Z\d-_]+`. The maximum length is 100 characters. Can be empty to allow the system to generate one.
  final Input<String>? triggerId;

  /// A list of triggers which will be OR'ed together. Only one in the list needs to trigger for a job to be started. The list may contain only a single Schedule trigger and must have at least one object.
  final Input<List<GooglePrivacyDlpV2Trigger>>? triggers;

  OrganizationJobTriggerArgs({
    this.description,
    this.displayName,
    this.inspectJob,
    this.location,
    this.name,
    required this.organizationId,
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
      map['inspectJob'] = Input.mapOptionalInputValue<
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
    map['organizationId'] = organizationId;
    map['status'] = Input.mapInputValue<OrganizationJobTriggerStatus, String>(
        status, (value) => value.value);
    final triggerIdValue = triggerId;
    if (triggerIdValue != null) {
      map['triggerId'] = triggerIdValue;
    }
    final triggersValue = triggers;
    if (triggersValue != null) {
      map['triggers'] = Input.mapOptionalInputValue<
              List<GooglePrivacyDlpV2Trigger>, List<Map<String, dynamic>>>(
          triggersValue,
          (value) =>
              Input.encodeList<GooglePrivacyDlpV2Trigger, Map<String, dynamic>>(
                  value, (value) => value.toMap()));
    }
    return map;
  }

  factory OrganizationJobTriggerArgs.fromMap(Map<String, dynamic> map) {
    return OrganizationJobTriggerArgs(
      description: Input.asOptionalInput<String>(map['description']),
      displayName: Input.asOptionalInput<String>(map['displayName']),
      inspectJob: Input.asOptionalInput<GooglePrivacyDlpV2InspectJobConfig>(
          map['inspectJob']),
      location: Input.asOptionalInput<String>(map['location']),
      name: Input.asOptionalInput<String>(map['name']),
      organizationId: Input.asInput<String>(map['organizationId']),
      status: Input.asInput<OrganizationJobTriggerStatus>(map['status']),
      triggerId: Input.asOptionalInput<String>(map['triggerId']),
      triggers: Input.asOptionalInput<List<GooglePrivacyDlpV2Trigger>>(
          map['triggers']),
    );
  }
}
