// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'accelerator_config.dart';
import 'attached_disk.dart';
import 'network_config.dart';
import 'node_health_tpu_v2.dart';
import 'scheduling_config_tpu_v2.dart';
import 'service_account.dart';
import 'shielded_instance_config.dart';

/// {@template pulumi_tpu_v2_node_tpu_v2_args_doc}
/// The set of arguments for Node.
/// {@endtemplate}
/// {@macro pulumi_tpu_v2_node_tpu_v2_args_doc}
class NodeTpuV2Args {
  /// The AccleratorConfig for the TPU Node.
  final pulumi.Input<AcceleratorConfig>? acceleratorConfig;
  /// Optional. The type of hardware accelerators associated with this node.
  final pulumi.Input<String>? acceleratorType;
  /// The CIDR block that the TPU node will use when selecting an IP address. This CIDR block must be a /29 block; the Compute Engine networks API forbids a smaller block, and using a larger block would be wasteful (a node can only consume one IP address). Errors will occur if the CIDR block has already been used for a currently existing TPU node, the CIDR block conflicts with any subnetworks in the user's provided network, or the provided network is peered with another network that is using that CIDR block.
  final pulumi.Input<String>? cidrBlock;
  /// The additional data disks for the Node.
  final pulumi.Input<List<AttachedDisk>>? dataDisks;
  /// The user-supplied description of the TPU. Maximum of 512 characters.
  final pulumi.Input<String>? description;
  /// The health status of the TPU node.
  final pulumi.Input<NodeHealthTpuV2>? health;
  /// Resource labels to represent user-provided metadata.
  final pulumi.Input<Map<String, String>>? labels;
  final pulumi.Input<String>? location;
  /// Custom metadata to apply to the TPU Node. Can set startup-script and shutdown-script
  final pulumi.Input<Map<String, String>>? metadata;
  /// Network configurations for the TPU node.
  final pulumi.Input<NetworkConfig>? networkConfig;
  /// The unqualified resource name.
  final pulumi.Input<String>? nodeId;
  final pulumi.Input<String>? project;
  /// The runtime version running in the Node.
  final pulumi.Input<String> runtimeVersion;
  /// The scheduling options for this node.
  final pulumi.Input<SchedulingConfigTpuV2>? schedulingConfig;
  /// The Google Cloud Platform Service Account to be used by the TPU node VMs. If None is specified, the default compute service account will be used.
  final pulumi.Input<ServiceAccount>? serviceAccount;
  /// Shielded Instance options.
  final pulumi.Input<ShieldedInstanceConfig>? shieldedInstanceConfig;
  /// Tags to apply to the TPU Node. Tags are used to identify valid sources or targets for network firewalls.
  final pulumi.Input<List<String>>? tags;

