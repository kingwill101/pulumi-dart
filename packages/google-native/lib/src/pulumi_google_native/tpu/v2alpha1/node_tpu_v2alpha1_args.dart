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

/// The set of arguments for Node.
class NodeTpuV2alpha1Args {
  /// The AccleratorConfig for the TPU Node.
  final pulumi.Input<AcceleratorConfigTpuV2alpha1>? acceleratorConfig;

  /// The type of hardware accelerators associated with this node.
  final pulumi.Input<String>? acceleratorType;

  /// Optional. Whether Autocheckpoint is enabled.
  final pulumi.Input<bool>? autocheckpointEnabled;

  /// Optional. Boot disk configuration.
  final pulumi.Input<BootDiskConfig>? bootDiskConfig;

  /// The CIDR block that the TPU node will use when selecting an IP address. This CIDR block must be a /29 block; the Compute Engine networks API forbids a smaller block, and using a larger block would be wasteful (a node can only consume one IP address). Errors will occur if the CIDR block has already been used for a currently existing TPU node, the CIDR block conflicts with any subnetworks in the user's provided network, or the provided network is peered with another network that is using that CIDR block.
  final pulumi.Input<String>? cidrBlock;

  /// The additional data disks for the Node.
  final pulumi.Input<List<AttachedDiskTpuV2alpha1>>? dataDisks;

  /// The user-supplied description of the TPU. Maximum of 512 characters.
  final pulumi.Input<String>? description;

  /// The health status of the TPU node.
  final pulumi.Input<NodeHealthTpuV2alpha1>? health;

  /// Resource labels to represent user-provided metadata.
  final pulumi.Input<Map<String, String>>? labels;
  final pulumi.Input<String>? location;

  /// Custom metadata to apply to the TPU Node. Can set startup-script and shutdown-script
  final pulumi.Input<Map<String, String>>? metadata;

  /// Network configurations for the TPU node.
  final pulumi.Input<NetworkConfigTpuV2alpha1>? networkConfig;

  /// The unqualified resource name.
  final pulumi.Input<String>? nodeId;
  final pulumi.Input<String>? project;

  /// Idempotent request UUID.
  final pulumi.Input<String>? requestId;

  /// The runtime version running in the Node.
  final pulumi.Input<String> runtimeVersion;

  /// The scheduling options for this node.
  final pulumi.Input<SchedulingConfigTpuV2alpha1>? schedulingConfig;

  /// The Google Cloud Platform Service Account to be used by the TPU node VMs. If None is specified, the default compute service account will be used.
  final pulumi.Input<ServiceAccountTpuV2alpha1>? serviceAccount;

  /// Shielded Instance options.
  final pulumi.Input<ShieldedInstanceConfigTpuV2alpha1>? shieldedInstanceConfig;

  /// Tags to apply to the TPU Node. Tags are used to identify valid sources or targets for network firewalls.
  final pulumi.Input<List<String>>? tags;

