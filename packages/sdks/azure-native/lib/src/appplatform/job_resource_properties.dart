// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'build_result_user_source_info.dart';
import 'job_execution_template.dart';
import 'managed_component_reference.dart';
import 'manual_job_trigger_config.dart';

/// Job resource properties payload
class JobResourceProperties {
  /// Referenced managed components collection
  final pulumi.Input<List<ManagedComponentReference>>? managedComponentReferences;
  /// Uploaded source information of the Job.
  final pulumi.Input<BuildResultUserSourceInfo>? source;
  /// The template which is applied for all executions of the Job.
  final pulumi.Input<JobExecutionTemplate>? template;
  /// The Job trigger related configuration.
  final pulumi.Input<ManualJobTriggerConfig>? triggerConfig;

  /// Creates a new [JobResourceProperties].
  /// [managedComponentReferences] Referenced managed components collection
  /// [source] Uploaded source information of the Job.
  /// [template] The template which is applied for all executions of the Job.
  /// [triggerConfig] The Job trigger related configuration.
  const JobResourceProperties({
    this.managedComponentReferences,
    this.source,
    this.template,
    this.triggerConfig,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'managedComponentReferences': ?pulumi.Input.mapOptionalInputValue<List<ManagedComponentReference>, List<Map<String, dynamic>>>(managedComponentReferences, (value) => pulumi.Input.encodeList<ManagedComponentReference, Map<String, dynamic>>(value, (value) => value.toMap())),
      'source': ?pulumi.Input.mapOptionalInputValue<BuildResultUserSourceInfo, Map<String, dynamic>>(source, (value) => value.toMap()),
      'template': ?pulumi.Input.mapOptionalInputValue<JobExecutionTemplate, Map<String, dynamic>>(template, (value) => value.toMap()),
      'triggerConfig': ?pulumi.Input.mapOptionalInputValue<ManualJobTriggerConfig, Map<String, dynamic>>(triggerConfig, (value) => value.toMap()),
    };
  }

  factory JobResourceProperties.fromMap(Map<String, dynamic> map) {
    return JobResourceProperties(
      managedComponentReferences: (() { final guardedValue = map['managedComponentReferences']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<ManagedComponentReference>(guardedValue, (value) => ManagedComponentReference.fromMap((value as Map).cast<String, dynamic>()))); })(),
      source: (() { final guardedValue = map['source']; if (guardedValue == null) return null; return pulumi.Input.fromValue(BuildResultUserSourceInfo.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      template: (() { final guardedValue = map['template']; if (guardedValue == null) return null; return pulumi.Input.fromValue(JobExecutionTemplate.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      triggerConfig: (() { final guardedValue = map['triggerConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ManualJobTriggerConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}

