// ignore_for_file: unused_element, unnecessary_cast

import 'security_policy_web_application_firewall_parameters_response.dart';
import 'system_data_response.dart';

/// Result data returned by getSecurityPolicy.
class GetSecurityPolicyResult {
  /// The Azure API version of the resource.
  final String azureApiVersion;
  final String deploymentStatus;
  /// Fully qualified resource ID for the resource. E.g. "/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}"
  final String id;
  /// The name of the resource
  final String name;
  /// object which contains security policy parameters
  final SecurityPolicyWebApplicationFirewallParametersResponse? parameters;
  /// The name of the profile which holds the security policy.
  final String profileName;
  /// Provisioning status
  final String provisioningState;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  final SystemDataResponse systemData;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  final String type;

  /// Creates a new [GetSecurityPolicyResult].
  /// [azureApiVersion] The Azure API version of the resource.
  /// [deploymentStatus] Required.
  /// [id] Fully qualified resource ID for the resource. E.g. "/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}"
  /// [name] The name of the resource
  /// [parameters] object which contains security policy parameters
  /// [profileName] The name of the profile which holds the security policy.
  /// [provisioningState] Provisioning status
  /// [systemData] Azure Resource Manager metadata containing createdBy and modifiedBy information.
  /// [type] The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  GetSecurityPolicyResult({
    required this.azureApiVersion,
    required this.deploymentStatus,
    required this.id,
    required this.name,
    this.parameters,
    required this.profileName,
    required this.provisioningState,
    required this.systemData,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureApiVersion': azureApiVersion,
      'deploymentStatus': deploymentStatus,
      'id': id,
      'name': name,
      'parameters': ?parameters == null ? null : parameters!.toMap(),
      'profileName': profileName,
      'provisioningState': provisioningState,
      'systemData': systemData.toMap(),
      'type': type,
    };
  }

  factory GetSecurityPolicyResult.fromMap(Map<String, dynamic> map) {
    return GetSecurityPolicyResult(
      azureApiVersion: map['azureApiVersion'] as String,
      deploymentStatus: map['deploymentStatus'] as String,
      id: map['id'] as String,
      name: map['name'] as String,
      parameters: map['parameters'] == null ? null : SecurityPolicyWebApplicationFirewallParametersResponse.fromMap((map['parameters']! as Map).cast<String, dynamic>()),
      profileName: map['profileName'] as String,
      provisioningState: map['provisioningState'] as String,
      systemData: SystemDataResponse.fromMap((map['systemData'] as Map).cast<String, dynamic>()),
      type: map['type'] as String,
    );
  }
}

