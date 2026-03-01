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
      'identity': ?identity == null ? null : identity!.toMap(),
      'instanceId': instanceId,
      'latestDefinitionVersion': latestDefinitionVersion,
      'location': ?location,
      'metadata': ?metadata,
      'name': name,
      'nonComplianceMessages': ?nonComplianceMessages == null ? null : pulumi.Input.encodeList<NonComplianceMessageResponse, Map<String, dynamic>>(nonComplianceMessages!, (value) => value.toMap()),
      'notScopes': ?notScopes,
      'overrides': ?overrides == null ? null : pulumi.Input.encodeList<OverrideResponse, Map<String, dynamic>>(overrides!, (value) => value.toMap()),
      'parameters': ?parameters == null ? null : pulumi.Input.encodeMapValues<ParameterValuesValueResponse, Map<String, dynamic>>(parameters!, (value) => value.toMap()),
      'policyDefinitionId': ?policyDefinitionId,
      'resourceSelectors': ?resourceSelectors == null ? null : pulumi.Input.encodeList<ResourceSelectorResponse, Map<String, dynamic>>(resourceSelectors!, (value) => value.toMap()),
      'scope': scope,
      'systemData': systemData.toMap(),
      'type': type,
    };
  }

  factory GetPolicyAssignmentResult.fromMap(Map<String, dynamic> map) {
    return GetPolicyAssignmentResult(
      assignmentType: map['assignmentType'] == null ? null : map['assignmentType'] as String,
      azureApiVersion: map['azureApiVersion'] as String,
      definitionVersion: map['definitionVersion'] == null ? null : map['definitionVersion'] as String,
      description: map['description'] == null ? null : map['description'] as String,
      displayName: map['displayName'] == null ? null : map['displayName'] as String,
      effectiveDefinitionVersion: map['effectiveDefinitionVersion'] as String,
      enforcementMode: map['enforcementMode'] == null ? null : map['enforcementMode'] as String,
      id: map['id'] as String,
      identity: map['identity'] == null ? null : IdentityResponse.fromMap((map['identity'] as Map).cast<String, dynamic>()),
      instanceId: map['instanceId'] as String,
      latestDefinitionVersion: map['latestDefinitionVersion'] as String,
      location: map['location'] == null ? null : map['location'] as String,
      metadata: map['metadata'] == null ? null : map['metadata'],
      name: map['name'] as String,
      nonComplianceMessages: map['nonComplianceMessages'] == null ? null : pulumi.Input.decodeList<NonComplianceMessageResponse>(map['nonComplianceMessages'], (value) => NonComplianceMessageResponse.fromMap((value as Map).cast<String, dynamic>())),
      notScopes: map['notScopes'] == null ? null : (map['notScopes'] as List).cast<String>(),
      overrides: map['overrides'] == null ? null : pulumi.Input.decodeList<OverrideResponse>(map['overrides'], (value) => OverrideResponse.fromMap((value as Map).cast<String, dynamic>())),
      parameters: map['parameters'] == null ? null : pulumi.Input.decodeMapValues<ParameterValuesValueResponse>(map['parameters'], (value) => ParameterValuesValueResponse.fromMap((value as Map).cast<String, dynamic>())),
      policyDefinitionId: map['policyDefinitionId'] == null ? null : map['policyDefinitionId'] as String,
      resourceSelectors: map['resourceSelectors'] == null ? null : pulumi.Input.decodeList<ResourceSelectorResponse>(map['resourceSelectors'], (value) => ResourceSelectorResponse.fromMap((value as Map).cast<String, dynamic>())),
      scope: map['scope'] as String,
      systemData: SystemDataResponse.fromMap((map['systemData'] as Map).cast<String, dynamic>()),
      type: map['type'] as String,
    );
  }
}

