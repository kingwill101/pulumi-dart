// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'build_result_user_source_info_response.dart';
import 'job_execution_template_response.dart';
import 'managed_component_reference_response.dart';
import 'manual_job_trigger_config_response.dart';

/// Job resource properties payload
class JobResourcePropertiesResponse {
  /// Referenced managed components collection
  final List<ManagedComponentReferenceResponse>? managedComponentReferences;
  /// Provisioning state of the Job
  final String provisioningState;
  /// Uploaded source information of the Job.
  final BuildResultUserSourceInfoResponse? source;
  /// The template which is applied for all executions of the Job.
  final JobExecutionTemplateResponse? template;
  /// The Job trigger related configuration.
  final ManualJobTriggerConfigResponse? triggerConfig;

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
      'managedComponentReferences': ?managedComponentReferences == null ? null : pulumi.Input.encodeList<ManagedComponentReferenceResponse, Map<String, dynamic>>(managedComponentReferences!, (value) => value.toMap()),
      'provisioningState': provisioningState,
      'source': ?source == null ? null : source!.toMap(),
      'template': ?template == null ? null : template!.toMap(),
      'triggerConfig': ?triggerConfig == null ? null : triggerConfig!.toMap(),
    };
  }

  factory JobResourcePropertiesResponse.fromMap(Map<String, dynamic> map) {
    return JobResourcePropertiesResponse(
      managedComponentReferences: map['managedComponentReferences'] == null ? null : pulumi.Input.decodeList<ManagedComponentReferenceResponse>(map['managedComponentReferences'], (value) => ManagedComponentReferenceResponse.fromMap((value as Map).cast<String, dynamic>())),
      provisioningState: map['provisioningState'] as String,
      source: map['source'] == null ? null : BuildResultUserSourceInfoResponse.fromMap((map['source'] as Map).cast<String, dynamic>()),
      template: map['template'] == null ? null : JobExecutionTemplateResponse.fromMap((map['template'] as Map).cast<String, dynamic>()),
      triggerConfig: map['triggerConfig'] == null ? null : ManualJobTriggerConfigResponse.fromMap((map['triggerConfig'] as Map).cast<String, dynamic>()),
    );
  }
}

