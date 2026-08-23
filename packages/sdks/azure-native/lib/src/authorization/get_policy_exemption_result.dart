// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'resource_selector_response.dart';
import 'system_data_response.dart';

/// Result data returned by getPolicyExemption.
class GetPolicyExemptionResult {
  /// The option whether validate the exemption is at or under the assignment scope.
  final String? assignmentScopeValidation;
  /// The Azure API version of the resource.
  final String azureApiVersion;
  /// The description of the policy exemption.
  final String? description;
  /// The display name of the policy exemption.
  final String? displayName;
  /// The policy exemption category. Possible values are Waiver and Mitigated.
  final String exemptionCategory;
  /// The expiration date and time (in UTC ISO 8601 format yyyy-MM-ddTHH:mm:ssZ) of the policy exemption.
  final String? expiresOn;
  /// The ID of the policy exemption.
  final String id;
  /// The policy exemption metadata. Metadata is an open ended object and is typically a collection of key value pairs.
  final dynamic metadata;
  /// The name of the policy exemption.
  final String name;
  /// The ID of the policy assignment that is being exempted.
  final String policyAssignmentId;
  /// The policy definition reference ID list when the associated policy assignment is an assignment of a policy set definition.
  final List<String>? policyDefinitionReferenceIds;
  /// The resource selector list to filter policies by resource properties.
  final List<ResourceSelectorResponse>? resourceSelectors;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  final SystemDataResponse systemData;
  /// The type of the resource (Microsoft.Authorization/policyExemptions).
  final String type;

  /// Creates a new [GetPolicyExemptionResult].
  /// [assignmentScopeValidation] The option whether validate the exemption is at or under the assignment scope.
  /// [azureApiVersion] The Azure API version of the resource.
  /// [description] The description of the policy exemption.
  /// [displayName] The display name of the policy exemption.
  /// [exemptionCategory] The policy exemption category. Possible values are Waiver and Mitigated.
  /// [expiresOn] The expiration date and time (in UTC ISO 8601 format yyyy-MM-ddTHH:mm:ssZ) of the policy exemption.
  /// [id] The ID of the policy exemption.
  /// [metadata] The policy exemption metadata. Metadata is an open ended object and is typically a collection of key value pairs.
  /// [name] The name of the policy exemption.
  /// [policyAssignmentId] The ID of the policy assignment that is being exempted.
  /// [policyDefinitionReferenceIds] The policy definition reference ID list when the associated policy assignment is an assignment of a policy set definition.
  /// [resourceSelectors] The resource selector list to filter policies by resource properties.
  /// [systemData] Azure Resource Manager metadata containing createdBy and modifiedBy information.
  /// [type] The type of the resource (Microsoft.Authorization/policyExemptions).
  const GetPolicyExemptionResult({
    this.assignmentScopeValidation,
    required this.azureApiVersion,
    this.description,
    this.displayName,
    required this.exemptionCategory,
    this.expiresOn,
    required this.id,
    this.metadata,
    required this.name,
    required this.policyAssignmentId,
    this.policyDefinitionReferenceIds,
    this.resourceSelectors,
    required this.systemData,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'assignmentScopeValidation': ?assignmentScopeValidation,
      'azureApiVersion': azureApiVersion,
      'description': ?description,
      'displayName': ?displayName,
      'exemptionCategory': exemptionCategory,
      'expiresOn': ?expiresOn,
      'id': id,
      'metadata': ?metadata,
      'name': name,
      'policyAssignmentId': policyAssignmentId,
      'policyDefinitionReferenceIds': ?policyDefinitionReferenceIds,
      'resourceSelectors': ?(() { final guardedValue = resourceSelectors; if (guardedValue == null) return null; return pulumi.Input.encodeList<ResourceSelectorResponse, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'systemData': systemData.toMap(),
      'type': type,
    };
  }

  factory GetPolicyExemptionResult.fromMap(Map<String, dynamic> map) {
    return GetPolicyExemptionResult(
      assignmentScopeValidation: (() { final guardedValue = map['assignmentScopeValidation']; if (guardedValue == null) return null; return guardedValue as String; })(),
      azureApiVersion: map['azureApiVersion'] as String,
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return guardedValue as String; })(),
      displayName: (() { final guardedValue = map['displayName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      exemptionCategory: map['exemptionCategory'] as String,
      expiresOn: (() { final guardedValue = map['expiresOn']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: map['id'] as String,
      metadata: (() { final guardedValue = map['metadata']; if (guardedValue == null) return null; return guardedValue; })(),
      name: map['name'] as String,
      policyAssignmentId: map['policyAssignmentId'] as String,
      policyDefinitionReferenceIds: (() { final guardedValue = map['policyDefinitionReferenceIds']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
      resourceSelectors: (() { final guardedValue = map['resourceSelectors']; if (guardedValue == null) return null; return pulumi.Input.decodeList<ResourceSelectorResponse>(guardedValue, (value) => ResourceSelectorResponse.fromMap((value as Map).cast<String, dynamic>())); })(),
      systemData: SystemDataResponse.fromMap((map['systemData']! as Map).cast<String, dynamic>()),
      type: map['type'] as String,
    );
  }
}
