// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'action_on_unmanage_response.dart';
import 'deny_settings_response.dart';
import 'deployment_parameter_response.dart';
import 'deployment_stacks_debug_setting_response.dart';
import 'deployment_stacks_diagnostic_response.dart';
import 'deployment_stacks_parameters_link_response.dart';
import 'deployment_stacks_what_if_change_response.dart';
import 'error_detail_response.dart';

/// DeploymentStack WhatIfResult Properties
class DeploymentStacksWhatIfResultPropertiesResponse {
  /// Defines the behavior of resources that are no longer managed after the Deployment stack is updated or deleted.
  final ActionOnUnmanageResponse actionOnUnmanage;
  /// All of the changes predicted by the deployment stack what-if operation.
  final DeploymentStacksWhatIfChangeResponse changes;
  /// The correlation id of the last Deployment stack upsert or delete operation. It is in GUID format and is used for tracing.
  final String correlationId;
  /// The debug setting of the deployment.
  final DeploymentStacksDebugSettingResponse? debugSetting;
  /// Defines how resources deployed by the stack are locked.
  final DenySettingsResponse denySettings;
  /// The scope at which the initial deployment should be created. If a scope is not specified, it will default to the scope of the deployment stack. Valid scopes are: management group (format: '/providers/Microsoft.Management/managementGroups/{managementGroupId}'), subscription (format: '/subscriptions/{subscriptionId}'), resource group (format: '/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}').
  final String? deploymentScope;
  /// The timestamp for when the deployment stack was last modified. This can be used to determine if the what-if data is still current.
  final String deploymentStackLastModified;
  /// The deployment stack id to use as the basis for comparison.
  final String deploymentStackResourceId;
  /// Deployment stack description. Max length of 4096 characters.
  final String? description;
  /// List of resource diagnostics detected by What-If operation.
  final List<DeploymentStacksDiagnosticResponse> diagnostics;
  /// The error detail.
  final ErrorDetailResponse? error;
  /// Name and value pairs that define the deployment parameters for the template. Use this element when providing the parameter values directly in the request, rather than linking to an existing parameter file. Use either the parametersLink property or the parameters property, but not both.
  final Map<String, DeploymentParameterResponse>? parameters;
  /// The URI of parameters file. Use this element to link to an existing parameters file. Use either the parametersLink property or the parameters property, but not both.
  final DeploymentStacksParametersLinkResponse? parametersLink;
  /// State of the deployment stack.
  final String provisioningState;
  /// The interval to persist the deployment stack what-if result in ISO 8601 format.
  final String retentionInterval;
  /// The validation level of the deployment stack
  final String? validationLevel;

