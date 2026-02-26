// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import 'accelerator_config10.dart';
import 'attached_disk5.dart';
import 'network_config19.dart';
import 'node_health3.dart';
import 'scheduling_config3.dart';
import 'service_account9.dart';
import 'shielded_instance_config10.dart';

/// The set of arguments for Node.
class NodeArgs3 {
  /// The AccleratorConfig for the TPU Node.
  final Input<AcceleratorConfig10>? acceleratorConfig;

  /// Optional. The type of hardware accelerators associated with this node.
  final Input<String>? acceleratorType;

  /// The CIDR block that the TPU node will use when selecting an IP address. This CIDR block must be a /29 block; the Compute Engine networks API forbids a smaller block, and using a larger block would be wasteful (a node can only consume one IP address). Errors will occur if the CIDR block has already been used for a currently existing TPU node, the CIDR block conflicts with any subnetworks in the user's provided network, or the provided network is peered with another network that is using that CIDR block.
  final Input<String>? cidrBlock;

  /// The additional data disks for the Node.
  final Input<List<AttachedDisk5>>? dataDisks;

  /// The user-supplied description of the TPU. Maximum of 512 characters.
  final Input<String>? description;

  /// The health status of the TPU node.
  final Input<NodeHealth3>? health;

  /// Resource labels to represent user-provided metadata.
  final Input<Map<String, String>>? labels;
  final Input<String>? location;

  /// Custom metadata to apply to the TPU Node. Can set startup-script and shutdown-script
  final Input<Map<String, String>>? metadata;

  /// Network configurations for the TPU node.
  final Input<NetworkConfig19>? networkConfig;

  /// The unqualified resource name.
  final Input<String>? nodeId;
  final Input<String>? project;

  /// The runtime version running in the Node.
  final Input<String> runtimeVersion;

  /// The scheduling options for this node.
  final Input<SchedulingConfig3>? schedulingConfig;

  /// The Google Cloud Platform Service Account to be used by the TPU node VMs. If None is specified, the default compute service account will be used.
  final Input<ServiceAccount9>? serviceAccount;

  /// Shielded Instance options.
  final Input<ShieldedInstanceConfig10>? shieldedInstanceConfig;

  /// Tags to apply to the TPU Node. Tags are used to identify valid sources or targets for network firewalls.
  final Input<List<String>>? tags;

  NodeArgs3({
    this.acceleratorConfig,
    this.acceleratorType,
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
              AcceleratorConfig10, Map<String, dynamic>>(
          acceleratorConfigValue, (value) => value.toMap());
    }
    final acceleratorTypeValue = acceleratorType;
    if (acceleratorTypeValue != null) {
      map['acceleratorType'] = acceleratorTypeValue;
    }
    final cidrBlockValue = cidrBlock;
    if (cidrBlockValue != null) {
      map['cidrBlock'] = cidrBlockValue;
    }
    final dataDisksValue = dataDisks;
    if (dataDisksValue != null) {
      map['dataDisks'] = Input.mapOptionalInputValue<List<AttachedDisk5>,
              List<Map<String, dynamic>>>(
          dataDisksValue,
          (value) => Input.encodeList<AttachedDisk5, Map<String, dynamic>>(
              value, (value) => value.toMap()));
    }
    final descriptionValue = description;
    if (descriptionValue != null) {
      map['description'] = descriptionValue;
    }
    final healthValue = health;
    if (healthValue != null) {
      map['health'] = Input.mapOptionalInputValue<NodeHealth3, String>(
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
          Input.mapOptionalInputValue<NetworkConfig19, Map<String, dynamic>>(
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
    map['runtimeVersion'] = runtimeVersion;
    final schedulingConfigValue = schedulingConfig;
    if (schedulingConfigValue != null) {
      map['schedulingConfig'] =
          Input.mapOptionalInputValue<SchedulingConfig3, Map<String, dynamic>>(
              schedulingConfigValue, (value) => value.toMap());
    }
    final serviceAccountValue = serviceAccount;
    if (serviceAccountValue != null) {
      map['serviceAccount'] =
          Input.mapOptionalInputValue<ServiceAccount9, Map<String, dynamic>>(
              serviceAccountValue, (value) => value.toMap());
    }
    final shieldedInstanceConfigValue = shieldedInstanceConfig;
    if (shieldedInstanceConfigValue != null) {
      map['shieldedInstanceConfig'] = Input.mapOptionalInputValue<
              ShieldedInstanceConfig10, Map<String, dynamic>>(
          shieldedInstanceConfigValue, (value) => value.toMap());
    }
    final tagsValue = tags;
    if (tagsValue != null) {
      map['tags'] = tagsValue;
    }
    return map;
  }

  factory NodeArgs3.fromMap(Map<String, dynamic> map) {
    return NodeArgs3(
      acceleratorConfig:
          Input.asOptionalInput<AcceleratorConfig10>(map['acceleratorConfig']),
      acceleratorType: Input.asOptionalInput<String>(map['acceleratorType']),
      cidrBlock: Input.asOptionalInput<String>(map['cidrBlock']),
      dataDisks: Input.asOptionalInput<List<AttachedDisk5>>(map['dataDisks']),
      description: Input.asOptionalInput<String>(map['description']),
      health: Input.asOptionalInput<NodeHealth3>(map['health']),
      labels: Input.asOptionalInput<Map<String, String>>(map['labels']),
      location: Input.asOptionalInput<String>(map['location']),
      metadata: Input.asOptionalInput<Map<String, String>>(map['metadata']),
      networkConfig:
          Input.asOptionalInput<NetworkConfig19>(map['networkConfig']),
      nodeId: Input.asOptionalInput<String>(map['nodeId']),
      project: Input.asOptionalInput<String>(map['project']),
      runtimeVersion: Input.asInput<String>(map['runtimeVersion']),
      schedulingConfig:
          Input.asOptionalInput<SchedulingConfig3>(map['schedulingConfig']),
      serviceAccount:
          Input.asOptionalInput<ServiceAccount9>(map['serviceAccount']),
      shieldedInstanceConfig: Input.asOptionalInput<ShieldedInstanceConfig10>(
          map['shieldedInstanceConfig']),
      tags: Input.asOptionalInput<List<String>>(map['tags']),
    );
  }
}
