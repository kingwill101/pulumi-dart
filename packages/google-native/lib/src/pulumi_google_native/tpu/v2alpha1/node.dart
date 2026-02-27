// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'accelerator_config_tpu_v2alpha1.dart';
import 'attached_disk_tpu_v2alpha1.dart';
import 'boot_disk_config.dart';
import 'network_config_tpu_v2alpha1.dart';
import 'node_health_tpu_v2alpha1.dart';
import 'scheduling_config_tpu_v2alpha1.dart';
import 'service_account_tpu_v2alpha1.dart';
import 'shielded_instance_config_tpu_v2alpha1.dart';

/// A TPU instance.
class Node {
  /// The AccleratorConfig for the TPU Node.
  final AcceleratorConfigTpuV2alpha1? acceleratorConfig;

  /// The type of hardware accelerators associated with this node.
  final String? acceleratorType;

  /// Optional. Whether Autocheckpoint is enabled.
  final bool? autocheckpointEnabled;

  /// Optional. Boot disk configuration.
  final BootDiskConfig? bootDiskConfig;

  /// The CIDR block that the TPU node will use when selecting an IP address. This CIDR block must be a /29 block; the Compute Engine networks API forbids a smaller block, and using a larger block would be wasteful (a node can only consume one IP address). Errors will occur if the CIDR block has already been used for a currently existing TPU node, the CIDR block conflicts with any subnetworks in the user's provided network, or the provided network is peered with another network that is using that CIDR block.
  final String? cidrBlock;

  /// The additional data disks for the Node.
  final List<AttachedDiskTpuV2alpha1>? dataDisks;

  /// The user-supplied description of the TPU. Maximum of 512 characters.
  final String? description;

  /// The health status of the TPU node.
  final NodeHealthTpuV2alpha1? health;

  /// Resource labels to represent user-provided metadata.
  final Map<String, String>? labels;

  /// Custom metadata to apply to the TPU Node. Can set startup-script and shutdown-script
  final Map<String, String>? metadata;

  /// Network configurations for the TPU node.
  final NetworkConfigTpuV2alpha1? networkConfig;

  /// The runtime version running in the Node.
  final String runtimeVersion;

  /// The scheduling options for this node.
  final SchedulingConfigTpuV2alpha1? schedulingConfig;

  /// The Google Cloud Platform Service Account to be used by the TPU node VMs. If None is specified, the default compute service account will be used.
  final ServiceAccountTpuV2alpha1? serviceAccount;

  /// Shielded Instance options.
  final ShieldedInstanceConfigTpuV2alpha1? shieldedInstanceConfig;

  /// Tags to apply to the TPU Node. Tags are used to identify valid sources or targets for network firewalls.
  final List<String>? tags;

