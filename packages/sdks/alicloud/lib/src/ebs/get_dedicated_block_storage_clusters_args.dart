// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_ebs_get_dedicated_block_storage_clusters_get_dedicated_block_storage_clusters_args_doc}
/// Arguments for getDedicatedBlockStorageClusters.
/// {@endtemplate}
/// {@macro pulumi_ebs_get_dedicated_block_storage_clusters_get_dedicated_block_storage_clusters_args_doc}
class GetDedicatedBlockStorageClustersArgs {
  /// A list of Dedicated Block Storage Cluster IDs.
  final pulumi.Input<List<String>>? ids;
  /// A regex string to filter results by Group Metric Rule name.
  final pulumi.Input<String>? nameRegex;
  /// File name where to save data source results (after running `pulumi preview`).
  final pulumi.Input<String>? outputFile;

  /// Creates a new [GetDedicatedBlockStorageClustersArgs].
  /// [ids] A list of Dedicated Block Storage Cluster IDs.
  /// [nameRegex] A regex string to filter results by Group Metric Rule name.
  /// [outputFile] File name where to save data source results (after running `pulumi preview`).
  GetDedicatedBlockStorageClustersArgs({
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

  factory GetDedicatedBlockStorageClustersArgs.fromMap(Map<String, dynamic> map) {
    return GetDedicatedBlockStorageClustersArgs(
      ids: map['ids'] == null ? null : ((map['ids']! as List).cast<String>()).input(),
      nameRegex: map['nameRegex'] == null ? null : (map['nameRegex']! as String).input(),
      outputFile: map['outputFile'] == null ? null : (map['outputFile']! as String).input(),
    );
  }
}