  /// Creates a new [DeploymentStacksWhatIfResultPropertiesResponse].
  /// [actionOnUnmanage] Defines the behavior of resources that are no longer managed after the Deployment stack is updated or deleted.
  /// [changes] All of the changes predicted by the deployment stack what-if operation.
  /// [correlationId] The correlation id of the last Deployment stack upsert or delete operation. It is in GUID format and is used for tracing.
  /// [debugSetting] The debug setting of the deployment.
  /// [denySettings] Defines how resources deployed by the stack are locked.
  /// [deploymentScope] The scope at which the initial deployment should be created. If a scope is not specified, it will default to the scope of the deployment stack. Valid scopes are: management group (format: '/providers/Microsoft.Management/managementGroups/{managementGroupId}'), subscription (format: '/subscriptions/{subscriptionId}'), resource group (format: '/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}').
  /// [deploymentStackLastModified] The timestamp for when the deployment stack was last modified. This can be used to determine if the what-if data is still current.
  /// [deploymentStackResourceId] The deployment stack id to use as the basis for comparison.
  /// [description] Deployment stack description. Max length of 4096 characters.
  /// [diagnostics] List of resource diagnostics detected by What-If operation.
  /// [error] The error detail.
  /// [parameters] Name and value pairs that define the deployment parameters for the template. Use this element when providing the parameter values directly in the request, rather than linking to an existing parameter file. Use either the parametersLink property or the parameters property, but not both.
  /// [parametersLink] The URI of parameters file. Use this element to link to an existing parameters file. Use either the parametersLink property or the parameters property, but not both.
  /// [provisioningState] State of the deployment stack.
  /// [retentionInterval] The interval to persist the deployment stack what-if result in ISO 8601 format.
  /// [validationLevel] The validation level of the deployment stack
  DeploymentStacksWhatIfResultPropertiesResponse({
    required this.actionOnUnmanage,
    required this.changes,
    required this.correlationId,
    this.debugSetting,
    required this.denySettings,
    this.deploymentScope,
    required this.deploymentStackLastModified,
    required this.deploymentStackResourceId,
    this.description,
    required this.diagnostics,
    this.error,
    this.parameters,
    this.parametersLink,
    required this.provisioningState,
    required this.retentionInterval,
    this.validationLevel,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'actionOnUnmanage': actionOnUnmanage.toMap(),
      'changes': changes.toMap(),
      'correlationId': correlationId,
      'debugSetting': ?debugSetting == null ? null : debugSetting!.toMap(),
      'denySettings': denySettings.toMap(),
      'deploymentScope': ?deploymentScope,
      'deploymentStackLastModified': deploymentStackLastModified,
      'deploymentStackResourceId': deploymentStackResourceId,
      'description': ?description,
      'diagnostics': pulumi.Input.encodeList<DeploymentStacksDiagnosticResponse, Map<String, dynamic>>(diagnostics, (value) => value.toMap()),
      'error': ?error == null ? null : error!.toMap(),
      'parameters': ?parameters == null ? null : pulumi.Input.encodeMapValues<DeploymentParameterResponse, Map<String, dynamic>>(parameters!, (value) => value.toMap()),
      'parametersLink': ?parametersLink == null ? null : parametersLink!.toMap(),
      'provisioningState': provisioningState,
      'retentionInterval': retentionInterval,
      'validationLevel': ?validationLevel,
    };
  }

  factory DeploymentStacksWhatIfResultPropertiesResponse.fromMap(Map<String, dynamic> map) {
    return DeploymentStacksWhatIfResultPropertiesResponse(
      actionOnUnmanage: ActionOnUnmanageResponse.fromMap((map['actionOnUnmanage'] as Map).cast<String, dynamic>()),
      changes: DeploymentStacksWhatIfChangeResponse.fromMap((map['changes'] as Map).cast<String, dynamic>()),
      correlationId: map['correlationId'] as String,
      debugSetting: map['debugSetting'] == null ? null : DeploymentStacksDebugSettingResponse.fromMap((map['debugSetting'] as Map).cast<String, dynamic>()),
      denySettings: DenySettingsResponse.fromMap((map['denySettings'] as Map).cast<String, dynamic>()),
      deploymentScope: map['deploymentScope'] == null ? null : map['deploymentScope'] as String,
      deploymentStackLastModified: map['deploymentStackLastModified'] as String,
      deploymentStackResourceId: map['deploymentStackResourceId'] as String,
      description: map['description'] == null ? null : map['description'] as String,
      diagnostics: pulumi.Input.decodeList<DeploymentStacksDiagnosticResponse>(map['diagnostics'], (value) => DeploymentStacksDiagnosticResponse.fromMap((value as Map).cast<String, dynamic>())),
      error: map['error'] == null ? null : ErrorDetailResponse.fromMap((map['error'] as Map).cast<String, dynamic>()),
      parameters: map['parameters'] == null ? null : pulumi.Input.decodeMapValues<DeploymentParameterResponse>(map['parameters'], (value) => DeploymentParameterResponse.fromMap((value as Map).cast<String, dynamic>())),
      parametersLink: map['parametersLink'] == null ? null : DeploymentStacksParametersLinkResponse.fromMap((map['parametersLink'] as Map).cast<String, dynamic>()),
      provisioningState: map['provisioningState'] as String,
      retentionInterval: map['retentionInterval'] as String,
      validationLevel: map['validationLevel'] == null ? null : map['validationLevel'] as String,
    );
  }
}

