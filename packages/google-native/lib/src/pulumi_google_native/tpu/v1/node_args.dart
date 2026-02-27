// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'node_health.dart';
import 'scheduling_config.dart';

/// The set of arguments for Node.
class NodeArgs {
  /// The type of hardware accelerators associated with this node.
  final pulumi.Input<String> acceleratorType;

  /// The CIDR block that the TPU node will use when selecting an IP address. This CIDR block must be a /29 block; the Compute Engine networks API forbids a smaller block, and using a larger block would be wasteful (a node can only consume one IP address). Errors will occur if the CIDR block has already been used for a currently existing TPU node, the CIDR block conflicts with any subnetworks in the user's provided network, or the provided network is peered with another network that is using that CIDR block.
  final pulumi.Input<String>? cidrBlock;

  /// The user-supplied description of the TPU. Maximum of 512 characters.
  final pulumi.Input<String>? description;

  /// The health status of the TPU node.
  final pulumi.Input<NodeHealth>? health;

  /// Resource labels to represent user-provided metadata.
  final pulumi.Input<Map<String, String>>? labels;
  final pulumi.Input<String>? location;

  /// The name of a network they wish to peer the TPU node to. It must be a preexisting Compute Engine network inside of the project on which this API has been activated. If none is provided, "default" will be used.
  final pulumi.Input<String>? network;

  /// The unqualified resource name.
  final pulumi.Input<String>? nodeId;
  final pulumi.Input<String>? project;

  /// The scheduling options for this node.
  final pulumi.Input<SchedulingConfig>? schedulingConfig;

  /// The version of Tensorflow running in the Node.
  final pulumi.Input<String> tensorflowVersion;

  /// Whether the VPC peering for the node is set up through Service Networking API. The VPC Peering should be set up before provisioning the node. If this field is set, cidr_block field should not be specified. If the network, that you want to peer the TPU Node to, is Shared VPC networks, the node must be created with this this field enabled.
  final pulumi.Input<bool>? useServiceNetworking;

  NodeArgs({
    required this.acceleratorType,
    this.cidrBlock,
    this.description,
    this.health,
    this.labels,
    this.location,
    this.network,
    this.nodeId,
    this.project,
    this.schedulingConfig,
    required this.tensorflowVersion,
    this.useServiceNetworking,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['acceleratorType'] = acceleratorType;
    final cidrBlockValue = cidrBlock;
    if (cidrBlockValue != null) {
      map['cidrBlock'] = cidrBlockValue;
    }
    final descriptionValue = description;
    if (descriptionValue != null) {
      map['description'] = descriptionValue;
    }
    final healthValue = health;
    if (healthValue != null) {
      map['health'] = pulumi.Input.mapOptionalInputValue<NodeHealth, String>(
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
    final networkValue = network;
    if (networkValue != null) {
      map['network'] = networkValue;
    }
    final nodeIdValue = nodeId;
    if (nodeIdValue != null) {
      map['nodeId'] = nodeIdValue;
    }
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    final schedulingConfigValue = schedulingConfig;
    if (schedulingConfigValue != null) {
      map['schedulingConfig'] = pulumi.Input.mapOptionalInputValue<
              SchedulingConfig, Map<String, dynamic>>(
          schedulingConfigValue, (value) => value.toMap());
    }
    map['tensorflowVersion'] = tensorflowVersion;
    final useServiceNetworkingValue = useServiceNetworking;
    if (useServiceNetworkingValue != null) {
      map['useServiceNetworking'] = useServiceNetworkingValue;
    }
    return map;
  }

  factory NodeArgs.fromMap(Map<String, dynamic> map) {
    return NodeArgs(
      acceleratorType: pulumi.Input.asInput<String>(map['acceleratorType']),
      cidrBlock: pulumi.Input.asOptionalInput<String>(map['cidrBlock']),
      description: pulumi.Input.asOptionalInput<String>(map['description']),
      health: pulumi.Input.asOptionalInput<NodeHealth>(map['health']),
      labels: pulumi.Input.asOptionalInput<Map<String, String>>(map['labels']),
      location: pulumi.Input.asOptionalInput<String>(map['location']),
      network: pulumi.Input.asOptionalInput<String>(map['network']),
      nodeId: pulumi.Input.asOptionalInput<String>(map['nodeId']),
      project: pulumi.Input.asOptionalInput<String>(map['project']),
      schedulingConfig: pulumi.Input.asOptionalInput<SchedulingConfig>(
          map['schedulingConfig']),
      tensorflowVersion: pulumi.Input.asInput<String>(map['tensorflowVersion']),
      useServiceNetworking:
          pulumi.Input.asOptionalInput<bool>(map['useServiceNetworking']),
    );
  }
}
