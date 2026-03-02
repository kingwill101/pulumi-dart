// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_dbclusters_cluster.dart';

/// Result data returned by getDBClusters.
class GetDBClustersResult {
  /// A list of Adb Db Clusters. Each element contains the following attributes:
  final List<GetDBClustersCluster> clusters;
  /// The description of DBCluster.
  final String? description;
  final String? descriptionRegex;
  /// A list of DBCluster descriptions.
  final List<String> descriptions;
  final bool? enableDetails;
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  final List<String> ids;
  final String? outputFile;
  final int? pageNumber;
  final int? pageSize;
  /// The ID of the resource group.
  final String? resourceGroupId;
  /// The status of the resource.
  final String? status;
  /// The tags of the resource.
  final Map<String, String>? tags;
  final int totalCount;

  /// Creates a new [GetDBClustersResult].
  /// [clusters] A list of Adb Db Clusters. Each element contains the following attributes:
  /// [description] The description of DBCluster.
  /// [descriptionRegex] Optional.
  /// [descriptions] A list of DBCluster descriptions.
  /// [enableDetails] Optional.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [ids] Required.
  /// [outputFile] Optional.
  /// [pageNumber] Optional.
  /// [pageSize] Optional.
  /// [resourceGroupId] The ID of the resource group.
  /// [status] The status of the resource.
  /// [tags] The tags of the resource.
  /// [totalCount] Required.
  GetDBClustersResult({
    required this.clusters,
    this.description,
    this.descriptionRegex,
    required this.descriptions,
    this.enableDetails,
    required this.id,
    required this.ids,
    this.outputFile,
    this.pageNumber,
    this.pageSize,
    this.resourceGroupId,
    this.status,
    this.tags,
    required this.totalCount,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'clusters': pulumi.Input.encodeList<GetDBClustersCluster, Map<String, dynamic>>(clusters, (value) => value.toMap()),
      'description': ?description,
      'descriptionRegex': ?descriptionRegex,
      'descriptions': descriptions,
      'enableDetails': ?enableDetails,
      'id': id,
      'ids': ids,
      'outputFile': ?outputFile,
      'pageNumber': ?pageNumber,
      'pageSize': ?pageSize,
      'resourceGroupId': ?resourceGroupId,
      'status': ?status,
      'tags': ?tags,
      'totalCount': totalCount,
    };
  }

  factory GetDBClustersResult.fromMap(Map<String, dynamic> map) {
    return GetDBClustersResult(
      clusters: pulumi.Input.decodeList<GetDBClustersCluster>(map['clusters'], (value) => GetDBClustersCluster.fromMap((value as Map).cast<String, dynamic>())),
      description: map['description'] == null ? null : map['description']! as String,
      descriptionRegex: map['descriptionRegex'] == null ? null : map['descriptionRegex']! as String,
      descriptions: (map['descriptions'] as List).cast<String>(),
      enableDetails: map['enableDetails'] == null ? null : map['enableDetails']! as bool,
      id: map['id'] as String,
      ids: (map['ids'] as List).cast<String>(),
      outputFile: map['outputFile'] == null ? null : map['outputFile']! as String,
      pageNumber: map['pageNumber'] == null ? null : map['pageNumber']! as int,
      pageSize: map['pageSize'] == null ? null : map['pageSize']! as int,
      resourceGroupId: map['resourceGroupId'] == null ? null : map['resourceGroupId']! as String,
      status: map['status'] == null ? null : map['status']! as String,
      tags: map['tags'] == null ? null : (map['tags']! as Map).cast<String, String>(),
      totalCount: map['totalCount'] as int,
    );
  }
}

