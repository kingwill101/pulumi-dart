// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'blob_nfs_target_response.dart';
import 'clfs_target_response.dart';
import 'namespace_junction_response.dart';
import 'nfs3_target_response.dart';
import 'system_data_response.dart';
import 'unknown_target_response.dart';

/// Result data returned by getStorageTarget.
class GetStorageTargetResult {
  /// The percentage of cache space allocated for this storage target
  final int allocationPercentage;
  /// The Azure API version of the resource.
  final String azureApiVersion;
  /// Properties when targetType is blobNfs.
  final BlobNfsTargetResponse? blobNfs;
  /// Properties when targetType is clfs.
  final ClfsTargetResponse? clfs;
  /// Resource ID of the Storage Target.
  final String id;
  /// List of cache namespace junctions to target for namespace associations.
  final List<NamespaceJunctionResponse>? junctions;
  /// Region name string.
  final String location;
  /// Name of the Storage Target.
  final String name;
  /// Properties when targetType is nfs3.
  final Nfs3TargetResponse? nfs3;
  /// ARM provisioning state, see https://github.com/Azure/azure-resource-manager-rpc/blob/master/v1.0/Addendum.md#provisioningstate-property
  final String provisioningState;
  /// Storage target operational state.
  final String? state;
  /// The system meta data relating to this resource.
  final SystemDataResponse systemData;
  /// Type of the Storage Target.
  final String targetType;
  /// Type of the Storage Target; Microsoft.StorageCache/Cache/StorageTarget
  final String type;
  /// Properties when targetType is unknown.
  final UnknownTargetResponse? unknown;

  /// Creates a new [GetStorageTargetResult].
  /// [allocationPercentage] The percentage of cache space allocated for this storage target
  /// [azureApiVersion] The Azure API version of the resource.
  /// [blobNfs] Properties when targetType is blobNfs.
  /// [clfs] Properties when targetType is clfs.
  /// [id] Resource ID of the Storage Target.
  /// [junctions] List of cache namespace junctions to target for namespace associations.
  /// [location] Region name string.
  /// [name] Name of the Storage Target.
  /// [nfs3] Properties when targetType is nfs3.
  /// [provisioningState] ARM provisioning state, see https://github.com/Azure/azure-resource-manager-rpc/blob/master/v1.0/Addendum.md#provisioningstate-property
  /// [state] Storage target operational state.
  /// [systemData] The system meta data relating to this resource.
  /// [targetType] Type of the Storage Target.
  /// [type] Type of the Storage Target; Microsoft.StorageCache/Cache/StorageTarget
  /// [unknown] Properties when targetType is unknown.
  GetStorageTargetResult({
    required this.allocationPercentage,
    required this.azureApiVersion,
    this.blobNfs,
    this.clfs,
    required this.id,
    this.junctions,
    required this.location,
    required this.name,
    this.nfs3,
    required this.provisioningState,
    this.state,
    required this.systemData,
    required this.targetType,
    required this.type,
    this.unknown,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'allocationPercentage': allocationPercentage,
      'azureApiVersion': azureApiVersion,
      'blobNfs': ?blobNfs == null ? null : blobNfs!.toMap(),
      'clfs': ?clfs == null ? null : clfs!.toMap(),
      'id': id,
      'junctions': ?junctions == null ? null : pulumi.Input.encodeList<NamespaceJunctionResponse, Map<String, dynamic>>(junctions!, (value) => value.toMap()),
      'location': location,
      'name': name,
      'nfs3': ?nfs3 == null ? null : nfs3!.toMap(),
      'provisioningState': provisioningState,
      'state': ?state,
      'systemData': systemData.toMap(),
      'targetType': targetType,
      'type': type,
      'unknown': ?unknown == null ? null : unknown!.toMap(),
    };
  }

  factory GetStorageTargetResult.fromMap(Map<String, dynamic> map) {
    return GetStorageTargetResult(
      allocationPercentage: map['allocationPercentage'] as int,
      azureApiVersion: map['azureApiVersion'] as String,
      blobNfs: map['blobNfs'] == null ? null : BlobNfsTargetResponse.fromMap((map['blobNfs'] as Map).cast<String, dynamic>()),
      clfs: map['clfs'] == null ? null : ClfsTargetResponse.fromMap((map['clfs'] as Map).cast<String, dynamic>()),
      id: map['id'] as String,
      junctions: map['junctions'] == null ? null : pulumi.Input.decodeList<NamespaceJunctionResponse>(map['junctions'], (value) => NamespaceJunctionResponse.fromMap((value as Map).cast<String, dynamic>())),
      location: map['location'] as String,
      name: map['name'] as String,
      nfs3: map['nfs3'] == null ? null : Nfs3TargetResponse.fromMap((map['nfs3'] as Map).cast<String, dynamic>()),
      provisioningState: map['provisioningState'] as String,
      state: map['state'] == null ? null : map['state'] as String,
      systemData: SystemDataResponse.fromMap((map['systemData'] as Map).cast<String, dynamic>()),
      targetType: map['targetType'] as String,
      type: map['type'] as String,
      unknown: map['unknown'] == null ? null : UnknownTargetResponse.fromMap((map['unknown'] as Map).cast<String, dynamic>()),
    );
  }
}

