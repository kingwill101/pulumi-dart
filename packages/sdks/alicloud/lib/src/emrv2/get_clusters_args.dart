// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_emrv2_get_clusters_get_clusters_args_doc}
/// Arguments for getClusters.
/// {@endtemplate}
/// {@macro pulumi_emrv2_get_clusters_get_clusters_args_doc}
class GetClustersArgs {
  /// The cluster name.
  final pulumi.Input<String>? clusterName;
  /// The cluster states.
  final pulumi.Input<List<String>>? clusterStates;
  /// The cluster types.
  final pulumi.Input<List<String>>? clusterTypes;
  /// A list of Cluster IDs.
  final pulumi.Input<List<String>>? ids;
  /// The max results is used to list clusters for next page.
  final pulumi.Input<int>? maxResults;
  /// A regex string to filter results by Cluster name.
  final pulumi.Input<String>? nameRegex;
  /// The next token is used to list clusters for next page.
  final pulumi.Input<String>? nextToken;
  /// File name where to save data source results (after running `pulumi preview`).
  final pulumi.Input<String>? outputFile;
  /// The cluster payment types.
  final pulumi.Input<List<String>>? paymentTypes;
  /// The Resource Group ID.
  final pulumi.Input<String>? resourceGroupId;
  /// A mapping of tags to assign to the resource.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [GetClustersArgs].
  /// [clusterName] The cluster name.
  /// [clusterStates] The cluster states.
  /// [clusterTypes] The cluster types.
  /// [ids] A list of Cluster IDs.
  /// [maxResults] The max results is used to list clusters for next page.
  /// [nameRegex] A regex string to filter results by Cluster name.
  /// [nextToken] The next token is used to list clusters for next page.
  /// [outputFile] File name where to save data source results (after running `pulumi preview`).
  /// [paymentTypes] The cluster payment types.
  /// [resourceGroupId] The Resource Group ID.
  /// [tags] A mapping of tags to assign to the resource.
  GetClustersArgs({
    this.clusterName,
    this.clusterStates,
    this.clusterTypes,
    this.ids,
    this.maxResults,
    this.nameRegex,
    this.nextToken,
    this.outputFile,
    this.paymentTypes,
    this.resourceGroupId,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'clusterName': ?clusterName,
      'clusterStates': ?clusterStates,
      'clusterTypes': ?clusterTypes,
      'ids': ?ids,
      'maxResults': ?maxResults,
      'nameRegex': ?nameRegex,
      'nextToken': ?nextToken,
      'outputFile': ?outputFile,
      'paymentTypes': ?paymentTypes,
      'resourceGroupId': ?resourceGroupId,
      'tags': ?tags,
    };
  }

  factory GetClustersArgs.fromMap(Map<String, dynamic> map) {
    return GetClustersArgs(
      clusterName: map['clusterName'] == null ? null : (map['clusterName']! as String).input(),
      clusterStates: map['clusterStates'] == null ? null : ((map['clusterStates']! as List).cast<String>()).input(),
      clusterTypes: map['clusterTypes'] == null ? null : ((map['clusterTypes']! as List).cast<String>()).input(),
      ids: map['ids'] == null ? null : ((map['ids']! as List).cast<String>()).input(),
      maxResults: map['maxResults'] == null ? null : (map['maxResults']! as int).input(),
      nameRegex: map['nameRegex'] == null ? null : (map['nameRegex']! as String).input(),
      nextToken: map['nextToken'] == null ? null : (map['nextToken']! as String).input(),
      outputFile: map['outputFile'] == null ? null : (map['outputFile']! as String).input(),
      paymentTypes: map['paymentTypes'] == null ? null : ((map['paymentTypes']! as List).cast<String>()).input(),
      resourceGroupId: map['resourceGroupId'] == null ? null : (map['resourceGroupId']! as String).input(),
      tags: map['tags'] == null ? null : ((map['tags']! as Map).cast<String, String>()).input(),
    );
  }
}

