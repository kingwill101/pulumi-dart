// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'identity.dart';
import 'non_compliance_message.dart';
import 'override.dart';
import 'parameter_values_value.dart';
import 'resource_selector.dart';

/// {@template pulumi_authorization_policy_assignment_args_doc}
/// The set of arguments for PolicyAssignment.
/// {@endtemplate}
/// {@macro pulumi_authorization_policy_assignment_args_doc}
class PolicyAssignmentArgs {
  /// The type of policy assignment. Possible values are NotSpecified, System, SystemHidden, and Custom. Immutable.
  final pulumi.Input<dynamic>? assignmentType;
  /// The version of the policy definition to use.
  final pulumi.Input<String?>? definitionVersion;
  /// This message will be part of response in case of policy violation.
  final pulumi.Input<String?>? description;
  /// The display name of the policy assignment.
  final pulumi.Input<String?>? displayName;
  /// The policy assignment enforcement mode. Possible values are Default, DoNotEnforce, and Enroll
  final pulumi.Input<dynamic>? enforcementMode;
  /// The managed identity associated with the policy assignment.
  final pulumi.Input<Identity?>? identity;
  /// The location of the policy assignment. Only required when utilizing managed identity.
  final pulumi.Input<String?>? location;
  /// The policy assignment metadata. Metadata is an open ended object and is typically a collection of key value pairs.
  final pulumi.Input<dynamic>? metadata;
  /// The messages that describe why a resource is non-compliant with the policy.
  final pulumi.Input<List<NonComplianceMessage>?>? nonComplianceMessages;
  /// The policy's excluded scopes.
  final pulumi.Input<List<String>?>? notScopes;
  /// The policy property value override.
  final pulumi.Input<List<Override>?>? overrides;
  /// The parameter values for the assigned policy rule. The keys are the parameter names.
  final pulumi.Input<Map<String, ParameterValuesValue>?>? parameters;
  /// The name of the policy assignment.
  final pulumi.Input<String?>? policyAssignmentName;
  /// The ID of the policy definition or policy set definition being assigned.
  final pulumi.Input<String?>? policyDefinitionId;
  /// The resource selector list to filter policies by resource properties.
  final pulumi.Input<List<ResourceSelector>?>? resourceSelectors;
  /// The scope of the policy assignment. Valid scopes are: management group (format: '/providers/Microsoft.Management/managementGroups/{managementGroup}'), subscription (format: '/subscriptions/{subscriptionId}'), resource group (format: '/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}', or resource (format: '/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/[{parentResourcePath}/]{resourceType}/{resourceName}'
  final pulumi.Input<String> scope;