  Node({
    this.acceleratorConfig,
    this.acceleratorType,
    this.autocheckpointEnabled,
    this.bootDiskConfig,
    this.cidrBlock,
    this.dataDisks,
    this.description,
    this.health,
    this.labels,
    this.metadata,
    this.networkConfig,
    required this.runtimeVersion,
    this.schedulingConfig,
    this.serviceAccount,
    this.shieldedInstanceConfig,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final acceleratorConfigValue = acceleratorConfig;
    if (acceleratorConfigValue != null) {
      map['acceleratorConfig'] = acceleratorConfigValue.toMap();
    }
    final acceleratorTypeValue = acceleratorType;
    if (acceleratorTypeValue != null) {
      map['acceleratorType'] = acceleratorTypeValue;
    }
    final autocheckpointEnabledValue = autocheckpointEnabled;
    if (autocheckpointEnabledValue != null) {
      map['autocheckpointEnabled'] = autocheckpointEnabledValue;
    }
    final bootDiskConfigValue = bootDiskConfig;
    if (bootDiskConfigValue != null) {
      map['bootDiskConfig'] = bootDiskConfigValue.toMap();
    }
    final cidrBlockValue = cidrBlock;
    if (cidrBlockValue != null) {
      map['cidrBlock'] = cidrBlockValue;
    }
    final dataDisksValue = dataDisks;
    if (dataDisksValue != null) {
      map['dataDisks'] = pulumi.Input.encodeList<AttachedDiskTpuV2alpha1,
          Map<String, dynamic>>(dataDisksValue, (value) => value.toMap());
    }
    final descriptionValue = description;
    if (descriptionValue != null) {
      map['description'] = descriptionValue;
    }
    final healthValue = health;
    if (healthValue != null) {
      map['health'] = healthValue.value;
    }
    final labelsValue = labels;
    if (labelsValue != null) {
      map['labels'] = labelsValue;
    }
    final metadataValue = metadata;
    if (metadataValue != null) {
      map['metadata'] = metadataValue;
    }
    final networkConfigValue = networkConfig;
    if (networkConfigValue != null) {
      map['networkConfig'] = networkConfigValue.toMap();
    }
    map['runtimeVersion'] = runtimeVersion;
    final schedulingConfigValue = schedulingConfig;
    if (schedulingConfigValue != null) {
      map['schedulingConfig'] = schedulingConfigValue.toMap();
    }
    final serviceAccountValue = serviceAccount;
    if (serviceAccountValue != null) {
      map['serviceAccount'] = serviceAccountValue.toMap();
    }
    final shieldedInstanceConfigValue = shieldedInstanceConfig;
    if (shieldedInstanceConfigValue != null) {
      map['shieldedInstanceConfig'] = shieldedInstanceConfigValue.toMap();
    }
    final tagsValue = tags;
    if (tagsValue != null) {
      map['tags'] = tagsValue;
    }
    return map;
  }

  factory Node.fromMap(Map<String, dynamic> map) {
    return Node(
      acceleratorConfig: map['acceleratorConfig'] == null
          ? null
          : AcceleratorConfigTpuV2alpha1.fromMap(
              (map['acceleratorConfig'] as Map).cast<String, dynamic>()),
      acceleratorType: map['acceleratorType'] == null
          ? null
          : map['acceleratorType'] as String,
      autocheckpointEnabled: map['autocheckpointEnabled'] == null
          ? null
          : map['autocheckpointEnabled'] as bool,
      bootDiskConfig: map['bootDiskConfig'] == null
          ? null
          : BootDiskConfig.fromMap(
              (map['bootDiskConfig'] as Map).cast<String, dynamic>()),
      cidrBlock: map['cidrBlock'] == null ? null : map['cidrBlock'] as String,
      dataDisks: map['dataDisks'] == null
          ? null
          : pulumi.Input.decodeList<AttachedDiskTpuV2alpha1>(
              map['dataDisks'],
              (value) => AttachedDiskTpuV2alpha1.fromMap(
                  (value as Map).cast<String, dynamic>())),
      description:
          map['description'] == null ? null : map['description'] as String,
      health: map['health'] == null
          ? null
          : NodeHealthTpuV2alpha1.fromValue(map['health'] as String),
      labels: map['labels'] == null
          ? null
          : (map['labels'] as Map).cast<String, String>(),
      metadata: map['metadata'] == null
          ? null
          : (map['metadata'] as Map).cast<String, String>(),
      networkConfig: map['networkConfig'] == null
          ? null
          : NetworkConfigTpuV2alpha1.fromMap(
              (map['networkConfig'] as Map).cast<String, dynamic>()),
      runtimeVersion: map['runtimeVersion'] as String,
      schedulingConfig: map['schedulingConfig'] == null
          ? null
          : SchedulingConfigTpuV2alpha1.fromMap(
              (map['schedulingConfig'] as Map).cast<String, dynamic>()),
      serviceAccount: map['serviceAccount'] == null
          ? null
          : ServiceAccountTpuV2alpha1.fromMap(
              (map['serviceAccount'] as Map).cast<String, dynamic>()),
      shieldedInstanceConfig: map['shieldedInstanceConfig'] == null
          ? null
          : ShieldedInstanceConfigTpuV2alpha1.fromMap(
              (map['shieldedInstanceConfig'] as Map).cast<String, dynamic>()),
      tags: map['tags'] == null ? null : (map['tags'] as List).cast<String>(),
    );
  }
}
