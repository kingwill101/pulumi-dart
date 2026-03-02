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
      managedComponentReferences: map['managedComponentReferences'] == null ? null : (pulumi.Input.decodeList<ManagedComponentReferenceResponse>(map['managedComponentReferences']!, (value) => ManagedComponentReferenceResponse.fromMap((value as Map).cast<String, dynamic>()))).input(),
      provisioningState: (map['provisioningState'] as String).input(),
      source: map['source'] == null ? null : (BuildResultUserSourceInfoResponse.fromMap((map['source']! as Map).cast<String, dynamic>())).input(),
      template: map['template'] == null ? null : (JobExecutionTemplateResponse.fromMap((map['template']! as Map).cast<String, dynamic>())).input(),
      triggerConfig: map['triggerConfig'] == null ? null : (ManualJobTriggerConfigResponse.fromMap((map['triggerConfig']! as Map).cast<String, dynamic>())).input(),
    );
  }
}

