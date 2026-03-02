// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'resource_policy_response.dart';
import 'system_data_response.dart';

/// Result data returned by getCurationProfile.
class GetCurationProfileResult {
  /// The Azure API version of the resource.
  final String azureApiVersion;
  /// Fully qualified resource ID for the resource. E.g. "/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}"
  final String id;
  /// The name of the resource
  final String name;
  /// The provisioning state of the resource.
  final String provisioningState;
  /// Resource policies that are a part of this curation profile.
  final List<ResourcePolicyResponse>? resourcePolicies;
  /// Resources that have access to the shared resources that are a part of this curation profile.
  final List<String>? scopes;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  final SystemDataResponse systemData;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  final String type;

  /// Creates a new [GetCurationProfileResult].
  /// [azureApiVersion] The Azure API version of the resource.
  /// [id] Fully qualified resource ID for the resource. E.g. "/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}"
  /// [name] The name of the resource
  /// [provisioningState] The provisioning state of the resource.
  /// [resourcePolicies] Resource policies that are a part of this curation profile.
  /// [scopes] Resources that have access to the shared resources that are a part of this curation profile.
  /// [systemData] Azure Resource Manager metadata containing createdBy and modifiedBy information.
  /// [type] The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  GetCurationProfileResult({
    required this.azureApiVersion,
    required this.id,
    required this.name,
    required this.provisioningState,
    this.resourcePolicies,
    this.scopes,
    required this.systemData,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureApiVersion': azureApiVersion,
      'id': id,
      'name': name,
      'provisioningState': provisioningState,
      'resourcePolicies': ?resourcePolicies == null ? null : pulumi.Input.encodeList<ResourcePolicyResponse, Map<String, dynamic>>(resourcePolicies!, (value) => value.toMap()),
      'scopes': ?scopes,
      'systemData': systemData.toMap(),
      'type': type,
    };
  }

  factory GetCurationProfileResult.fromMap(Map<String, dynamic> map) {
    return GetCurationProfileResult(
      azureApiVersion: map['azureApiVersion'] as String,
      id: map['id'] as String,
      name: map['name'] as String,
      provisioningState: map['provisioningState'] as String,
      resourcePolicies: map['resourcePolicies'] == null ? null : pulumi.Input.decodeList<ResourcePolicyResponse>(map['resourcePolicies']!, (value) => ResourcePolicyResponse.fromMap((value as Map).cast<String, dynamic>())),
      scopes: map['scopes'] == null ? null : (map['scopes']! as List).cast<String>(),
      systemData: SystemDataResponse.fromMap((map['systemData'] as Map).cast<String, dynamic>()),
      type: map['type'] as String,
    );
  }
}