  NodeTpuV2alpha1Args({
    this.acceleratorConfig,
    this.acceleratorType,
    this.autocheckpointEnabled,
    this.bootDiskConfig,
    this.cidrBlock,
    this.dataDisks,
    this.description,
    this.health,
    this.labels,
    this.location,
    this.metadata,
    this.networkConfig,
    this.nodeId,
    this.project,
    this.requestId,
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
      map['acceleratorConfig'] = pulumi.Input.mapOptionalInputValue<
              AcceleratorConfigTpuV2alpha1, Map<String, dynamic>>(
          acceleratorConfigValue, (value) => value.toMap());
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
      map['bootDiskConfig'] = pulumi.Input.mapOptionalInputValue<BootDiskConfig,
          Map<String, dynamic>>(bootDiskConfigValue, (value) => value.toMap());
    }
    final cidrBlockValue = cidrBlock;
    if (cidrBlockValue != null) {
      map['cidrBlock'] = cidrBlockValue;
    }
    final dataDisksValue = dataDisks;
    if (dataDisksValue != null) {
      map['dataDisks'] = pulumi.Input.mapOptionalInputValue<
              List<AttachedDiskTpuV2alpha1>, List<Map<String, dynamic>>>(
          dataDisksValue,
          (value) => pulumi.Input.encodeList<AttachedDiskTpuV2alpha1,
              Map<String, dynamic>>(value, (value) => value.toMap()));
    }
    final descriptionValue = description;
    if (descriptionValue != null) {
      map['description'] = descriptionValue;
    }
    final healthValue = health;
    if (healthValue != null) {
      map['health'] =
          pulumi.Input.mapOptionalInputValue<NodeHealthTpuV2alpha1, String>(
              healthValue, (value) => value.value);
    }
    final labelsValue = labels;
    if (labelsValue != null) {
      map['labels'] = labelsValue;
    }
    final locationValue = location;
    if (locationValue != null) {
      map['location'] = locationValue;
    }
    final metadataValue = metadata;
    if (metadataValue != null) {
      map['metadata'] = metadataValue;
    }
    final networkConfigValue = networkConfig;
    if (networkConfigValue != null) {
      map['networkConfig'] = pulumi.Input.mapOptionalInputValue<
          NetworkConfigTpuV2alpha1,
          Map<String, dynamic>>(networkConfigValue, (value) => value.toMap());
    }
    final nodeIdValue = nodeId;
    if (nodeIdValue != null) {
      map['nodeId'] = nodeIdValue;
    }
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    final requestIdValue = requestId;
    if (requestIdValue != null) {
      map['requestId'] = requestIdValue;
    }
    map['runtimeVersion'] = runtimeVersion;
    final schedulingConfigValue = schedulingConfig;
    if (schedulingConfigValue != null) {
      map['schedulingConfig'] = pulumi.Input.mapOptionalInputValue<
              SchedulingConfigTpuV2alpha1, Map<String, dynamic>>(
          schedulingConfigValue, (value) => value.toMap());
    }
    final serviceAccountValue = serviceAccount;
    if (serviceAccountValue != null) {
      map['serviceAccount'] = pulumi.Input.mapOptionalInputValue<
          ServiceAccountTpuV2alpha1,
          Map<String, dynamic>>(serviceAccountValue, (value) => value.toMap());
    }
    final shieldedInstanceConfigValue = shieldedInstanceConfig;
    if (shieldedInstanceConfigValue != null) {
      map['shieldedInstanceConfig'] = pulumi.Input.mapOptionalInputValue<
              ShieldedInstanceConfigTpuV2alpha1, Map<String, dynamic>>(
          shieldedInstanceConfigValue, (value) => value.toMap());
    }
    final tagsValue = tags;
    if (tagsValue != null) {
      map['tags'] = tagsValue;
    }
    return map;
  }

  factory NodeTpuV2alpha1Args.fromMap(Map<String, dynamic> map) {
    return NodeTpuV2alpha1Args(
      acceleratorConfig:
          pulumi.Input.asOptionalInput<AcceleratorConfigTpuV2alpha1>(
              map['acceleratorConfig']),
      acceleratorType:
          pulumi.Input.asOptionalInput<String>(map['acceleratorType']),
      autocheckpointEnabled:
          pulumi.Input.asOptionalInput<bool>(map['autocheckpointEnabled']),
      bootDiskConfig:
          pulumi.Input.asOptionalInput<BootDiskConfig>(map['bootDiskConfig']),
      cidrBlock: pulumi.Input.asOptionalInput<String>(map['cidrBlock']),
      dataDisks: pulumi.Input.asOptionalInput<List<AttachedDiskTpuV2alpha1>>(
          map['dataDisks']),
      description: pulumi.Input.asOptionalInput<String>(map['description']),
      health:
          pulumi.Input.asOptionalInput<NodeHealthTpuV2alpha1>(map['health']),
      labels: pulumi.Input.asOptionalInput<Map<String, String>>(map['labels']),
      location: pulumi.Input.asOptionalInput<String>(map['location']),
      metadata:
          pulumi.Input.asOptionalInput<Map<String, String>>(map['metadata']),
      networkConfig: pulumi.Input.asOptionalInput<NetworkConfigTpuV2alpha1>(
          map['networkConfig']),
      nodeId: pulumi.Input.asOptionalInput<String>(map['nodeId']),
      project: pulumi.Input.asOptionalInput<String>(map['project']),
      requestId: pulumi.Input.asOptionalInput<String>(map['requestId']),
      runtimeVersion: pulumi.Input.asInput<String>(map['runtimeVersion']),
      schedulingConfig:
          pulumi.Input.asOptionalInput<SchedulingConfigTpuV2alpha1>(
              map['schedulingConfig']),
      serviceAccount: pulumi.Input.asOptionalInput<ServiceAccountTpuV2alpha1>(
          map['serviceAccount']),
      shieldedInstanceConfig:
          pulumi.Input.asOptionalInput<ShieldedInstanceConfigTpuV2alpha1>(
              map['shieldedInstanceConfig']),
      tags: pulumi.Input.asOptionalInput<List<String>>(map['tags']),
    );
  }
}
