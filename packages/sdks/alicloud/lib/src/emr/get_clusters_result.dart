// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_clusters_cluster.dart';

/// Result data returned by getClusters.
class GetClustersResult {
  final String? clusterName;
  final List<String>? clusterTypeLists;
  final List<GetClustersCluster> clusters;
  final String? createType;
  final bool? defaultStatus;
  final String? depositType;
  final bool? enableDetails;
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  final List<String> ids;
  final bool? isDesc;
  final String? machineType;
  final String? nameRegex;
  final List<String> names;
  final String? outputFile;
  final int? pageNumber;
  final int? pageSize;
  final String? resourceGroupId;
  final List<String>? statusLists;
  final int totalCount;
  final String? vpcId;

  /// Creates a new [GetClustersResult].
  /// [clusterName] Optional.
  /// [clusterTypeLists] Optional.
  /// [clusters] Required.
  /// [createType] Optional.
  /// [defaultStatus] Optional.
  /// [depositType] Optional.
  /// [enableDetails] Optional.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [ids] Required.
  /// [isDesc] Optional.
  /// [machineType] Optional.
  /// [nameRegex] Optional.
  /// [names] Required.
  /// [outputFile] Optional.
  /// [pageNumber] Optional.
  /// [pageSize] Optional.
  /// [resourceGroupId] Optional.
  /// [statusLists] Optional.
  /// [totalCount] Required.
  /// [vpcId] Optional.
  GetClustersResult({
    this.clusterName,
    this.clusterTypeLists,
    required this.clusters,
    this.createType,
    this.defaultStatus,
    this.depositType,
    this.enableDetails,
    required this.id,
    required this.ids,
    this.isDesc,
    this.machineType,
    this.nameRegex,
    required this.names,
    this.outputFile,
    this.pageNumber,
    this.pageSize,
    this.resourceGroupId,
    this.statusLists,
    required this.totalCount,
    this.vpcId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'clusterName': ?clusterName,
      'clusterTypeLists': ?clusterTypeLists,
      'clusters': pulumi.Input.encodeList<GetClustersCluster, Map<String, dynamic>>(clusters, (value) => value.toMap()),
      'createType': ?createType,
      'defaultStatus': ?defaultStatus,
      'depositType': ?depositType,
      'enableDetails': ?enableDetails,
      'id': id,
      'ids': ids,
      'isDesc': ?isDesc,
      'machineType': ?machineType,
      'nameRegex': ?nameRegex,
      'names': names,
      'outputFile': ?outputFile,
      'pageNumber': ?pageNumber,
      'pageSize': ?pageSize,
      'resourceGroupId': ?resourceGroupId,
      'statusLists': ?statusLists,
      'totalCount': totalCount,
      'vpcId': ?vpcId,
    };
  }

  factory GetClustersResult.fromMap(Map<String, dynamic> map) {
    return GetClustersResult(
      clusterName: map['clusterName'] == null ? null : map['clusterName']! as String,
      clusterTypeLists: map['clusterTypeLists'] == null ? null : (map['clusterTypeLists']! as List).cast<String>(),
      clusters: pulumi.Input.decodeList<GetClustersCluster>(map['clusters'], (value) => GetClustersCluster.fromMap((value as Map).cast<String, dynamic>())),
      createType: map['createType'] == null ? null : map['createType']! as String,
      defaultStatus: map['defaultStatus'] == null ? null : map['defaultStatus']! as bool,
      depositType: map['depositType'] == null ? null : map['depositType']! as String,
      enableDetails: map['enableDetails'] == null ? null : map['enableDetails']! as bool,
      id: map['id'] as String,
      ids: (map['ids'] as List).cast<String>(),
      isDesc: map['isDesc'] == null ? null : map['isDesc']! as bool,
      machineType: map['machineType'] == null ? null : map['machineType']! as String,
      nameRegex: map['nameRegex'] == null ? null : map['nameRegex']! as String,
      names: (map['names'] as List).cast<String>(),
      outputFile: map['outputFile'] == null ? null : map['outputFile']! as String,
      pageNumber: map['pageNumber'] == null ? null : map['pageNumber']! as int,
      pageSize: map['pageSize'] == null ? null : map['pageSize']! as int,
      resourceGroupId: map['resourceGroupId'] == null ? null : map['resourceGroupId']! as String,
      statusLists: map['statusLists'] == null ? null : (map['statusLists']! as List).cast<String>(),
      totalCount: map['totalCount'] as int,
      vpcId: map['vpcId'] == null ? null : map['vpcId']! as String,
    );
  }
}

