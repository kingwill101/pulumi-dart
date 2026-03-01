// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'prevention_job_trigger_inspect_job_action.dart';
import 'prevention_job_trigger_inspect_job_inspect_config.dart';
import 'prevention_job_trigger_inspect_job_storage_config.dart';

class PreventionJobTriggerInspectJob {
  /// Configuration block for the actions to execute on the completion of a job. Can be specified multiple times, but only one for each type. Each action block supports fields documented below. This argument is processed in attribute-as-blocks mode.
  /// Structure is documented below.
  final List<PreventionJobTriggerInspectJobAction>? actions;
  /// The core content of the template.
  /// Structure is documented below.
  final PreventionJobTriggerInspectJobInspectConfig? inspectConfig;
  /// The name of the template to run when this job is triggered.
  final String? inspectTemplateName;
  /// Information on where to inspect
  /// Structure is documented below.
  final PreventionJobTriggerInspectJobStorageConfig storageConfig;

  /// Creates a new [PreventionJobTriggerInspectJob].
  /// [actions] Configuration block for the actions to execute on the completion of a job. Can be specified multiple times, but only one for each type. Each action block supports fields documented below. This argument is processed in attribute-as-blocks mode.
  /// [inspectConfig] The core content of the template.
  /// [inspectTemplateName] The name of the template to run when this job is triggered.
  /// [storageConfig] Information on where to inspect
  PreventionJobTriggerInspectJob({
    this.actions,
    this.inspectConfig,
    this.inspectTemplateName,
    required this.storageConfig,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'actions': ?actions == null ? null : pulumi.Input.encodeList<PreventionJobTriggerInspectJobAction, Map<String, dynamic>>(actions!, (value) => value.toMap()),
      'inspectConfig': ?inspectConfig == null ? null : inspectConfig!.toMap(),
      'inspectTemplateName': ?inspectTemplateName,
      'storageConfig': storageConfig.toMap(),
    };
  }

  factory PreventionJobTriggerInspectJob.fromMap(Map<String, dynamic> map) {
    return PreventionJobTriggerInspectJob(
      actions: map['actions'] == null ? null : pulumi.Input.decodeList<PreventionJobTriggerInspectJobAction>(map['actions'], (value) => PreventionJobTriggerInspectJobAction.fromMap((value as Map).cast<String, dynamic>())),
      inspectConfig: map['inspectConfig'] == null ? null : PreventionJobTriggerInspectJobInspectConfig.fromMap((map['inspectConfig'] as Map).cast<String, dynamic>()),
      inspectTemplateName: map['inspectTemplateName'] == null ? null : map['inspectTemplateName'] as String,
      storageConfig: PreventionJobTriggerInspectJobStorageConfig.fromMap((map['storageConfig'] as Map).cast<String, dynamic>()),
    );
  }
}

