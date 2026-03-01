// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_ecs_get_hpc_clusters_get_hpc_clusters_args_doc}
/// Arguments for getHpcClusters.
/// {@endtemplate}
/// {@macro pulumi_ecs_get_hpc_clusters_get_hpc_clusters_args_doc}
class GetHpcClustersArgs {
  /// A list of Hpc Cluster IDs.
  final pulumi.Input<List<String>>? ids;
  /// A regex string to filter results by Hpc Cluster name.
  final pulumi.Input<String>? nameRegex;
  /// File name where to save data source results (after running `pulumi preview`).
  final pulumi.Input<String>? outputFile;

  /// Creates a new [GetHpcClustersArgs].
  /// [ids] A list of Hpc Cluster IDs.
  /// [nameRegex] A regex string to filter results by Hpc Cluster name.
  /// [outputFile] File name where to save data source results (after running `pulumi preview`).
  GetHpcClustersArgs({
    List<String>? ids,
    String? nameRegex,
    String? outputFile,
  }) :
      ids = pulumi.Input.asOptionalInput<List<String>>(ids),
      nameRegex = pulumi.Input.asOptionalInput<String>(nameRegex),
      outputFile = pulumi.Input.asOptionalInput<String>(outputFile);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'ids': ?ids,
      'nameRegex': ?nameRegex,
      'outputFile': ?outputFile,
    };
  }

  factory GetHpcClustersArgs.fromMap(Map<String, dynamic> map) {
    return GetHpcClustersArgs(
      ids: map['ids'] == null ? null : (map['ids'] as List).cast<String>(),
      nameRegex: map['nameRegex'] == null ? null : map['nameRegex'] as String,
      outputFile: map['outputFile'] == null ? null : map['outputFile'] as String,
    );
  }
}

