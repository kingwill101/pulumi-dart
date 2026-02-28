// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'node_health_tpu_v1alpha1.dart';
import 'scheduling_config_tpu_v1alpha1.dart';

/// {@template pulumi_tpu_v1alpha1_node_tpu_v1alpha1_args_doc}
/// The set of arguments for Node.
/// {@endtemplate}
/// {@macro pulumi_tpu_v1alpha1_node_tpu_v1alpha1_args_doc}
class NodeTpuV1alpha1Args {
  /// The type of hardware accelerators associated with this node.
  final pulumi.Input<String> acceleratorType;

  /// The CIDR block that the TPU node will use when selecting an IP address. This CIDR block must be a /29 block; the Compute Engine networks API forbids a smaller block, and using a larger block would be wasteful (a node can only consume one IP address). Errors will occur if the CIDR block has already been used for a currently existing TPU node, the CIDR block conflicts with any subnetworks in the user's provided network, or the provided network is peered with another network that is using that CIDR block.
  final pulumi.Input<String>? cidrBlock;

  /// The user-supplied description of the TPU. Maximum of 512 characters.
  final pulumi.Input<String>? description;

  /// The health status of the TPU node.
  final pulumi.Input<NodeHealthTpuV1alpha1>? health;

  /// Resource labels to represent user-provided metadata.
  final pulumi.Input<Map<String, String>>? labels;
  final pulumi.Input<String>? location;

  /// The name of a network they wish to peer the TPU node to. It must be a preexisting Compute Engine network inside of the project on which this API has been activated. If none is provided, "default" will be used.
  final pulumi.Input<String>? network;

  /// The unqualified resource name.
  final pulumi.Input<String>? nodeId;
  final pulumi.Input<String>? project;

  /// Idempotent request UUID.
  final pulumi.Input<String>? requestId;

  /// The scheduling options for this node.
  final pulumi.Input<SchedulingConfigTpuV1alpha1>? schedulingConfig;

  /// The version of Tensorflow running in the Node.
  final pulumi.Input<String> tensorflowVersion;

  /// Whether the VPC peering for the node is set up through Service Networking API. The VPC Peering should be set up before provisioning the node. If this field is set, cidr_block field should not be specified. If the network, that you want to peer the TPU Node to, is Shared VPC networks, the node must be created with this this field enabled.
  final pulumi.Input<bool>? useServiceNetworking;

  /// Creates a new [NodeTpuV1alpha1Args].
  /// [acceleratorType] The type of hardware accelerators associated with this node.
  /// [cidrBlock] The CIDR block that the TPU node will use when selecting an IP address. This CIDR block must be a /29 block; the Compute Engine networks API forbids a smaller block, and using a larger block would be wasteful (a node can only consume one IP address). Errors will occur if the CIDR block has already been used for a currently existing TPU node, the CIDR block conflicts with any subnetworks in the user's provided network, or the provided network is peered with another network that is using that CIDR block.
  /// [description] The user-supplied description of the TPU. Maximum of 512 characters.
  /// [health] The health status of the TPU node.
  /// [labels] Resource labels to represent user-provided metadata.
  /// [location] Optional.
  /// [network] The name of a network they wish to peer the TPU node to. It must be a preexisting Compute Engine network inside of the project on which this API has been activated. If none is provided, "default" will be used.
  /// [nodeId] The unqualified resource name.
  /// [project] Optional.
  /// [requestId] Idempotent request UUID.
  /// [schedulingConfig] The scheduling options for this node.
  /// [tensorflowVersion] The version of Tensorflow running in the Node.
  /// [useServiceNetworking] Whether the VPC peering for the node is set up through Service Networking API. The VPC Peering should be set up before provisioning the node. If this field is set, cidr_block field should not be specified. If the network, that you want to peer the TPU Node to, is Shared VPC networks, the node must be created with this this field enabled.
  NodeTpuV1alpha1Args({
    required String acceleratorType,
    String? cidrBlock,
    String? description,
    NodeHealthTpuV1alpha1? health,
    Map<String, String>? labels,
    String? location,
    String? network,
    String? nodeId,
    String? project,
    String? requestId,
    SchedulingConfigTpuV1alpha1? schedulingConfig,
    required String tensorflowVersion,
    bool? useServiceNetworking,
  })  : acceleratorType = pulumi.Input.asInput<String>(acceleratorType),
        cidrBlock = pulumi.Input.asOptionalInput<String>(cidrBlock),
        description = pulumi.Input.asOptionalInput<String>(description),
        health = pulumi.Input.asOptionalInput<NodeHealthTpuV1alpha1>(health),
        labels = pulumi.Input.asOptionalInput<Map<String, String>>(labels),
        location = pulumi.Input.asOptionalInput<String>(location),
        network = pulumi.Input.asOptionalInput<String>(network),
        nodeId = pulumi.Input.asOptionalInput<String>(nodeId),
        project = pulumi.Input.asOptionalInput<String>(project),
        requestId = pulumi.Input.asOptionalInput<String>(requestId),
        schedulingConfig =
            pulumi.Input.asOptionalInput<SchedulingConfigTpuV1alpha1>(
                schedulingConfig),
        tensorflowVersion = pulumi.Input.asInput<String>(tensorflowVersion),
        useServiceNetworking =
            pulumi.Input.asOptionalInput<bool>(useServiceNetworking);

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
      map['health'] =
          pulumi.Input.mapOptionalInputValue<NodeHealthTpuV1alpha1, String>(
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
      map['schedulingConfig'] = pulumi.Input.mapOptionalInputValue<
              SchedulingConfigTpuV1alpha1, Map<String, dynamic>>(
          schedulingConfigValue, (value) => value.toMap());
    }
    map['tensorflowVersion'] = tensorflowVersion;
    final useServiceNetworkingValue = useServiceNetworking;
    if (useServiceNetworkingValue != null) {
      map['useServiceNetworking'] = useServiceNetworkingValue;
    }
    return map;
  }

  factory NodeTpuV1alpha1Args.fromMap(Map<String, dynamic> map) {
    return NodeTpuV1alpha1Args(
      acceleratorType: map['acceleratorType'] as String,
      cidrBlock: map['cidrBlock'] == null ? null : map['cidrBlock'] as String,
      description:
          map['description'] == null ? null : map['description'] as String,
      health: map['health'] == null
          ? null
          : NodeHealthTpuV1alpha1.fromValue(map['health'] as String),
      labels: map['labels'] == null
          ? null
          : (map['labels'] as Map).cast<String, String>(),
      location: map['location'] == null ? null : map['location'] as String,
      network: map['network'] == null ? null : map['network'] as String,
      nodeId: map['nodeId'] == null ? null : map['nodeId'] as String,
      project: map['project'] == null ? null : map['project'] as String,
      requestId: map['requestId'] == null ? null : map['requestId'] as String,
      schedulingConfig: map['schedulingConfig'] == null
          ? null
          : SchedulingConfigTpuV1alpha1.fromMap(
              (map['schedulingConfig'] as Map).cast<String, dynamic>()),
      tensorflowVersion: map['tensorflowVersion'] as String,
      useServiceNetworking: map['useServiceNetworking'] == null
          ? null
          : map['useServiceNetworking'] as bool,
    );
  }
}
