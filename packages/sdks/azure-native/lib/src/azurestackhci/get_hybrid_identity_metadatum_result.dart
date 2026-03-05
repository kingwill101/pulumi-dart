// ignore_for_file: unused_element, unnecessary_cast

import 'identity_response.dart';
import 'system_data_response.dart';

/// Result data returned by getHybridIdentityMetadatum.
class GetHybridIdentityMetadatumResult {
  /// The Azure API version of the resource.
  final String azureApiVersion;
  /// Fully qualified resource ID for the resource. Ex - /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}
  final String id;
  /// Identity for the resource.
  final IdentityResponse identity;
  /// The name of the resource
  final String name;
  /// The provisioning state.
  final String provisioningState;
  /// The Public Key.
  final String? publicKey;
  /// The unique identifier for the resource.
  final String? resourceUid;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  final SystemDataResponse systemData;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  final String type;

  /// Creates a new [GetHybridIdentityMetadatumResult].
  /// [azureApiVersion] The Azure API version of the resource.
  /// [id] Fully qualified resource ID for the resource. Ex - /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}
  /// [identity] Identity for the resource.
  /// [name] The name of the resource
  /// [provisioningState] The provisioning state.
  /// [publicKey] The Public Key.
  /// [resourceUid] The unique identifier for the resource.
  /// [systemData] Azure Resource Manager metadata containing createdBy and modifiedBy information.
  /// [type] The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  GetHybridIdentityMetadatumResult({
    required this.azureApiVersion,
    required this.id,
    required this.identity,
    required this.name,
    required this.provisioningState,
    this.publicKey,
    this.resourceUid,
    required this.systemData,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureApiVersion': azureApiVersion,
      'id': id,
      'identity': identity.toMap(),
      'name': name,
      'provisioningState': provisioningState,
      'publicKey': ?publicKey,
      'resourceUid': ?resourceUid,
      'systemData': systemData.toMap(),
      'type': type,
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
      resourceUid: (() { final guardedValue = map['resourceUid']; if (guardedValue == null) return null; return guardedValue as String; })(),
      systemData: SystemDataResponse.fromMap((map['systemData']! as Map).cast<String, dynamic>()),
      type: map['type'] as String,
    );
  }
}

