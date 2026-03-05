// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_cs_get_kubernetes_addon_metadata_get_kubernetes_addon_metadata_args_doc}
/// Arguments for getKubernetesAddonMetadata.
/// {@endtemplate}
/// {@macro pulumi_cs_get_kubernetes_addon_metadata_get_kubernetes_addon_metadata_args_doc}
class GetKubernetesAddonMetadataArgs {
  /// The id of kubernetes cluster.
  final pulumi.Input<String> clusterId;
  /// The name of the cluster addon. You can get a list of available addons that the cluster can install by using data source `alicloud.cs.getKubernetesAddons`.
  final pulumi.Input<String> name;
  /// The version of the cluster addon.
  final pulumi.Input<String> version;

  /// Creates a new [GetKubernetesAddonMetadataArgs].
  /// [clusterId] The id of kubernetes cluster.
  /// [name] The name of the cluster addon. You can get a list of available addons that the cluster can install by using data source `alicloud.cs.getKubernetesAddons`.
  /// [version] The version of the cluster addon.
  GetKubernetesAddonMetadataArgs({
    required this.clusterId,
    required this.name,
    required this.version,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'clusterId': clusterId,
      'name': name,
      'version': version,
    };
  }

  factory GetKubernetesAddonMetadataArgs.fromMap(Map<String, dynamic> map) {
    return GetKubernetesAddonMetadataArgs(
      clusterId: pulumi.Input.fromValue(map['clusterId'] as String),
      name: pulumi.Input.fromValue(map['name'] as String),
      version: pulumi.Input.fromValue(map['version'] as String),
    );
  }
}

