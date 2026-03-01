// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_selectdb_get_db_clusters_get_db_clusters_args_doc}
/// Arguments for getDbClusters.
/// {@endtemplate}
/// {@macro pulumi_selectdb_get_db_clusters_get_db_clusters_args_doc}
class GetDbClustersArgs {
  /// A list of DBCluster IDs.
  final pulumi.Input<List<String>>? ids;
  /// File name where to save data source results (after running `pulumi preview`).
  final pulumi.Input<String>? outputFile;

  /// Creates a new [GetDbClustersArgs].
  /// [ids] A list of DBCluster IDs.
  /// [outputFile] File name where to save data source results (after running `pulumi preview`).
  GetDbClustersArgs({
    pulumi.Output<List<String>>? ids,
    pulumi.Output<String>? outputFile,
  }) :
      ids = pulumi.Input.asOptionalInput<List<String>>(ids),
      outputFile = pulumi.Input.asOptionalInput<String>(outputFile);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'ids': ?ids,
      'outputFile': ?outputFile,
    };
  }

  factory GetDbClustersArgs.fromMap(Map<String, dynamic> map) {
    return GetDbClustersArgs(
      ids: map['ids'] == null ? null : pulumi.Output.create<List<String>>((map['ids'] as List).cast<String>()),
      outputFile: map['outputFile'] == null ? null : pulumi.Output.create<String>(map['outputFile'] as String),
    );
  }
}