  /// Creates a new [NodeTpuV2Args].
  /// [acceleratorConfig] The AccleratorConfig for the TPU Node.
  /// [acceleratorType] Optional. The type of hardware accelerators associated with this node.
  /// [cidrBlock] The CIDR block that the TPU node will use when selecting an IP address. This CIDR block must be a /29 block; the Compute Engine networks API forbids a smaller block, and using a larger block would be wasteful (a node can only consume one IP address). Errors will occur if the CIDR block has already been used for a currently existing TPU node, the CIDR block conflicts with any subnetworks in the user's provided network, or the provided network is peered with another network that is using that CIDR block.
  /// [dataDisks] The additional data disks for the Node.
  /// [description] The user-supplied description of the TPU. Maximum of 512 characters.
  /// [health] The health status of the TPU node.
  /// [labels] Resource labels to represent user-provided metadata.
  /// [location] Optional.
  /// [metadata] Custom metadata to apply to the TPU Node. Can set startup-script and shutdown-script
  /// [networkConfig] Network configurations for the TPU node.
  /// [nodeId] The unqualified resource name.
  /// [project] Optional.
  /// [runtimeVersion] The runtime version running in the Node.
  /// [schedulingConfig] The scheduling options for this node.
  /// [serviceAccount] The Google Cloud Platform Service Account to be used by the TPU node VMs. If None is specified, the default compute service account will be used.
  /// [shieldedInstanceConfig] Shielded Instance options.
  /// [tags] Tags to apply to the TPU Node. Tags are used to identify valid sources or targets for network firewalls.
  NodeTpuV2Args({
    AcceleratorConfig? acceleratorConfig,
    String? acceleratorType,
    String? cidrBlock,
    List<AttachedDisk>? dataDisks,
    String? description,
    NodeHealthTpuV2? health,
    Map<String, String>? labels,
    String? location,
    Map<String, String>? metadata,
    NetworkConfig? networkConfig,
    String? nodeId,
    String? project,
    required String runtimeVersion,
    SchedulingConfigTpuV2? schedulingConfig,
    ServiceAccount? serviceAccount,
    ShieldedInstanceConfig? shieldedInstanceConfig,
    List<String>? tags,
  }) :
      acceleratorConfig = pulumi.Input.asOptionalInput<AcceleratorConfig>(acceleratorConfig),
      acceleratorType = pulumi.Input.asOptionalInput<String>(acceleratorType),
      cidrBlock = pulumi.Input.asOptionalInput<String>(cidrBlock),
      dataDisks = pulumi.Input.asOptionalInput<List<AttachedDisk>>(dataDisks),
      description = pulumi.Input.asOptionalInput<String>(description),
      health = pulumi.Input.asOptionalInput<NodeHealthTpuV2>(health),
      labels = pulumi.Input.asOptionalInput<Map<String, String>>(labels),
      location = pulumi.Input.asOptionalInput<String>(location),
      metadata = pulumi.Input.asOptionalInput<Map<String, String>>(metadata),
      networkConfig = pulumi.Input.asOptionalInput<NetworkConfig>(networkConfig),
      nodeId = pulumi.Input.asOptionalInput<String>(nodeId),
      project = pulumi.Input.asOptionalInput<String>(project),
      runtimeVersion = pulumi.Input.asInput<String>(runtimeVersion),
      schedulingConfig = pulumi.Input.asOptionalInput<SchedulingConfigTpuV2>(schedulingConfig),
      serviceAccount = pulumi.Input.asOptionalInput<ServiceAccount>(serviceAccount),
      shieldedInstanceConfig = pulumi.Input.asOptionalInput<ShieldedInstanceConfig>(shieldedInstanceConfig),
      tags = pulumi.Input.asOptionalInput<List<String>>(tags);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'acceleratorConfig': ?pulumi.Input.mapOptionalInputValue<AcceleratorConfig, Map<String, dynamic>>(acceleratorConfig, (value) => value.toMap()),
      'acceleratorType': ?acceleratorType,
      'cidrBlock': ?cidrBlock,
      'dataDisks': ?pulumi.Input.mapOptionalInputValue<List<AttachedDisk>, List<Map<String, dynamic>>>(dataDisks, (value) => pulumi.Input.encodeList<AttachedDisk, Map<String, dynamic>>(value, (value) => value.toMap())),
      'description': ?description,
      'health': ?pulumi.Input.mapOptionalInputValue<NodeHealthTpuV2, String>(health, (value) => value.value),
      'labels': ?labels,
      'location': ?location,
      'metadata': ?metadata,
      'networkConfig': ?pulumi.Input.mapOptionalInputValue<NetworkConfig, Map<String, dynamic>>(networkConfig, (value) => value.toMap()),
      'nodeId': ?nodeId,
      'project': ?project,
      'runtimeVersion': runtimeVersion,
      'schedulingConfig': ?pulumi.Input.mapOptionalInputValue<SchedulingConfigTpuV2, Map<String, dynamic>>(schedulingConfig, (value) => value.toMap()),
      'serviceAccount': ?pulumi.Input.mapOptionalInputValue<ServiceAccount, Map<String, dynamic>>(serviceAccount, (value) => value.toMap()),
      'shieldedInstanceConfig': ?pulumi.Input.mapOptionalInputValue<ShieldedInstanceConfig, Map<String, dynamic>>(shieldedInstanceConfig, (value) => value.toMap()),
      'tags': ?tags,
    };
  }

  factory NodeTpuV2Args.fromMap(Map<String, dynamic> map) {
    return NodeTpuV2Args(
      acceleratorConfig: map['acceleratorConfig'] == null ? null : AcceleratorConfig.fromMap((map['acceleratorConfig'] as Map).cast<String, dynamic>()),
      acceleratorType: map['acceleratorType'] == null ? null : map['acceleratorType'] as String,
      cidrBlock: map['cidrBlock'] == null ? null : map['cidrBlock'] as String,
      dataDisks: map['dataDisks'] == null ? null : pulumi.Input.decodeList<AttachedDisk>(map['dataDisks'], (value) => AttachedDisk.fromMap((value as Map).cast<String, dynamic>())),
      description: map['description'] == null ? null : map['description'] as String,
      health: map['health'] == null ? null : NodeHealthTpuV2.fromValue(map['health'] as String),
      labels: map['labels'] == null ? null : (map['labels'] as Map).cast<String, String>(),
      location: map['location'] == null ? null : map['location'] as String,
      metadata: map['metadata'] == null ? null : (map['metadata'] as Map).cast<String, String>(),
      networkConfig: map['networkConfig'] == null ? null : NetworkConfig.fromMap((map['networkConfig'] as Map).cast<String, dynamic>()),
      nodeId: map['nodeId'] == null ? null : map['nodeId'] as String,
      project: map['project'] == null ? null : map['project'] as String,
      runtimeVersion: map['runtimeVersion'] as String,
      schedulingConfig: map['schedulingConfig'] == null ? null : SchedulingConfigTpuV2.fromMap((map['schedulingConfig'] as Map).cast<String, dynamic>()),
      serviceAccount: map['serviceAccount'] == null ? null : ServiceAccount.fromMap((map['serviceAccount'] as Map).cast<String, dynamic>()),
      shieldedInstanceConfig: map['shieldedInstanceConfig'] == null ? null : ShieldedInstanceConfig.fromMap((map['shieldedInstanceConfig'] as Map).cast<String, dynamic>()),
      tags: map['tags'] == null ? null : (map['tags'] as List).cast<String>(),
    );
  }
}

