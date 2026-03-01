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
    pulumi.Output<String>? dbClusterDescription,
    pulumi.Output<bool>? enableDetails,
    pulumi.Output<List<String>>? ids,
    pulumi.Output<String>? outputFile,
    pulumi.Output<String>? status,
  }) :
      dbClusterDescription = pulumi.Input.asOptionalInput<String>(dbClusterDescription),
      enableDetails = pulumi.Input.asOptionalInput<bool>(enableDetails),
      ids = pulumi.Input.asOptionalInput<List<String>>(ids),
      outputFile = pulumi.Input.asOptionalInput<String>(outputFile),
      status = pulumi.Input.asOptionalInput<String>(status);

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
      dbClusterDescription: map['dbClusterDescription'] == null ? null : pulumi.Output.create<String>(map['dbClusterDescription'] as String),
      enableDetails: map['enableDetails'] == null ? null : pulumi.Output.create<bool>(map['enableDetails'] as bool),
      ids: map['ids'] == null ? null : pulumi.Output.create<List<String>>((map['ids'] as List).cast<String>()),
      outputFile: map['outputFile'] == null ? null : pulumi.Output.create<String>(map['outputFile'] as String),
      status: map['status'] == null ? null : pulumi.Output.create<String>(map['status'] as String),
    );
  }
}

