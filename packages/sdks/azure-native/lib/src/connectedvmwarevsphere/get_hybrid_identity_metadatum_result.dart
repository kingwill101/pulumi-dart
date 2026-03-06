// ignore_for_file: unused_element, unnecessary_cast

import 'identity_response.dart';
import 'system_data_response.dart';

/// Result data returned by getHybridIdentityMetadatum.
class GetHybridIdentityMetadatumResult {
  /// The Azure API version of the resource.
  final String azureApiVersion;
  /// Fully qualified resource ID for the resource. E.g. "/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}"
  final String id;
  /// The identity of the resource.
  final IdentityResponse identity;
  /// The name of the resource
  final String name;
  /// Gets the provisioning state.
  final String provisioningState;
  /// Gets or sets the Public Key.
  final String? publicKey;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  final SystemDataResponse systemData;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  final String type;
  /// Gets or sets the Vm Id.
  final String? vmId;

  /// Creates a new [GetHybridIdentityMetadatumResult].
  /// [azureApiVersion] The Azure API version of the resource.
  /// [id] Fully qualified resource ID for the resource. E.g. "/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}"
  /// [identity] The identity of the resource.
  /// [name] The name of the resource
  /// [provisioningState] Gets the provisioning state.
  /// [publicKey] Gets or sets the Public Key.
  /// [systemData] Azure Resource Manager metadata containing createdBy and modifiedBy information.
  /// [type] The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  /// [vmId] Gets or sets the Vm Id.
  const GetHybridIdentityMetadatumResult({
    required this.azureApiVersion,
    required this.id,
    required this.identity,
    required this.name,
    required this.provisioningState,
    this.publicKey,
    required this.systemData,
    required this.type,
    this.vmId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureApiVersion': azureApiVersion,
      'id': id,
      'identity': identity.toMap(),
      'name': name,
      'provisioningState': provisioningState,
      'publicKey': ?publicKey,
      'systemData': systemData.toMap(),
      'type': type,
      'vmId': ?vmId,
    };
  }

  factory GetHybridIdentityMetadatumResult.fromMap(Map<String, dynamic> map) {
    return GetHybridIdentityMetadatumResult(
      azureApiVersion: map['azureApiVersion'] as String,
      id: map['id'] as String,
      identity: IdentityResponse.fromMap((map['identity']! as Map).cast<String, dynamic>()),
      name: map['name'] as String,
      provisioningState: map['provisioningState'] as String,
      publicKey: (() { final guardedValue = map['publicKey']; if (guardedValue == null) return null; return guardedValue as String; })(),
      systemData: SystemDataResponse.fromMap((map['systemData']! as Map).cast<String, dynamic>()),
      type: map['type'] as String,
      vmId: (() { final guardedValue = map['vmId']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}

