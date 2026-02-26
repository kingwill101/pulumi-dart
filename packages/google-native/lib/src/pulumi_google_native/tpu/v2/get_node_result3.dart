// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import 'accelerator_config_response10.dart';
import 'attached_disk_response5.dart';
import 'network_config_response19.dart';
import 'network_endpoint_response3.dart';
import 'scheduling_config_response3.dart';
import 'service_account_response9.dart';
import 'shielded_instance_config_response10.dart';
import 'symptom_response3.dart';

/// Result data returned by getNode.
class GetNodeResult3 {
  /// The AccleratorConfig for the TPU Node.
  final AcceleratorConfigResponse10 acceleratorConfig;

  /// Optional. The type of hardware accelerators associated with this node.
  final String acceleratorType;

  /// The API version that created this Node.
  final String apiVersion;

  /// The CIDR block that the TPU node will use when selecting an IP address. This CIDR block must be a /29 block; the Compute Engine networks API forbids a smaller block, and using a larger block would be wasteful (a node can only consume one IP address). Errors will occur if the CIDR block has already been used for a currently existing TPU node, the CIDR block conflicts with any subnetworks in the user's provided network, or the provided network is peered with another network that is using that CIDR block.
  final String cidrBlock;

  /// The time when the node was created.
  final String createTime;

  /// The additional data disks for the Node.
  final List<AttachedDiskResponse5> dataDisks;

  /// The user-supplied description of the TPU. Maximum of 512 characters.
  final String description;

  /// The health status of the TPU node.
  final String health;

  /// If this field is populated, it contains a description of why the TPU Node is unhealthy.
  final String healthDescription;

  /// Resource labels to represent user-provided metadata.
  final Map<String, String> labels;

  /// Custom metadata to apply to the TPU Node. Can set startup-script and shutdown-script
  final Map<String, String> metadata;

  /// Whether the Node belongs to a Multislice group.
  final bool multisliceNode;

  /// Immutable. The name of the TPU.
  final String name;

  /// Network configurations for the TPU node.
  final NetworkConfigResponse19 networkConfig;

  /// The network endpoints where TPU workers can be accessed and sent work. It is recommended that runtime clients of the node reach out to the 0th entry in this map first.
  final List<NetworkEndpointResponse3> networkEndpoints;

  /// The qualified name of the QueuedResource that requested this Node.
  final String queuedResource;

  /// The runtime version running in the Node.
  final String runtimeVersion;

  /// The scheduling options for this node.
  final SchedulingConfigResponse3 schedulingConfig;

  /// The Google Cloud Platform Service Account to be used by the TPU node VMs. If None is specified, the default compute service account will be used.
  final ServiceAccountResponse9 serviceAccount;

  /// Shielded Instance options.
  final ShieldedInstanceConfigResponse10 shieldedInstanceConfig;

  /// The current state for the TPU Node.
  final String state;

  /// The Symptoms that have occurred to the TPU Node.
  final List<SymptomResponse3> symptoms;

  /// Tags to apply to the TPU Node. Tags are used to identify valid sources or targets for network firewalls.
  final List<String> tags;

  GetNodeResult3({
    required this.acceleratorConfig,
    required this.acceleratorType,
    required this.apiVersion,
    required this.cidrBlock,
    required this.createTime,
    required this.dataDisks,
    required this.description,
    required this.health,
    required this.healthDescription,
    required this.labels,
    required this.metadata,
    required this.multisliceNode,
    required this.name,
    required this.networkConfig,
    required this.networkEndpoints,
    required this.queuedResource,
    required this.runtimeVersion,
    required this.schedulingConfig,
    required this.serviceAccount,
    required this.shieldedInstanceConfig,
    required this.state,
    required this.symptoms,
    required this.tags,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['acceleratorConfig'] = acceleratorConfig.toMap();
    map['acceleratorType'] = acceleratorType;
    map['apiVersion'] = apiVersion;
    map['cidrBlock'] = cidrBlock;
    map['createTime'] = createTime;
    map['dataDisks'] =
        Input.encodeList<AttachedDiskResponse5, Map<String, dynamic>>(
            dataDisks, (value) => value.toMap());
    map['description'] = description;
    map['health'] = health;
    map['healthDescription'] = healthDescription;
    map['labels'] = labels;
    map['metadata'] = metadata;
    map['multisliceNode'] = multisliceNode;
    map['name'] = name;
    map['networkConfig'] = networkConfig.toMap();
    map['networkEndpoints'] =
        Input.encodeList<NetworkEndpointResponse3, Map<String, dynamic>>(
            networkEndpoints, (value) => value.toMap());
    map['queuedResource'] = queuedResource;
    map['runtimeVersion'] = runtimeVersion;
    map['schedulingConfig'] = schedulingConfig.toMap();
    map['serviceAccount'] = serviceAccount.toMap();
    map['shieldedInstanceConfig'] = shieldedInstanceConfig.toMap();
    map['state'] = state;
    map['symptoms'] = Input.encodeList<SymptomResponse3, Map<String, dynamic>>(
        symptoms, (value) => value.toMap());
    map['tags'] = tags;
    return map;
  }

  factory GetNodeResult3.fromMap(Map<String, dynamic> map) {
    return GetNodeResult3(
      acceleratorConfig: AcceleratorConfigResponse10.fromMap(
          (map['acceleratorConfig'] as Map).cast<String, dynamic>()),
      acceleratorType: map['acceleratorType'] as String,
      apiVersion: map['apiVersion'] as String,
      cidrBlock: map['cidrBlock'] as String,
      createTime: map['createTime'] as String,
      dataDisks: Input.decodeList<AttachedDiskResponse5>(
          map['dataDisks'],
          (value) => AttachedDiskResponse5.fromMap(
              (value as Map).cast<String, dynamic>())),
      description: map['description'] as String,
      health: map['health'] as String,
      healthDescription: map['healthDescription'] as String,
      labels: (map['labels'] as Map).cast<String, String>(),
      metadata: (map['metadata'] as Map).cast<String, String>(),
      multisliceNode: map['multisliceNode'] as bool,
      name: map['name'] as String,
      networkConfig: NetworkConfigResponse19.fromMap(
          (map['networkConfig'] as Map).cast<String, dynamic>()),
      networkEndpoints: Input.decodeList<NetworkEndpointResponse3>(
          map['networkEndpoints'],
          (value) => NetworkEndpointResponse3.fromMap(
              (value as Map).cast<String, dynamic>())),
      queuedResource: map['queuedResource'] as String,
      runtimeVersion: map['runtimeVersion'] as String,
      schedulingConfig: SchedulingConfigResponse3.fromMap(
          (map['schedulingConfig'] as Map).cast<String, dynamic>()),
      serviceAccount: ServiceAccountResponse9.fromMap(
          (map['serviceAccount'] as Map).cast<String, dynamic>()),
      shieldedInstanceConfig: ShieldedInstanceConfigResponse10.fromMap(
          (map['shieldedInstanceConfig'] as Map).cast<String, dynamic>()),
      state: map['state'] as String,
      symptoms: Input.decodeList<SymptomResponse3>(
          map['symptoms'],
          (value) =>
              SymptomResponse3.fromMap((value as Map).cast<String, dynamic>())),
      tags: (map['tags'] as List).cast<String>(),
    );
  }
}
