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
    this.ids,
    this.nameRegex,
    this.outputFile,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'ids': ?ids,
      'nameRegex': ?nameRegex,
      'outputFile': ?outputFile,
    };
  }

  factory GetHpcClustersArgs.fromMap(Map<String, dynamic> map) {
    return GetHpcClustersArgs(
      ids: (() { final guardedValue = map['ids']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      nameRegex: (() { final guardedValue = map['nameRegex']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      outputFile: (() { final guardedValue = map['outputFile']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

