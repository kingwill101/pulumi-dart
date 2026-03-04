// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_cs_get_clusters_get_clusters_args_doc}
/// Arguments for getClusters.
/// {@endtemplate}
/// {@macro pulumi_cs_get_clusters_get_clusters_args_doc}
class GetClustersArgs {
  /// The cluster ID.
  final pulumi.Input<String>? clusterId;

  /// Custom cluster name.
  final pulumi.Input<String>? clusterName;

  /// The specification of the clusters to query. Valid values:
  /// - `ack.pro.small`: ACK Pro clusters.
  /// - `ack.standard`: ACK Basic clusters.
  final pulumi.Input<String>? clusterSpec;

  /// The type of the clusters to query. Valid values:
  /// - `Kubernetes`: ACK dedicated clusters.
  /// - `ManagedKubernetes`: ACK managed clusters. ACK managed clusters include ACK Basic clusters, ACK Pro clusters, ACK Serverless Basic clusters, ACK Serverless Pro clusters, ACK Edge Basic clusters, ACK Edge Pro clusters, and ACK Lingjun Pro clusters.
  /// - `ExternalKubernetes`: registered clusters.
  final pulumi.Input<String>? clusterType;

  /// Default to `false`. Set it to `true` can output more details about resource attributes.
  final pulumi.Input<bool>? enableDetails;

  /// A list of Cluster IDs.
  final pulumi.Input<List<String>>? ids;

  /// A regex string to filter results by cluster name.
  final pulumi.Input<String>? nameRegex;

  /// File name where to save data source results (after running `pulumi preview`).
  final pulumi.Input<String>? outputFile;

  /// The subtype of the clusters to query. Valid values:
  /// - `Default`: ACK managed clusters. ACK managed clusters include ACK Basic clusters and ACK Pro clusters.
  /// - `Edge`: ACK Edge clusters. ACK Edge clusters include ACK Edge Basic clusters and ACK Edge Pro clusters.
  /// - `Serverless`: ACK Serverless clusters. ACK Serverless clusters include ACK Serverless Basic clusters and ACK Serverless Pro clusters.
  /// - `Lingjun`: ACK Lingjun Pro clusters.
  final pulumi.Input<String>? profile;

  /// Creates a new [GetClustersArgs].
  /// [clusterId] The cluster ID.
  /// [clusterName] Custom cluster name.
  /// [clusterSpec] The specification of the clusters to query. Valid values:
  /// [clusterType] The type of the clusters to query. Valid values:
  /// [enableDetails] Default to `false`. Set it to `true` can output more details about resource attributes.
  /// [ids] A list of Cluster IDs.
  /// [nameRegex] A regex string to filter results by cluster name.
  /// [outputFile] File name where to save data source results (after running `pulumi preview`).
  /// [profile] The subtype of the clusters to query. Valid values:
  GetClustersArgs({
    this.clusterId,
    this.clusterName,
    this.clusterSpec,
    this.clusterType,
    this.enableDetails,
    this.ids,
    this.nameRegex,
    this.outputFile,
    this.profile,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'clusterId': ?clusterId,
      'clusterName': ?clusterName,
      'clusterSpec': ?clusterSpec,
      'clusterType': ?clusterType,
      'enableDetails': ?enableDetails,
      'ids': ?ids,
      'nameRegex': ?nameRegex,
      'outputFile': ?outputFile,
      'profile': ?profile,
    };
  }

  factory GetClustersArgs.fromMap(Map<String, dynamic> map) {
    return GetClustersArgs(
      clusterId: (() {
        final guardedValue = map['clusterId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      clusterName: (() {
        final guardedValue = map['clusterName'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      clusterSpec: (() {
        final guardedValue = map['clusterSpec'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      clusterType: (() {
        final guardedValue = map['clusterType'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      enableDetails: (() {
        final guardedValue = map['enableDetails'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      ids: (() {
        final guardedValue = map['ids'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue((guardedValue as List).cast<String>());
      })(),
      nameRegex: (() {
        final guardedValue = map['nameRegex'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      outputFile: (() {
        final guardedValue = map['outputFile'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      profile: (() {
        final guardedValue = map['profile'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
