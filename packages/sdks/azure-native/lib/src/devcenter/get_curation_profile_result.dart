// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'resource_policy_response.dart';
import 'system_data_response.dart';

/// Result data returned by getCurationProfile.
class GetCurationProfileResult {
  /// The Azure API version of the resource.
  final String? azureApiVersion;
  /// Fully qualified resource ID for the resource. E.g. "/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}"
  final String? id;
  /// The name of the resource
  final String? name;
  /// The provisioning state of the resource.
  final String? provisioningState;
  /// Resource policies that are a part of this curation profile.
  final List<ResourcePolicyResponse>? resourcePolicies;
  /// Resources that have access to the shared resources that are a part of this curation profile.
  final List<String>? scopes;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  final SystemDataResponse? systemData;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  final String? type;

  /// Creates a new [GetCurationProfileResult].
  /// [azureApiVersion] The Azure API version of the resource.
  /// [id] Fully qualified resource ID for the resource. E.g. "/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}"
  /// [name] The name of the resource
  /// [provisioningState] The provisioning state of the resource.
  /// [resourcePolicies] Resource policies that are a part of this curation profile.
  /// [scopes] Resources that have access to the shared resources that are a part of this curation profile.
  /// [systemData] Azure Resource Manager metadata containing createdBy and modifiedBy information.
  /// [type] The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  const GetCurationProfileResult({
    this.azureApiVersion,
    this.id,
    this.name,
    this.provisioningState,
    this.resourcePolicies,
    this.scopes,
    this.systemData,
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureApiVersion': ?azureApiVersion,
      'id': ?id,
      'name': ?name,
      'provisioningState': ?provisioningState,
      'resourcePolicies': ?(() { final guardedValue = resourcePolicies; if (guardedValue == null) return null; return pulumi.Input.encodeList<ResourcePolicyResponse, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'scopes': ?scopes,
      'systemData': ?systemData?.toMap(),
      'type': ?type,
    };
  }

  factory GetCurationProfileResult.fromMap(Map<String, dynamic> map) {
    return GetCurationProfileResult(
      azureApiVersion: (() { final guardedValue = map['azureApiVersion']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      provisioningState: (() { final guardedValue = map['provisioningState']; if (guardedValue == null) return null; return guardedValue as String; })(),
      resourcePolicies: (() { final guardedValue = map['resourcePolicies']; if (guardedValue == null) return null; return pulumi.Input.decodeList<ResourcePolicyResponse>(guardedValue, (value) => ResourcePolicyResponse.fromMap((value as Map).cast<String, dynamic>())); })(),
      scopes: (() { final guardedValue = map['scopes']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
      systemData: (() { final guardedValue = map['systemData']; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
