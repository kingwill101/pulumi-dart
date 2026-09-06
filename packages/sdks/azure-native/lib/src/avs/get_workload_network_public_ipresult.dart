// ignore_for_file: unused_element, unnecessary_cast

import 'system_data_response.dart';

/// Result data returned by getWorkloadNetworkPublicIP.
class GetWorkloadNetworkPublicIPResult {
  /// The Azure API version of the resource.
  final String? azureApiVersion;
  /// Display name of the Public IP Block.
  final String? displayName;
  /// Fully qualified resource ID for the resource. E.g. "/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}"
  final String? id;
  /// The name of the resource
  final String? name;
  /// Number of Public IPs requested.
  final double? numberOfPublicIPs;
  /// The provisioning state
  final String? provisioningState;
  /// CIDR Block of the Public IP Block.
  final String? publicIPBlock;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  final SystemDataResponse? systemData;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  final String? type;

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
    this.azureApiVersion,
    this.displayName,
    this.id,
    this.name,
    this.numberOfPublicIPs,
    this.provisioningState,
    this.publicIPBlock,
    this.systemData,
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureApiVersion': ?azureApiVersion,
      'displayName': ?displayName,
      'id': ?id,
      'name': ?name,
      'numberOfPublicIPs': ?numberOfPublicIPs,
      'provisioningState': ?provisioningState,
      'publicIPBlock': ?publicIPBlock,
      'systemData': ?systemData?.toMap(),
      'type': ?type,
    };
  }

  factory GetWorkloadNetworkPublicIPResult.fromMap(Map<String, dynamic> map) {
    return GetWorkloadNetworkPublicIPResult(
      azureApiVersion: (() { final guardedValue = map['azureApiVersion']; if (guardedValue == null) return null; return guardedValue as String; })(),
      displayName: (() { final guardedValue = map['displayName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      numberOfPublicIPs: (() { final guardedValue = map['numberOfPublicIPs']; if (guardedValue == null) return null; return (guardedValue as num).toDouble(); })(),
      provisioningState: (() { final guardedValue = map['provisioningState']; if (guardedValue == null) return null; return guardedValue as String; })(),
      publicIPBlock: (() { final guardedValue = map['publicIPBlock']; if (guardedValue == null) return null; return guardedValue as String; })(),
      systemData: (() { final guardedValue = map['systemData']; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
