// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_cs_kubernetes_addon_kubernetes_addon_args_doc}
/// The set of arguments for KubernetesAddon.
/// {@endtemplate}
/// {@macro pulumi_cs_kubernetes_addon_kubernetes_addon_args_doc}
class KubernetesAddonArgs {
  /// Whether to clean up cloud resources when deleting. Currently only works for addon `ack-virtual-node` and you must specify it when uninstall addon `ack-virtual-node`. Valid values: `true`: clean up, `false`: do not clean up.
  final pulumi.Input<bool>? cleanupCloudResources;
  /// The id of kubernetes cluster.
  final pulumi.Input<String> clusterId;
  /// The customized configuration of addon. Your customized configuration will be merged to existed configuration stored in server. If you want to clean one configuration, you must set the configuration to empty value, removing from code cannot make effect. You can checkout the customized configuration of the addon through datasource `alicloud.cs.getKubernetesAddonMetadata`, the returned format is the standard json schema. If return empty, it means that the addon does not support custom configuration yet. You can also checkout the current custom configuration through the data source `alicloud.cs.getKubernetesAddons`.
  final pulumi.Input<String>? config;
  /// The name of addon.
  final pulumi.Input<String>? name;
  /// The current version of addon.
  final pulumi.Input<String>? version;

  /// Creates a new [KubernetesAddonArgs].
  /// [cleanupCloudResources] Whether to clean up cloud resources when deleting. Currently only works for addon `ack-virtual-node` and you must specify it when uninstall addon `ack-virtual-node`. Valid values: `true`: clean up, `false`: do not clean up.
  /// [clusterId] The id of kubernetes cluster.
  /// [config] The customized configuration of addon. Your customized configuration will be merged to existed configuration stored in server. If you want to clean one configuration, you must set the configuration to empty value, removing from code cannot make effect. You can checkout the customized configuration of the addon through datasource `alicloud.cs.getKubernetesAddonMetadata`, the returned format is the standard json schema. If return empty, it means that the addon does not support custom configuration yet. You can also checkout the current custom configuration through the data source `alicloud.cs.getKubernetesAddons`.
  /// [name] The name of addon.
  /// [version] The current version of addon.
  KubernetesAddonArgs({
    bool? cleanupCloudResources,
    required String clusterId,
    String? config,
    String? name,
    String? version,
  }) :
      cleanupCloudResources = pulumi.Input.asOptionalInput<bool>(cleanupCloudResources),
      clusterId = pulumi.Input.asInput<String>(clusterId),
      config = pulumi.Input.asOptionalInput<String>(config),
      name = pulumi.Input.asOptionalInput<String>(name),
      version = pulumi.Input.asOptionalInput<String>(version);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cleanupCloudResources': ?cleanupCloudResources,
      'clusterId': clusterId,
      'config': ?config,
      'name': ?name,
      'version': ?version,
    };
  }

  factory KubernetesAddonArgs.fromMap(Map<String, dynamic> map) {
    return KubernetesAddonArgs(
      cleanupCloudResources: map['cleanupCloudResources'] == null ? null : map['cleanupCloudResources'] as bool,
      clusterId: map['clusterId'] as String,
      config: map['config'] == null ? null : map['config'] as String,
      name: map['name'] == null ? null : map['name'] as String,
      version: map['version'] == null ? null : map['version'] as String,
    );
  }
}