  /// Creates a new [PolicyAssignmentArgs].
  /// [assignmentType] The type of policy assignment. Possible values are NotSpecified, System, SystemHidden, and Custom. Immutable.
  /// [definitionVersion] The version of the policy definition to use.
  /// [description] This message will be part of response in case of policy violation.
  /// [displayName] The display name of the policy assignment.
  /// [enforcementMode] The policy assignment enforcement mode. Possible values are Default, DoNotEnforce, and Enroll
  /// [identity] The managed identity associated with the policy assignment.
  /// [location] The location of the policy assignment. Only required when utilizing managed identity.
  /// [metadata] The policy assignment metadata. Metadata is an open ended object and is typically a collection of key value pairs.
  /// [nonComplianceMessages] The messages that describe why a resource is non-compliant with the policy.
  /// [notScopes] The policy's excluded scopes.
  /// [overrides] The policy property value override.
  /// [parameters] The parameter values for the assigned policy rule. The keys are the parameter names.
  /// [policyAssignmentName] The name of the policy assignment.
  /// [policyDefinitionId] The ID of the policy definition or policy set definition being assigned.
  /// [resourceSelectors] The resource selector list to filter policies by resource properties.
  /// [scope] The scope of the policy assignment. Valid scopes are: management group (format: '/providers/Microsoft.Management/managementGroups/{managementGroup}'), subscription (format: '/subscriptions/{subscriptionId}'), resource group (format: '/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}', or resource (format: '/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/[{parentResourcePath}/]{resourceType}/{resourceName}'
  PolicyAssignmentArgs({
    this.assignmentType,
    this.definitionVersion,
    this.description,
    this.displayName,
    pulumi.Input<dynamic>? enforcementMode,
    this.identity,
    this.location,
    this.metadata,
    this.nonComplianceMessages,
    this.notScopes,
    this.overrides,
    this.parameters,
    this.policyAssignmentName,
    this.policyDefinitionId,
    this.resourceSelectors,
    required this.scope,
  }) : enforcementMode = enforcementMode ?? pulumi.Input.fromValue('Default');

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'assignmentType': ?assignmentType,
      'definitionVersion': ?definitionVersion,
      'description': ?description,
      'displayName': ?displayName,
      'enforcementMode': ?enforcementMode,
      'identity': ?pulumi.Input.mapOptionalInputValue<Identity, Map<String, dynamic>>(identity, (value) => value.toMap()),
      'location': ?location,
      'metadata': ?metadata,
      'nonComplianceMessages': ?pulumi.Input.mapOptionalInputValue<List<NonComplianceMessage>, List<Map<String, dynamic>>>(nonComplianceMessages, (value) => pulumi.Input.encodeList<NonComplianceMessage, Map<String, dynamic>>(value, (value) => value.toMap())),
      'notScopes': ?notScopes,
      'overrides': ?pulumi.Input.mapOptionalInputValue<List<Override>, List<Map<String, dynamic>>>(overrides, (value) => pulumi.Input.encodeList<Override, Map<String, dynamic>>(value, (value) => value.toMap())),
      'parameters': ?pulumi.Input.mapOptionalInputValue<Map<String, ParameterValuesValue>, Map<String, Map<String, dynamic>>>(parameters, (value) => pulumi.Input.encodeMapValues<ParameterValuesValue, Map<String, dynamic>>(value, (value) => value.toMap())),
      'policyAssignmentName': ?policyAssignmentName,
      'policyDefinitionId': ?policyDefinitionId,
      'resourceSelectors': ?pulumi.Input.mapOptionalInputValue<List<ResourceSelector>, List<Map<String, dynamic>>>(resourceSelectors, (value) => pulumi.Input.encodeList<ResourceSelector, Map<String, dynamic>>(value, (value) => value.toMap())),
      'scope': scope,
    };
  }

  factory PolicyAssignmentArgs.fromMap(Map<String, dynamic> map) {
    return PolicyAssignmentArgs(
      assignmentType: (() { final guardedValue = map['assignmentType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
      definitionVersion: (() { final guardedValue = map['definitionVersion']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      displayName: (() { final guardedValue = map['displayName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      enforcementMode: (() { final guardedValue = map['enforcementMode']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
      identity: (() { final guardedValue = map['identity']; if (guardedValue == null) return null; return pulumi.Input.fromValue(Identity.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      metadata: (() { final guardedValue = map['metadata']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
      nonComplianceMessages: (() { final guardedValue = map['nonComplianceMessages']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<NonComplianceMessage>(guardedValue, (value) => NonComplianceMessage.fromMap((value as Map).cast<String, dynamic>()))); })(),
      notScopes: (() { final guardedValue = map['notScopes']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      overrides: (() { final guardedValue = map['overrides']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<Override>(guardedValue, (value) => Override.fromMap((value as Map).cast<String, dynamic>()))); })(),
      parameters: (() { final guardedValue = map['parameters']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeMapValues<ParameterValuesValue>(guardedValue, (value) => ParameterValuesValue.fromMap((value as Map).cast<String, dynamic>()))); })(),
      policyAssignmentName: (() { final guardedValue = map['policyAssignmentName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      policyDefinitionId: (() { final guardedValue = map['policyDefinitionId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      resourceSelectors: (() { final guardedValue = map['resourceSelectors']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<ResourceSelector>(guardedValue, (value) => ResourceSelector.fromMap((value as Map).cast<String, dynamic>()))); })(),
      scope: pulumi.Input.fromValue(map['scope'] as String),
    );
  }
}
