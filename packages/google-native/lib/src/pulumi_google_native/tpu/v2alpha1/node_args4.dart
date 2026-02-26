// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import 'accelerator_config11.dart';
import 'attached_disk6.dart';
import 'boot_disk_config.dart';
import 'network_config20.dart';
import 'node_health4.dart';
import 'scheduling_config4.dart';
import 'service_account10.dart';
import 'shielded_instance_config11.dart';

/// The set of arguments for Node.
class NodeArgs4 {
  /// The AccleratorConfig for the TPU Node.
  final Input<AcceleratorConfig11>? acceleratorConfig;

  /// The type of hardware accelerators associated with this node.
  final Input<String>? acceleratorType;

  /// Optional. Whether Autocheckpoint is enabled.
  final Input<bool>? autocheckpointEnabled;

  /// Optional. Boot disk configuration.
  final Input<BootDiskConfig>? bootDiskConfig;

  /// The CIDR block that the TPU node will use when selecting an IP address. This CIDR block must be a /29 block; the Compute Engine networks API forbids a smaller block, and using a larger block would be wasteful (a node can only consume one IP address). Errors will occur if the CIDR block has already been used for a currently existing TPU node, the CIDR block conflicts with any subnetworks in the user's provided network, or the provided network is peered with another network that is using that CIDR block.
  final Input<String>? cidrBlock;

  /// The additional data disks for the Node.
  final Input<List<AttachedDisk6>>? dataDisks;

  /// The user-supplied description of the TPU. Maximum of 512 characters.
  final Input<String>? description;

  /// The health status of the TPU node.
  final Input<NodeHealth4>? health;

  /// Resource labels to represent user-provided metadata.
  final Input<Map<String, String>>? labels;
  final Input<String>? location;

  /// Custom metadata to apply to the TPU Node. Can set startup-script and shutdown-script
  final Input<Map<String, String>>? metadata;

  /// Network configurations for the TPU node.
  final Input<NetworkConfig20>? networkConfig;

  /// The unqualified resource name.
  final Input<String>? nodeId;
  final Input<String>? project;

  /// Idempotent request UUID.
  final Input<String>? requestId;

  /// The runtime version running in the Node.
  final Input<String> runtimeVersion;

  /// The scheduling options for this node.
  final Input<SchedulingConfig4>? schedulingConfig;

  /// The Google Cloud Platform Service Account to be used by the TPU node VMs. If None is specified, the default compute service account will be used.
  final Input<ServiceAccount10>? serviceAccount;

  /// Shielded Instance options.
  final Input<ShieldedInstanceConfig11>? shieldedInstanceConfig;

  /// Tags to apply to the TPU Node. Tags are used to identify valid sources or targets for network firewalls.
  final Input<List<String>>? tags;

  NodeArgs4({
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
      map['acceleratorConfig'] = Input.mapOptionalInputValue<
              AcceleratorConfig11, Map<String, dynamic>>(
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
      map['bootDiskConfig'] =
          Input.mapOptionalInputValue<BootDiskConfig, Map<String, dynamic>>(
              bootDiskConfigValue, (value) => value.toMap());
    }
    final cidrBlockValue = cidrBlock;
    if (cidrBlockValue != null) {
      map['cidrBlock'] = cidrBlockValue;
    }
    final dataDisksValue = dataDisks;
    if (dataDisksValue != null) {
      map['dataDisks'] = Input.mapOptionalInputValue<List<AttachedDisk6>,
              List<Map<String, dynamic>>>(
          dataDisksValue,
          (value) => Input.encodeList<AttachedDisk6, Map<String, dynamic>>(
              value, (value) => value.toMap()));
    }
    final descriptionValue = description;
    if (descriptionValue != null) {
      map['description'] = descriptionValue;
    }
    final healthValue = health;
    if (healthValue != null) {
      map['health'] = Input.mapOptionalInputValue<NodeHealth4, String>(
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
      map['networkConfig'] =
          Input.mapOptionalInputValue<NetworkConfig20, Map<String, dynamic>>(
              networkConfigValue, (value) => value.toMap());
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
      map['schedulingConfig'] =
          Input.mapOptionalInputValue<SchedulingConfig4, Map<String, dynamic>>(
              schedulingConfigValue, (value) => value.toMap());
    }
    final serviceAccountValue = serviceAccount;
    if (serviceAccountValue != null) {
      map['serviceAccount'] =
          Input.mapOptionalInputValue<ServiceAccount10, Map<String, dynamic>>(
              serviceAccountValue, (value) => value.toMap());
    }
    final shieldedInstanceConfigValue = shieldedInstanceConfig;
    if (shieldedInstanceConfigValue != null) {
      map['shieldedInstanceConfig'] = Input.mapOptionalInputValue<
              ShieldedInstanceConfig11, Map<String, dynamic>>(
          shieldedInstanceConfigValue, (value) => value.toMap());
    }
    final tagsValue = tags;
    if (tagsValue != null) {
      map['tags'] = tagsValue;
    }
    return map;
  }

  factory NodeArgs4.fromMap(Map<String, dynamic> map) {
    return NodeArgs4(
      acceleratorConfig:
          Input.asOptionalInput<AcceleratorConfig11>(map['acceleratorConfig']),
      acceleratorType: Input.asOptionalInput<String>(map['acceleratorType']),
      autocheckpointEnabled:
          Input.asOptionalInput<bool>(map['autocheckpointEnabled']),
      bootDiskConfig:
          Input.asOptionalInput<BootDiskConfig>(map['bootDiskConfig']),
      cidrBlock: Input.asOptionalInput<String>(map['cidrBlock']),
      dataDisks: Input.asOptionalInput<List<AttachedDisk6>>(map['dataDisks']),
      description: Input.asOptionalInput<String>(map['description']),
      health: Input.asOptionalInput<NodeHealth4>(map['health']),
      labels: Input.asOptionalInput<Map<String, String>>(map['labels']),
      location: Input.asOptionalInput<String>(map['location']),
      metadata: Input.asOptionalInput<Map<String, String>>(map['metadata']),
      networkConfig:
          Input.asOptionalInput<NetworkConfig20>(map['networkConfig']),
      nodeId: Input.asOptionalInput<String>(map['nodeId']),
      project: Input.asOptionalInput<String>(map['project']),
      requestId: Input.asOptionalInput<String>(map['requestId']),
      runtimeVersion: Input.asInput<String>(map['runtimeVersion']),
      schedulingConfig:
          Input.asOptionalInput<SchedulingConfig4>(map['schedulingConfig']),
      serviceAccount:
          Input.asOptionalInput<ServiceAccount10>(map['serviceAccount']),
      shieldedInstanceConfig: Input.asOptionalInput<ShieldedInstanceConfig11>(
          map['shieldedInstanceConfig']),
      tags: Input.asOptionalInput<List<String>>(map['tags']),
    );
  }
}
