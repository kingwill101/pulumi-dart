// ignore_for_file: unused_element, unnecessary_cast

import 'system_data_response.dart';

/// Result data returned by getDeploymentSafeguard.
class GetDeploymentSafeguardResult {
  /// The Azure API version of the resource.
  final String azureApiVersion;
  /// If eTag is provided in the response body, it may also be provided as a header per the normal etag convention.  Entity tags are used for comparing two or more entities from the same requested resource. HTTP/1.1 uses entity tags in the etag (section 14.19), If-Match (section 14.24), If-None-Match (section 14.26), and If-Range (section 14.27) header fields.
  final String eTag;
  /// User defined list of namespaces to exclude from Deployment Safeguards. Deployments in these namespaces will not be checked against any safeguards
  final List<String>? excludedNamespaces;
  /// Fully qualified resource ID for the resource. E.g. "/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}"
  final String id;
  /// The deployment safeguards level. Possible values are Warn and Enforce
  final String level;
  /// The name of the resource
  final String name;
  /// Provisioning State
  final String provisioningState;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  final SystemDataResponse systemData;
  /// System defined list of namespaces excluded from Deployment Safeguards. These are determined by the underlying provider (such as AKS), and cannot be changed. Deployments in these namespaces will not be checked
  final List<String> systemExcludedNamespaces;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  final String type;

  /// Creates a new [GetDeploymentSafeguardResult].
  /// [azureApiVersion] The Azure API version of the resource.
  /// [eTag] If eTag is provided in the response body, it may also be provided as a header per the normal etag convention.  Entity tags are used for comparing two or more entities from the same requested resource. HTTP/1.1 uses entity tags in the etag (section 14.19), If-Match (section 14.24), If-None-Match (section 14.26), and If-Range (section 14.27) header fields.
  /// [excludedNamespaces] User defined list of namespaces to exclude from Deployment Safeguards. Deployments in these namespaces will not be checked against any safeguards
  /// [id] Fully qualified resource ID for the resource. E.g. "/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}"
  /// [level] The deployment safeguards level. Possible values are Warn and Enforce
  /// [name] The name of the resource
  /// [provisioningState] Provisioning State
  /// [systemData] Azure Resource Manager metadata containing createdBy and modifiedBy information.
  /// [systemExcludedNamespaces] System defined list of namespaces excluded from Deployment Safeguards. These are determined by the underlying provider (such as AKS), and cannot be changed. Deployments in these namespaces will not be checked
  /// [type] The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  const GetDeploymentSafeguardResult({
    required this.azureApiVersion,
    required this.eTag,
    this.excludedNamespaces,
    required this.id,
    required this.level,
    required this.name,
    required this.provisioningState,
    required this.systemData,
    required this.systemExcludedNamespaces,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureApiVersion': azureApiVersion,
      'eTag': eTag,
      'excludedNamespaces': ?excludedNamespaces,
      'id': id,
      'level': level,
      'name': name,
      'provisioningState': provisioningState,
      'systemData': systemData.toMap(),
      'systemExcludedNamespaces': systemExcludedNamespaces,
      'type': type,
    };
  }

  factory GetDeploymentSafeguardResult.fromMap(Map<String, dynamic> map) {
    return GetDeploymentSafeguardResult(
      azureApiVersion: map['azureApiVersion'] as String,
      eTag: map['eTag'] as String,
      excludedNamespaces: (() { final guardedValue = map['excludedNamespaces']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
      id: map['id'] as String,
      level: map['level'] as String,
      name: map['name'] as String,
      provisioningState: map['provisioningState'] as String,
      systemData: SystemDataResponse.fromMap((map['systemData']! as Map).cast<String, dynamic>()),
      systemExcludedNamespaces: (map['systemExcludedNamespaces'] as List).cast<String>(),
      type: map['type'] as String,
    );
  }
}
