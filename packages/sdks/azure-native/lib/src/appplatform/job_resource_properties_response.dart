// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'build_result_user_source_info_response.dart';
import 'job_execution_template_response.dart';
import 'managed_component_reference_response.dart';
import 'manual_job_trigger_config_response.dart';

/// Job resource properties payload
class JobResourcePropertiesResponse {
  /// Referenced managed components collection
  final pulumi.Input<List<ManagedComponentReferenceResponse>>? managedComponentReferences;
  /// Provisioning state of the Job
  final pulumi.Input<String> provisioningState;
  /// Uploaded source information of the Job.
  final pulumi.Input<BuildResultUserSourceInfoResponse>? source;
  /// The template which is applied for all executions of the Job.
  final pulumi.Input<JobExecutionTemplateResponse>? template;
  /// The Job trigger related configuration.
  final pulumi.Input<ManualJobTriggerConfigResponse>? triggerConfig;

  /// Creates a new [JobResourcePropertiesResponse].
  /// [managedComponentReferences] Referenced managed components collection
  /// [provisioningState] Provisioning state of the Job
  /// [source] Uploaded source information of the Job.
  /// [template] The template which is applied for all executions of the Job.
  /// [triggerConfig] The Job trigger related configuration.
  JobResourcePropertiesResponse({
    this.managedComponentReferences,
    required this.provisioningState,
    this.source,
    this.template,
    this.triggerConfig,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'managedComponentReferences': ?pulumi.Input.mapOptionalInputValue<List<ManagedComponentReferenceResponse>, List<Map<String, dynamic>>>(managedComponentReferences, (value) => pulumi.Input.encodeList<ManagedComponentReferenceResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'provisioningState': provisioningState,
      'source': ?pulumi.Input.mapOptionalInputValue<BuildResultUserSourceInfoResponse, Map<String, dynamic>>(source, (value) => value.toMap()),
      'template': ?pulumi.Input.mapOptionalInputValue<JobExecutionTemplateResponse, Map<String, dynamic>>(template, (value) => value.toMap()),
      'triggerConfig': ?pulumi.Input.mapOptionalInputValue<ManualJobTriggerConfigResponse, Map<String, dynamic>>(triggerConfig, (value) => value.toMap()),
    };
  }

  factory JobResourcePropertiesResponse.fromMap(Map<String, dynamic> map) {
    return JobResourcePropertiesResponse(
      managedComponentReferences: (() { final guardedValue = map['managedComponentReferences']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<ManagedComponentReferenceResponse>(guardedValue, (value) => ManagedComponentReferenceResponse.fromMap((value as Map).cast<String, dynamic>()))); })(),
      provisioningState: pulumi.Input.fromValue(map['provisioningState'] as String),
      source: (() { final guardedValue = map['source']; if (guardedValue == null) return null; return pulumi.Input.fromValue(BuildResultUserSourceInfoResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      template: (() { final guardedValue = map['template']; if (guardedValue == null) return null; return pulumi.Input.fromValue(JobExecutionTemplateResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      triggerConfig: (() { final guardedValue = map['triggerConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ManualJobTriggerConfigResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}

