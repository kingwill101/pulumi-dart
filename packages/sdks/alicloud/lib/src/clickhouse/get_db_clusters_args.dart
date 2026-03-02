// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_clickhouse_get_db_clusters_get_db_clusters_args_doc}
/// Arguments for getDbClusters.
/// {@endtemplate}
/// {@macro pulumi_clickhouse_get_db_clusters_get_db_clusters_args_doc}
class GetDbClustersArgs {
  /// The DBCluster description.
  final pulumi.Input<String>? dbClusterDescription;
  /// Default to `false`. Set it to `true` can output more details about resource attributes.
  final pulumi.Input<bool>? enableDetails;
  /// A list of DBCluster IDs.
  final pulumi.Input<List<String>>? ids;
  /// File name where to save data source results (after running `pulumi preview`).
  final pulumi.Input<String>? outputFile;
  /// The status of the resource. Valid values: `Running`,`Creating`,`Deleting`,`Restarting`,`Preparing`,.
  final pulumi.Input<String>? status;

  /// Creates a new [GetDbClustersArgs].
  /// [dbClusterDescription] The DBCluster description.
  /// [enableDetails] Default to `false`. Set it to `true` can output more details about resource attributes.
  /// [ids] A list of DBCluster IDs.
  /// [outputFile] File name where to save data source results (after running `pulumi preview`).
  /// [status] The status of the resource. Valid values: `Running`,`Creating`,`Deleting`,`Restarting`,`Preparing`,.
  GetDbClustersArgs({
    this.dbClusterDescription,
    this.enableDetails,
    this.ids,
    this.outputFile,
    this.status,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dbClusterDescription': ?dbClusterDescription,
      'enableDetails': ?enableDetails,
      'ids': ?ids,
      'outputFile': ?outputFile,
      'status': ?status,
    };
  }

  factory GetDbClustersArgs.fromMap(Map<String, dynamic> map) {
    return GetDbClustersArgs(
      dbClusterDescription: map['dbClusterDescription'] == null ? null : (map['dbClusterDescription']! as String).input(),
      enableDetails: map['enableDetails'] == null ? null : (map['enableDetails']! as bool).input(),
      ids: map['ids'] == null ? null : ((map['ids']! as List).cast<String>()).input(),
      outputFile: map['outputFile'] == null ? null : (map['outputFile']! as String).input(),
      status: map['status'] == null ? null : (map['status']! as String).input(),
    );
  }
}

