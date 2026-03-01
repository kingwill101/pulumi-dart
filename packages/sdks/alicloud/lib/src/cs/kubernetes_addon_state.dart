// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering KubernetesAddon resources.
class KubernetesAddonState {
  /// Is the addon ready for upgrade.
  final pulumi.Input<bool>? canUpgrade;
  /// Whether to clean up cloud resources when deleting. Currently only works for addon `ack-virtual-node` and you must specify it when uninstall addon `ack-virtual-node`. Valid values: `true`: clean up, `false`: do not clean up.
  final pulumi.Input<bool>? cleanupCloudResources;
  /// The id of kubernetes cluster.
  final pulumi.Input<String>? clusterId;
  /// The customized configuration of addon. Your customized configuration will be merged to existed configuration stored in server. If you want to clean one configuration, you must set the configuration to empty value, removing from code cannot make effect. You can checkout the customized configuration of the addon through datasource `alicloud.cs.getKubernetesAddonMetadata`, the returned format is the standard json schema. If return empty, it means that the addon does not support custom configuration yet. You can also checkout the current custom configuration through the data source `alicloud.cs.getKubernetesAddons`.
  final pulumi.Input<String>? config;
  /// The name of addon.
  final pulumi.Input<String>? name;
  /// The version which addon can be upgraded to.
  final pulumi.Input<String>? nextVersion;
  /// Is it a mandatory addon to be installed.
  final pulumi.Input<bool>? required;
  /// The current version of addon.
  final pulumi.Input<String>? version;

  /// Creates a new [KubernetesAddonState].
  /// [canUpgrade] Is the addon ready for upgrade.
  /// [cleanupCloudResources] Whether to clean up cloud resources when deleting. Currently only works for addon `ack-virtual-node` and you must specify it when uninstall addon `ack-virtual-node`. Valid values: `true`: clean up, `false`: do not clean up.
  /// [clusterId] The id of kubernetes cluster.
  /// [config] The customized configuration of addon. Your customized configuration will be merged to existed configuration stored in server. If you want to clean one configuration, you must set the configuration to empty value, removing from code cannot make effect. You can checkout the customized configuration of the addon through datasource `alicloud.cs.getKubernetesAddonMetadata`, the returned format is the standard json schema. If return empty, it means that the addon does not support custom configuration yet. You can also checkout the current custom configuration through the data source `alicloud.cs.getKubernetesAddons`.
  /// [name] The name of addon.
  /// [nextVersion] The version which addon can be upgraded to.
  /// [required] Is it a mandatory addon to be installed.
  /// [version] The current version of addon.
  KubernetesAddonState({
    pulumi.Output<bool>? canUpgrade,
    pulumi.Output<bool>? cleanupCloudResources,
    pulumi.Output<String>? clusterId,
    pulumi.Output<String>? config,
    pulumi.Output<String>? name,
    pulumi.Output<String>? nextVersion,
    pulumi.Output<bool>? required,
    pulumi.Output<String>? version,
  }) :
      canUpgrade = pulumi.Input.asOptionalInput<bool>(canUpgrade),
      cleanupCloudResources = pulumi.Input.asOptionalInput<bool>(cleanupCloudResources),
      clusterId = pulumi.Input.asOptionalInput<String>(clusterId),
      config = pulumi.Input.asOptionalInput<String>(config),
      name = pulumi.Input.asOptionalInput<String>(name),
      nextVersion = pulumi.Input.asOptionalInput<String>(nextVersion),
      required = pulumi.Input.asOptionalInput<bool>(required),
      version = pulumi.Input.asOptionalInput<String>(version);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'canUpgrade': ?canUpgrade,
      'cleanupCloudResources': ?cleanupCloudResources,
      'clusterId': ?clusterId,
      'config': ?config,
      'name': ?name,
      'nextVersion': ?nextVersion,
      'required': ?required,
      'version': ?version,
    };
  }

  factory KubernetesAddonState.fromMap(Map<String, dynamic> map) {
    return KubernetesAddonState(
      canUpgrade: map['canUpgrade'] == null ? null : pulumi.Output.create<bool>(map['canUpgrade'] as bool),
      cleanupCloudResources: map['cleanupCloudResources'] == null ? null : pulumi.Output.create<bool>(map['cleanupCloudResources'] as bool),
      clusterId: map['clusterId'] == null ? null : pulumi.Output.create<String>(map['clusterId'] as String),
      config: map['config'] == null ? null : pulumi.Output.create<String>(map['config'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      nextVersion: map['nextVersion'] == null ? null : pulumi.Output.create<String>(map['nextVersion'] as String),
      required: map['required'] == null ? null : pulumi.Output.create<bool>(map['required'] as bool),
      version: map['version'] == null ? null : pulumi.Output.create<String>(map['version'] as String),
    );
  }
}

