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
      clusterName: (() { final guardedValue = map['clusterName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      clusterStates: (() { final guardedValue = map['clusterStates']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      clusterTypes: (() { final guardedValue = map['clusterTypes']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      ids: (() { final guardedValue = map['ids']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      maxResults: (() { final guardedValue = map['maxResults']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      nameRegex: (() { final guardedValue = map['nameRegex']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      nextToken: (() { final guardedValue = map['nextToken']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      outputFile: (() { final guardedValue = map['outputFile']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      paymentTypes: (() { final guardedValue = map['paymentTypes']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      resourceGroupId: (() { final guardedValue = map['resourceGroupId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
    );
  }
}

