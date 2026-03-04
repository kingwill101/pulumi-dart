// ignore_for_file: unused_element, unnecessary_cast

import 'system_data_response.dart';

/// Result data returned by getHcxEnterpriseSite.
class GetHcxEnterpriseSiteResult {
  /// The activation key
  final String activationKey;

  /// The Azure API version of the resource.
  final String azureApiVersion;

  /// Fully qualified resource ID for the resource. E.g. "/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}"
  final String id;

  /// The name of the resource
  final String name;

  /// The provisioning state of the resource.
  final String provisioningState;

  /// The status of the HCX Enterprise Site
  final String status;

  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  final SystemDataResponse systemData;

  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  final String type;

  /// Creates a new [GetHcxEnterpriseSiteResult].
  /// [activationKey] The activation key
  /// [azureApiVersion] The Azure API version of the resource.
  /// [id] Fully qualified resource ID for the resource. E.g. "/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}"
  /// [name] The name of the resource
  /// [provisioningState] The provisioning state of the resource.
  /// [status] The status of the HCX Enterprise Site
  /// [systemData] Azure Resource Manager metadata containing createdBy and modifiedBy information.
  /// [type] The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  GetHcxEnterpriseSiteResult({
    required this.activationKey,
    required this.azureApiVersion,
    required this.id,
    required this.name,
    required this.provisioningState,
    required this.status,
    required this.systemData,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'activationKey': activationKey,
      'azureApiVersion': azureApiVersion,
      'id': id,
      'name': name,
      'provisioningState': provisioningState,
      'status': status,
      'systemData': systemData.toMap(),
      'type': type,
    };
  }

  factory GetHcxEnterpriseSiteResult.fromMap(Map<String, dynamic> map) {
    return GetHcxEnterpriseSiteResult(
      activationKey: map['activationKey'] as String,
      azureApiVersion: map['azureApiVersion'] as String,
      id: map['id'] as String,
      name: map['name'] as String,
      provisioningState: map['provisioningState'] as String,
      status: map['status'] as String,
      systemData: SystemDataResponse.fromMap(
        (map['systemData']! as Map).cast<String, dynamic>(),
      ),
      type: map['type'] as String,
    );
  }
}
