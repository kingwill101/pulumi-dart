// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../prevention_job_trigger_inspect_job/prevention_job_trigger_inspect_job.dart';
import '../prevention_job_trigger_trigger/prevention_job_trigger_trigger.dart';

/// The set of arguments for PreventionJobTrigger.
class PreventionJobTriggerArgs {
  /// A description of the job trigger.
  final pulumi.Input<String>? description;

  /// User set display name of the job trigger.
  final pulumi.Input<String>? displayName;

  /// Controls what and how to inspect for findings.
  /// Structure is documented below.
  final pulumi.Input<PreventionJobTriggerInspectJob>? inspectJob;

  /// The parent of the trigger, either in the format `projects/{{project}}`
  /// or `projects/{{project}}/locations/{{location}}`
  final pulumi.Input<String> parent;

  /// Whether the trigger is currently active.
  /// Default value is `HEALTHY`.
  /// Possible values are: `PAUSED`, `HEALTHY`, `CANCELLED`.
  final pulumi.Input<String>? status;

  /// The trigger id can contain uppercase and lowercase letters, numbers, and hyphens;
  /// that is, it must match the regular expression: [a-zA-Z\d-_]+.
  /// The maximum length is 100 characters. Can be empty to allow the system to generate one.
  final pulumi.Input<String>? triggerId;

  /// What event needs to occur for a new job to be started.
  /// Structure is documented below.
  final pulumi.Input<List<PreventionJobTriggerTrigger>> triggers;

  PreventionJobTriggerArgs({
    this.description,
    this.displayName,
    this.inspectJob,
    required this.parent,
    this.status,
    this.triggerId,
    required this.triggers,
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
          PreventionJobTriggerInspectJob,
          Map<String, dynamic>>(inspectJobValue, (value) => value.toMap());
    }
    map['parent'] = parent;
    final statusValue = status;
    if (statusValue != null) {
      map['status'] = statusValue;
    }
    final triggerIdValue = triggerId;
    if (triggerIdValue != null) {
      map['triggerId'] = triggerIdValue;
    }
    map['triggers'] = pulumi.Input.mapInputValue<
            List<PreventionJobTriggerTrigger>, List<Map<String, dynamic>>>(
        triggers,
        (value) => pulumi.Input.encodeList<PreventionJobTriggerTrigger,
            Map<String, dynamic>>(value, (value) => value.toMap()));
    return map;
  }

  factory PreventionJobTriggerArgs.fromMap(Map<String, dynamic> map) {
    return PreventionJobTriggerArgs(
      description: pulumi.Input.asOptionalInput<String>(map['description']),
      displayName: pulumi.Input.asOptionalInput<String>(map['displayName']),
      inspectJob: pulumi.Input.asOptionalInput<PreventionJobTriggerInspectJob>(
          map['inspectJob']),
      parent: pulumi.Input.asInput<String>(map['parent']),
      status: pulumi.Input.asOptionalInput<String>(map['status']),
      triggerId: pulumi.Input.asOptionalInput<String>(map['triggerId']),
      triggers: pulumi.Input.asInput<List<PreventionJobTriggerTrigger>>(
          map['triggers']),
    );
  }
}
