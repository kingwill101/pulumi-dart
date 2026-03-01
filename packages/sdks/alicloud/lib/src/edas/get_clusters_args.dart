// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_edas_get_clusters_get_clusters_args_doc}
/// Arguments for getClusters.
/// {@endtemplate}
/// {@macro pulumi_edas_get_clusters_get_clusters_args_doc}
class GetClustersArgs {
  /// An ids string to filter results by the cluster id.
  final pulumi.Input<List<String>>? ids;
  /// ID of the namespace in EDAS.
  final pulumi.Input<String> logicalRegionId;
  /// A regex string to filter results by the cluster name.
  final pulumi.Input<String>? nameRegex;
  /// File name where to save data source results (after running `pulumi preview`).
  final pulumi.Input<String>? outputFile;

  /// Creates a new [GetClustersArgs].
  /// [ids] An ids string to filter results by the cluster id.
  /// [logicalRegionId] ID of the namespace in EDAS.
  /// [nameRegex] A regex string to filter results by the cluster name.
  /// [outputFile] File name where to save data source results (after running `pulumi preview`).
  GetClustersArgs({
    pulumi.Output<List<String>>? ids,
    required pulumi.Output<String> logicalRegionId,
    pulumi.Output<String>? nameRegex,
    pulumi.Output<String>? outputFile,
  }) :
      ids = pulumi.Input.asOptionalInput<List<String>>(ids),
      logicalRegionId = pulumi.Input.asInput<String>(logicalRegionId),
      nameRegex = pulumi.Input.asOptionalInput<String>(nameRegex),
      outputFile = pulumi.Input.asOptionalInput<String>(outputFile);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'ids': ?ids,
      'logicalRegionId': logicalRegionId,
      'nameRegex': ?nameRegex,
      'outputFile': ?outputFile,
    };
  }

  factory GetClustersArgs.fromMap(Map<String, dynamic> map) {
    return GetClustersArgs(
      ids: map['ids'] == null ? null : pulumi.Output.create<List<String>>((map['ids'] as List).cast<String>()),
      logicalRegionId: pulumi.Output.create<String>(map['logicalRegionId'] as String),
      nameRegex: map['nameRegex'] == null ? null : pulumi.Output.create<String>(map['nameRegex'] as String),
      outputFile: map['outputFile'] == null ? null : pulumi.Output.create<String>(map['outputFile'] as String),
    );
  }
}

