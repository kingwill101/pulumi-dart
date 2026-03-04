// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'identity_response.dart';
import 'non_compliance_message_response.dart';
import 'override_response.dart';
import 'parameter_values_value_response.dart';
import 'resource_selector_response.dart';
import 'system_data_response.dart';

/// Result data returned by getPolicyAssignment.
class GetPolicyAssignmentResult {
  /// The type of policy assignment. Possible values are NotSpecified, System, SystemHidden, and Custom. Immutable.
  final String? assignmentType;

  /// The Azure API version of the resource.
  final String azureApiVersion;

  /// The version of the policy definition to use.
  final String? definitionVersion;

  /// This message will be part of response in case of policy violation.
  final String? description;

  /// The display name of the policy assignment.
  final String? displayName;

  /// The effective version of the policy definition in use. This is only present if requested via the $expand query parameter.
  final String effectiveDefinitionVersion;

  /// The policy assignment enforcement mode. Possible values are Default, DoNotEnforce, and Enroll
  final String? enforcementMode;

  /// The ID of the policy assignment.
  final String id;

  /// The managed identity associated with the policy assignment.
  final IdentityResponse? identity;

  /// The instance ID of the policy assignment. This ID only and always changes when the assignment is deleted and recreated.
  final String instanceId;

  /// The latest version of the policy definition available. This is only present if requested via the $expand query parameter.
  final String latestDefinitionVersion;

  /// The location of the policy assignment. Only required when utilizing managed identity.
  final String? location;

  /// The policy assignment metadata. Metadata is an open ended object and is typically a collection of key value pairs.
  final dynamic metadata;

  /// The name of the policy assignment.
  final String name;

  /// The messages that describe why a resource is non-compliant with the policy.
  final List<NonComplianceMessageResponse>? nonComplianceMessages;

  /// The policy's excluded scopes.
  final List<String>? notScopes;

  /// The policy property value override.
  final List<OverrideResponse>? overrides;

  /// The parameter values for the assigned policy rule. The keys are the parameter names.
  final Map<String, ParameterValuesValueResponse>? parameters;

  /// The ID of the policy definition or policy set definition being assigned.
  final String? policyDefinitionId;

  /// The resource selector list to filter policies by resource properties.
  final List<ResourceSelectorResponse>? resourceSelectors;

  /// The scope for the policy assignment.
  final String scope;

  /// The system metadata relating to this resource.
  final SystemDataResponse systemData;

  /// The type of the policy assignment.
  final String type;

  /// Creates a new [GetPolicyAssignmentResult].
  /// [assignmentType] The type of policy assignment. Possible values are NotSpecified, System, SystemHidden, and Custom. Immutable.
  /// [azureApiVersion] The Azure API version of the resource.
  /// [definitionVersion] The version of the policy definition to use.
  /// [description] This message will be part of response in case of policy violation.
  /// [displayName] The display name of the policy assignment.
  /// [effectiveDefinitionVersion] The effective version of the policy definition in use. This is only present if requested via the $expand query parameter.
  /// [enforcementMode] The policy assignment enforcement mode. Possible values are Default, DoNotEnforce, and Enroll
  /// [id] The ID of the policy assignment.
  /// [identity] The managed identity associated with the policy assignment.
  /// [instanceId] The instance ID of the policy assignment. This ID only and always changes when the assignment is deleted and recreated.
  /// [latestDefinitionVersion] The latest version of the policy definition available. This is only present if requested via the $expand query parameter.
  /// [location] The location of the policy assignment. Only required when utilizing managed identity.
  /// [metadata] The policy assignment metadata. Metadata is an open ended object and is typically a collection of key value pairs.
  /// [name] The name of the policy assignment.
  /// [nonComplianceMessages] The messages that describe why a resource is non-compliant with the policy.
  /// [notScopes] The policy's excluded scopes.
  /// [overrides] The policy property value override.
  /// [parameters] The parameter values for the assigned policy rule. The keys are the parameter names.
  /// [policyDefinitionId] The ID of the policy definition or policy set definition being assigned.
  /// [resourceSelectors] The resource selector list to filter policies by resource properties.
  /// [scope] The scope for the policy assignment.
  /// [systemData] The system metadata relating to this resource.
  /// [type] The type of the policy assignment.
  GetPolicyAssignmentResult({
    this.assignmentType,
    required this.azureApiVersion,
    this.definitionVersion,
    this.description,
    this.displayName,
    required this.effectiveDefinitionVersion,
    this.enforcementMode,
    required this.id,
    this.identity,
    required this.instanceId,
    required this.latestDefinitionVersion,
    this.location,
    this.metadata,
    required this.name,
    this.nonComplianceMessages,
    this.notScopes,
    this.overrides,
    this.parameters,
    this.policyDefinitionId,
    this.resourceSelectors,
    required this.scope,
    required this.systemData,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'assignmentType': ?assignmentType,
      'azureApiVersion': azureApiVersion,
      'definitionVersion': ?definitionVersion,
      'description': ?description,
      'displayName': ?displayName,
      'effectiveDefinitionVersion': effectiveDefinitionVersion,
      'enforcementMode': ?enforcementMode,
      'id': id,
      'identity': ?identity?.toMap(),
      'instanceId': instanceId,
      'latestDefinitionVersion': latestDefinitionVersion,
      'location': ?location,
      'metadata': ?metadata,
      'name': name,
      'nonComplianceMessages': ?(() {
        final guardedValue = nonComplianceMessages;
        if (guardedValue == null) return null;
        return pulumi.Input.encodeList<
          NonComplianceMessageResponse,
          Map<String, dynamic>
        >(guardedValue, (value) => value.toMap());
      })(),
      'notScopes': ?notScopes,
      'overrides': ?(() {
        final guardedValue = overrides;
        if (guardedValue == null) return null;
        return pulumi.Input.encodeList<OverrideResponse, Map<String, dynamic>>(
          guardedValue,
          (value) => value.toMap(),
        );
      })(),
      'parameters': ?(() {
        final guardedValue = parameters;
        if (guardedValue == null) return null;
        return pulumi.Input.encodeMapValues<
          ParameterValuesValueResponse,
          Map<String, dynamic>
        >(guardedValue, (value) => value.toMap());
      })(),
      'policyDefinitionId': ?policyDefinitionId,
      'resourceSelectors': ?(() {
        final guardedValue = resourceSelectors;
        if (guardedValue == null) return null;
        return pulumi.Input.encodeList<
          ResourceSelectorResponse,
          Map<String, dynamic>
        >(guardedValue, (value) => value.toMap());
      })(),
      'scope': scope,
      'systemData': systemData.toMap(),
      'type': type,
    };
  }

