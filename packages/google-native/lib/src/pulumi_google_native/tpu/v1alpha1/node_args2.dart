// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import 'node_health2.dart';
import 'scheduling_config2.dart';

/// The set of arguments for Node.
class NodeArgs2 {
  /// The type of hardware accelerators associated with this node.
  final Input<String> acceleratorType;

  /// The CIDR block that the TPU node will use when selecting an IP address. This CIDR block must be a /29 block; the Compute Engine networks API forbids a smaller block, and using a larger block would be wasteful (a node can only consume one IP address). Errors will occur if the CIDR block has already been used for a currently existing TPU node, the CIDR block conflicts with any subnetworks in the user's provided network, or the provided network is peered with another network that is using that CIDR block.
  final Input<String>? cidrBlock;

  /// The user-supplied description of the TPU. Maximum of 512 characters.
  final Input<String>? description;

  /// The health status of the TPU node.
  final Input<NodeHealth2>? health;

  /// Resource labels to represent user-provided metadata.
  final Input<Map<String, String>>? labels;
  final Input<String>? location;

  /// The name of a network they wish to peer the TPU node to. It must be a preexisting Compute Engine network inside of the project on which this API has been activated. If none is provided, "default" will be used.
  final Input<String>? network;

  /// The unqualified resource name.
  final Input<String>? nodeId;
  final Input<String>? project;

  /// Idempotent request UUID.
  final Input<String>? requestId;

  /// The scheduling options for this node.
  final Input<SchedulingConfig2>? schedulingConfig;

  /// The version of Tensorflow running in the Node.
  final Input<String> tensorflowVersion;

  /// Whether the VPC peering for the node is set up through Service Networking API. The VPC Peering should be set up before provisioning the node. If this field is set, cidr_block field should not be specified. If the network, that you want to peer the TPU Node to, is Shared VPC networks, the node must be created with this this field enabled.
  final Input<bool>? useServiceNetworking;

  NodeArgs2({
    required this.acceleratorType,
    this.cidrBlock,
    this.description,
    this.health,
    this.labels,
    this.location,
    this.network,
    this.nodeId,
    this.project,
    this.requestId,
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
      map['health'] = Input.mapOptionalInputValue<NodeHealth2, String>(
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
    final requestIdValue = requestId;
    if (requestIdValue != null) {
      map['requestId'] = requestIdValue;
    }
    final schedulingConfigValue = schedulingConfig;
    if (schedulingConfigValue != null) {
      map['schedulingConfig'] =
          Input.mapOptionalInputValue<SchedulingConfig2, Map<String, dynamic>>(
              schedulingConfigValue, (value) => value.toMap());
    }
    map['tensorflowVersion'] = tensorflowVersion;
    final useServiceNetworkingValue = useServiceNetworking;
    if (useServiceNetworkingValue != null) {
      map['useServiceNetworking'] = useServiceNetworkingValue;
    }
    return map;
  }

  factory NodeArgs2.fromMap(Map<String, dynamic> map) {
    return NodeArgs2(
      acceleratorType: Input.asInput<String>(map['acceleratorType']),
      cidrBlock: Input.asOptionalInput<String>(map['cidrBlock']),
      description: Input.asOptionalInput<String>(map['description']),
      health: Input.asOptionalInput<NodeHealth2>(map['health']),
      labels: Input.asOptionalInput<Map<String, String>>(map['labels']),
      location: Input.asOptionalInput<String>(map['location']),
      network: Input.asOptionalInput<String>(map['network']),
      nodeId: Input.asOptionalInput<String>(map['nodeId']),
      project: Input.asOptionalInput<String>(map['project']),
      requestId: Input.asOptionalInput<String>(map['requestId']),
      schedulingConfig:
          Input.asOptionalInput<SchedulingConfig2>(map['schedulingConfig']),
      tensorflowVersion: Input.asInput<String>(map['tensorflowVersion']),
      useServiceNetworking:
          Input.asOptionalInput<bool>(map['useServiceNetworking']),
    );
  }
}
