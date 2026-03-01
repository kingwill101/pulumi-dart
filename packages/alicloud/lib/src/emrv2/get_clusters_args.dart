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
    String? clusterName,
    List<String>? clusterStates,
    List<String>? clusterTypes,
    List<String>? ids,
    int? maxResults,
    String? nameRegex,
    String? nextToken,
    String? outputFile,
    List<String>? paymentTypes,
    String? resourceGroupId,
    Map<String, String>? tags,
  }) :
      clusterName = pulumi.Input.asOptionalInput<String>(clusterName),
      clusterStates = pulumi.Input.asOptionalInput<List<String>>(clusterStates),
      clusterTypes = pulumi.Input.asOptionalInput<List<String>>(clusterTypes),
      ids = pulumi.Input.asOptionalInput<List<String>>(ids),
      maxResults = pulumi.Input.asOptionalInput<int>(maxResults),
      nameRegex = pulumi.Input.asOptionalInput<String>(nameRegex),
      nextToken = pulumi.Input.asOptionalInput<String>(nextToken),
      outputFile = pulumi.Input.asOptionalInput<String>(outputFile),
      paymentTypes = pulumi.Input.asOptionalInput<List<String>>(paymentTypes),
      resourceGroupId = pulumi.Input.asOptionalInput<String>(resourceGroupId),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags);

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
      clusterName: map['clusterName'] == null ? null : map['clusterName'] as String,
      clusterStates: map['clusterStates'] == null ? null : (map['clusterStates'] as List).cast<String>(),
      clusterTypes: map['clusterTypes'] == null ? null : (map['clusterTypes'] as List).cast<String>(),
      ids: map['ids'] == null ? null : (map['ids'] as List).cast<String>(),
      maxResults: map['maxResults'] == null ? null : map['maxResults'] as int,
      nameRegex: map['nameRegex'] == null ? null : map['nameRegex'] as String,
      nextToken: map['nextToken'] == null ? null : map['nextToken'] as String,
      outputFile: map['outputFile'] == null ? null : map['outputFile'] as String,
      paymentTypes: map['paymentTypes'] == null ? null : (map['paymentTypes'] as List).cast<String>(),
      resourceGroupId: map['resourceGroupId'] == null ? null : map['resourceGroupId'] as String,
      tags: map['tags'] == null ? null : (map['tags'] as Map).cast<String, String>(),
    );
  }
}