  factory GetPolicyAssignmentResult.fromMap(Map<String, dynamic> map) {
    return GetPolicyAssignmentResult(
      assignmentType: (() {
        final guardedValue = map['assignmentType'];
        if (guardedValue == null) return null;
        return guardedValue as String;
      })(),
      azureApiVersion: map['azureApiVersion'] as String,
      definitionVersion: (() {
        final guardedValue = map['definitionVersion'];
        if (guardedValue == null) return null;
        return guardedValue as String;
      })(),
      description: (() {
        final guardedValue = map['description'];
        if (guardedValue == null) return null;
        return guardedValue as String;
      })(),
      displayName: (() {
        final guardedValue = map['displayName'];
        if (guardedValue == null) return null;
        return guardedValue as String;
      })(),
      effectiveDefinitionVersion: map['effectiveDefinitionVersion'] as String,
      enforcementMode: (() {
        final guardedValue = map['enforcementMode'];
        if (guardedValue == null) return null;
        return guardedValue as String;
      })(),
      id: map['id'] as String,
      identity: (() {
        final guardedValue = map['identity'];
        if (guardedValue == null) return null;
        return IdentityResponse.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      })(),
      instanceId: map['instanceId'] as String,
      latestDefinitionVersion: map['latestDefinitionVersion'] as String,
      location: (() {
        final guardedValue = map['location'];
        if (guardedValue == null) return null;
        return guardedValue as String;
      })(),
      metadata: (() {
        final guardedValue = map['metadata'];
        if (guardedValue == null) return null;
        return guardedValue;
      })(),
      name: map['name'] as String,
      nonComplianceMessages: (() {
        final guardedValue = map['nonComplianceMessages'];
        if (guardedValue == null) return null;
        return pulumi.Input.decodeList<NonComplianceMessageResponse>(
          guardedValue,
          (value) => NonComplianceMessageResponse.fromMap(
            (value as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      notScopes: (() {
        final guardedValue = map['notScopes'];
        if (guardedValue == null) return null;
        return (guardedValue as List).cast<String>();
      })(),
      overrides: (() {
        final guardedValue = map['overrides'];
        if (guardedValue == null) return null;
        return pulumi.Input.decodeList<OverrideResponse>(
          guardedValue,
          (value) =>
              OverrideResponse.fromMap((value as Map).cast<String, dynamic>()),
        );
      })(),
      parameters: (() {
        final guardedValue = map['parameters'];
        if (guardedValue == null) return null;
        return pulumi.Input.decodeMapValues<ParameterValuesValueResponse>(
          guardedValue,
          (value) => ParameterValuesValueResponse.fromMap(
            (value as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      policyDefinitionId: (() {
        final guardedValue = map['policyDefinitionId'];
        if (guardedValue == null) return null;
        return guardedValue as String;
      })(),
      resourceSelectors: (() {
        final guardedValue = map['resourceSelectors'];
        if (guardedValue == null) return null;
        return pulumi.Input.decodeList<ResourceSelectorResponse>(
          guardedValue,
          (value) => ResourceSelectorResponse.fromMap(
            (value as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      scope: map['scope'] as String,
      systemData: SystemDataResponse.fromMap(
        (map['systemData']! as Map).cast<String, dynamic>(),
      ),
      type: map['type'] as String,
    );
  }
}
