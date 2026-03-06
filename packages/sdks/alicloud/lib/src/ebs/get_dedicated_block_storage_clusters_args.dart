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
  const GetDedicatedBlockStorageClustersArgs({
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
      ids: (() { final guardedValue = map['ids']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      nameRegex: (() { final guardedValue = map['nameRegex']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      outputFile: (() { final guardedValue = map['outputFile']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

