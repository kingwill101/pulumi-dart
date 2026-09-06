// ignore_for_file: unused_element, unnecessary_cast

import 'identity_response.dart';
import 'system_data_response.dart';

/// Result data returned by getHybridIdentityMetadatum.
class GetHybridIdentityMetadatumResult {
  /// The Azure API version of the resource.
  final String? azureApiVersion;
  /// Fully qualified resource ID for the resource. Ex - /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}
  final String? id;
  /// Identity for the resource.
  final IdentityResponse? identity;
  /// The name of the resource
  final String? name;
  /// The provisioning state.
  final String? provisioningState;
  /// The Public Key.
  final String? publicKey;
  /// The unique identifier for the resource.
  final String? resourceUid;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  final SystemDataResponse? systemData;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  final String? type;

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
  const GetHybridIdentityMetadatumResult({
    this.azureApiVersion,
    this.id,
    this.identity,
    this.name,
    this.provisioningState,
    this.publicKey,
    this.resourceUid,
    this.systemData,
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureApiVersion': ?azureApiVersion,
      'id': ?id,
      'identity': ?identity?.toMap(),
      'name': ?name,
      'provisioningState': ?provisioningState,
      'publicKey': ?publicKey,
      'resourceUid': ?resourceUid,
      'systemData': ?systemData?.toMap(),
      'type': ?type,
    };
  }

  factory GetHybridIdentityMetadatumResult.fromMap(Map<String, dynamic> map) {
    return GetHybridIdentityMetadatumResult(
      azureApiVersion: (() { final guardedValue = map['azureApiVersion']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      identity: (() { final guardedValue = map['identity']; if (guardedValue == null) return null; return IdentityResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      provisioningState: (() { final guardedValue = map['provisioningState']; if (guardedValue == null) return null; return guardedValue as String; })(),
      publicKey: (() { final guardedValue = map['publicKey']; if (guardedValue == null) return null; return guardedValue as String; })(),
      resourceUid: (() { final guardedValue = map['resourceUid']; if (guardedValue == null) return null; return guardedValue as String; })(),
      systemData: (() { final guardedValue = map['systemData']; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
