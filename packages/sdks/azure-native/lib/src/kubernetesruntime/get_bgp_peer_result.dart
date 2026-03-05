// ignore_for_file: unused_element, unnecessary_cast

import 'system_data_response.dart';

/// Result data returned by getBgpPeer.
class GetBgpPeerResult {
  /// The Azure API version of the resource.
  final String azureApiVersion;
  /// Fully qualified resource ID for the resource. E.g. "/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}"
  final String id;
  /// My ASN
  final int myAsn;
  /// The name of the resource
  final String name;
  /// Peer Address
  final String peerAddress;
  /// Peer ASN
  final int peerAsn;
  /// Resource provision state
  final String provisioningState;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  final SystemDataResponse systemData;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  final String type;

  /// Creates a new [GetBgpPeerResult].
  /// [azureApiVersion] The Azure API version of the resource.
  /// [id] Fully qualified resource ID for the resource. E.g. "/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}"
  /// [myAsn] My ASN
  /// [name] The name of the resource
  /// [peerAddress] Peer Address
  /// [peerAsn] Peer ASN
  /// [provisioningState] Resource provision state
  /// [systemData] Azure Resource Manager metadata containing createdBy and modifiedBy information.
  /// [type] The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  GetBgpPeerResult({
    required this.azureApiVersion,
    required this.id,
    required this.myAsn,
    required this.name,
    required this.peerAddress,
    required this.peerAsn,
    required this.provisioningState,
    required this.systemData,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureApiVersion': azureApiVersion,
      'id': id,
      'myAsn': myAsn,
      'name': name,
      'peerAddress': peerAddress,
      'peerAsn': peerAsn,
      'provisioningState': provisioningState,
      'systemData': systemData.toMap(),
      'type': type,
    };
  }

  factory GetBgpPeerResult.fromMap(Map<String, dynamic> map) {
    return GetBgpPeerResult(
      azureApiVersion: map['azureApiVersion'] as String,
      id: map['id'] as String,
      myAsn: map['myAsn'] as int,
      name: map['name'] as String,
      peerAddress: map['peerAddress'] as String,
      peerAsn: map['peerAsn'] as int,
      provisioningState: map['provisioningState'] as String,
      systemData: SystemDataResponse.fromMap((map['systemData']! as Map).cast<String, dynamic>()),
      type: map['type'] as String,
    );
  }
}

