// ignore_for_file: unused_element, unnecessary_cast

import 'provisioned_cluster_identity_response.dart';
import 'system_data_response.dart';

/// Result data returned by getHybridIdentityMetadatum.
class GetHybridIdentityMetadatumResult {
  /// The Azure API version of the resource.
  final String azureApiVersion;
  /// Fully qualified resource ID for the resource. Ex - /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}
  final String id;
  /// The identity of the provisioned cluster.
  final ProvisionedClusterIdentityResponse? identity;
  /// The name of the resource
  final String name;
  /// provisioning state of the hybridIdentityMetadata resource.
  final String provisioningState;
  /// Onboarding public key for provisioning the Managed identity for the HybridAKS cluster.
  final String? publicKey;
  /// Unique id of the parent provisioned cluster resource.
  final String? resourceUid;
  /// The system data.
  final SystemDataResponse systemData;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  final String type;

  /// Creates a new [GetHybridIdentityMetadatumResult].
  /// [azureApiVersion] The Azure API version of the resource.
  /// [id] Fully qualified resource ID for the resource. Ex - /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}
  /// [identity] The identity of the provisioned cluster.
  /// [name] The name of the resource
  /// [provisioningState] provisioning state of the hybridIdentityMetadata resource.
  /// [publicKey] Onboarding public key for provisioning the Managed identity for the HybridAKS cluster.
  /// [resourceUid] Unique id of the parent provisioned cluster resource.
  /// [systemData] The system data.
  /// [type] The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  GetHybridIdentityMetadatumResult({
    required this.azureApiVersion,
    required this.id,
    this.identity,
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
      'identity': ?identity == null ? null : identity!.toMap(),
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
      identity: map['identity'] == null ? null : ProvisionedClusterIdentityResponse.fromMap((map['identity'] as Map).cast<String, dynamic>()),
      name: map['name'] as String,
      provisioningState: map['provisioningState'] as String,
      publicKey: map['publicKey'] == null ? null : map['publicKey'] as String,
      resourceUid: map['resourceUid'] == null ? null : map['resourceUid'] as String,
      systemData: SystemDataResponse.fromMap((map['systemData'] as Map).cast<String, dynamic>()),
      type: map['type'] as String,
    );
  }
}

