// ignore_for_file: unused_element, unnecessary_cast

import 'system_data_response.dart';

/// Result data returned by getWorkloadNetworkPublicIP.
class GetWorkloadNetworkPublicIPResult {
  /// The Azure API version of the resource.
  final String azureApiVersion;
  /// Display name of the Public IP Block.
  final String? displayName;
  /// Fully qualified resource ID for the resource. E.g. "/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}"
  final String id;
  /// The name of the resource
  final String name;
  /// Number of Public IPs requested.
  final double? numberOfPublicIPs;
  /// The provisioning state
  final String provisioningState;
  /// CIDR Block of the Public IP Block.
  final String publicIPBlock;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  final SystemDataResponse systemData;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  final String type;

  /// Creates a new [GetWorkloadNetworkPublicIPResult].
  /// [azureApiVersion] The Azure API version of the resource.
  /// [displayName] Display name of the Public IP Block.
  /// [id] Fully qualified resource ID for the resource. E.g. "/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}"
  /// [name] The name of the resource
  /// [numberOfPublicIPs] Number of Public IPs requested.
  /// [provisioningState] The provisioning state
  /// [publicIPBlock] CIDR Block of the Public IP Block.
  /// [systemData] Azure Resource Manager metadata containing createdBy and modifiedBy information.
  /// [type] The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  const GetWorkloadNetworkPublicIPResult({
    required this.azureApiVersion,
    this.displayName,
    required this.id,
    required this.name,
    this.numberOfPublicIPs,
    required this.provisioningState,
    required this.publicIPBlock,
    required this.systemData,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureApiVersion': azureApiVersion,
      'displayName': ?displayName,
      'id': id,
      'name': name,
      'numberOfPublicIPs': ?numberOfPublicIPs,
      'provisioningState': provisioningState,
      'publicIPBlock': publicIPBlock,
      'systemData': systemData.toMap(),
      'type': type,
    };
  }

  factory GetWorkloadNetworkPublicIPResult.fromMap(Map<String, dynamic> map) {
    return GetWorkloadNetworkPublicIPResult(
      azureApiVersion: map['azureApiVersion'] as String,
      displayName: (() { final guardedValue = map['displayName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: map['id'] as String,
      name: map['name'] as String,
      numberOfPublicIPs: (() { final guardedValue = map['numberOfPublicIPs']; if (guardedValue == null) return null; return guardedValue as double; })(),
      provisioningState: map['provisioningState'] as String,
      publicIPBlock: map['publicIPBlock'] as String,
      systemData: SystemDataResponse.fromMap((map['systemData']! as Map).cast<String, dynamic>()),
      type: map['type'] as String,
    );
  }
}
