// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_cs_get_edge_kubernetes_clusters_get_edge_kubernetes_clusters_args_doc}
/// Arguments for getEdgeKubernetesClusters.
/// {@endtemplate}
/// {@macro pulumi_cs_get_edge_kubernetes_clusters_get_edge_kubernetes_clusters_args_doc}
class GetEdgeKubernetesClustersArgs {
  /// Boolean, false by default, only `id` and `name` are exported. Set to true if more details are needed, e.g., `master_disk_category`, `slb_internet_enabled`, `connections`. See full list in attributes.
  final pulumi.Input<bool>? enableDetails;
  /// Cluster IDs to filter.
  final pulumi.Input<List<String>>? ids;
  /// A regex string to filter results by cluster name.
  final pulumi.Input<String>? nameRegex;
  /// File name where to save data source results (after running `pulumi preview`).
  final pulumi.Input<String>? outputFile;

  /// Creates a new [GetEdgeKubernetesClustersArgs].
  /// [enableDetails] Boolean, false by default, only `id` and `name` are exported. Set to true if more details are needed, e.g., `master_disk_category`, `slb_internet_enabled`, `connections`. See full list in attributes.
  /// [ids] Cluster IDs to filter.
  /// [nameRegex] A regex string to filter results by cluster name.
  /// [outputFile] File name where to save data source results (after running `pulumi preview`).
  GetEdgeKubernetesClustersArgs({
    bool? enableDetails,
    List<String>? ids,
    String? nameRegex,
    String? outputFile,
  }) :
      enableDetails = pulumi.Input.asOptionalInput<bool>(enableDetails),
      ids = pulumi.Input.asOptionalInput<List<String>>(ids),
      nameRegex = pulumi.Input.asOptionalInput<String>(nameRegex),
      outputFile = pulumi.Input.asOptionalInput<String>(outputFile);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enableDetails': ?enableDetails,
      'ids': ?ids,
      'nameRegex': ?nameRegex,
      'outputFile': ?outputFile,
    };
  }

  factory GetEdgeKubernetesClustersArgs.fromMap(Map<String, dynamic> map) {
    return GetEdgeKubernetesClustersArgs(
      enableDetails: map['enableDetails'] == null ? null : map['enableDetails'] as bool,
      ids: map['ids'] == null ? null : (map['ids'] as List).cast<String>(),
      nameRegex: map['nameRegex'] == null ? null : map['nameRegex'] as String,
      outputFile: map['outputFile'] == null ? null : map['outputFile'] as String,
    );
  }
}

