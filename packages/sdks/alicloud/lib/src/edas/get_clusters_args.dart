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
    this.ids,
    required this.logicalRegionId,
    this.nameRegex,
    this.outputFile,
  });

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
      ids: (() {
        final guardedValue = map['ids'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue((guardedValue as List).cast<String>());
      })(),
      logicalRegionId: pulumi.Input.fromValue(map['logicalRegionId'] as String),
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
    );
  }
}
