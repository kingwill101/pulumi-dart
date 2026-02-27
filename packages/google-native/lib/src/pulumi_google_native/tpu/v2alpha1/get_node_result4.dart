// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' hide Config;
import 'accelerator_config_response11.dart';
import 'attached_disk_response6.dart';
import 'boot_disk_config_response.dart';
import 'network_config_response20.dart';
import 'network_endpoint_response4.dart';
import 'scheduling_config_response4.dart';
import 'service_account_response10.dart';
import 'shielded_instance_config_response11.dart';
import 'symptom_response4.dart';

/// Result data returned by getNode.
class GetNodeResult4 {
  /// The AccleratorConfig for the TPU Node.
  final AcceleratorConfigResponse11 acceleratorConfig;

  /// The type of hardware accelerators associated with this node.
  final String acceleratorType;

  /// The API version that created this Node.
  final String apiVersion;

  /// Optional. Whether Autocheckpoint is enabled.
  final bool autocheckpointEnabled;

  /// Optional. Boot disk configuration.
  final BootDiskConfigResponse bootDiskConfig;

  /// The CIDR block that the TPU node will use when selecting an IP address. This CIDR block must be a /29 block; the Compute Engine networks API forbids a smaller block, and using a larger block would be wasteful (a node can only consume one IP address). Errors will occur if the CIDR block has already been used for a currently existing TPU node, the CIDR block conflicts with any subnetworks in the user's provided network, or the provided network is peered with another network that is using that CIDR block.
  final String cidrBlock;

  /// The time when the node was created.
  final String createTime;

  /// The additional data disks for the Node.
  final List<AttachedDiskResponse6> dataDisks;

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
  final NetworkConfigResponse20 networkConfig;

  /// The network endpoints where TPU workers can be accessed and sent work. It is recommended that runtime clients of the node reach out to the 0th entry in this map first.
  final List<NetworkEndpointResponse4> networkEndpoints;

  /// The qualified name of the QueuedResource that requested this Node.
  final String queuedResource;

  /// The runtime version running in the Node.
  final String runtimeVersion;

  /// The scheduling options for this node.
  final SchedulingConfigResponse4 schedulingConfig;

  /// The Google Cloud Platform Service Account to be used by the TPU node VMs. If None is specified, the default compute service account will be used.
  final ServiceAccountResponse10 serviceAccount;

  /// Shielded Instance options.
  final ShieldedInstanceConfigResponse11 shieldedInstanceConfig;

  /// The current state for the TPU Node.
  final String state;

  /// The Symptoms that have occurred to the TPU Node.
  final List<SymptomResponse4> symptoms;

  /// Tags to apply to the TPU Node. Tags are used to identify valid sources or targets for network firewalls.
  final List<String> tags;

  GetNodeResult4({
    required this.acceleratorConfig,
    required this.acceleratorType,
    required this.apiVersion,
    required this.autocheckpointEnabled,
    required this.bootDiskConfig,
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
    map['autocheckpointEnabled'] = autocheckpointEnabled;
    map['bootDiskConfig'] = bootDiskConfig.toMap();
    map['cidrBlock'] = cidrBlock;
    map['createTime'] = createTime;
    map['dataDisks'] =
        Input.encodeList<AttachedDiskResponse6, Map<String, dynamic>>(
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
        Input.encodeList<NetworkEndpointResponse4, Map<String, dynamic>>(
            networkEndpoints, (value) => value.toMap());
    map['queuedResource'] = queuedResource;
    map['runtimeVersion'] = runtimeVersion;
    map['schedulingConfig'] = schedulingConfig.toMap();
    map['serviceAccount'] = serviceAccount.toMap();
    map['shieldedInstanceConfig'] = shieldedInstanceConfig.toMap();
    map['state'] = state;
    map['symptoms'] = Input.encodeList<SymptomResponse4, Map<String, dynamic>>(
        symptoms, (value) => value.toMap());
    map['tags'] = tags;
    return map;
  }

  factory GetNodeResult4.fromMap(Map<String, dynamic> map) {
    return GetNodeResult4(
      acceleratorConfig: AcceleratorConfigResponse11.fromMap(
          (map['acceleratorConfig'] as Map).cast<String, dynamic>()),
      acceleratorType: map['acceleratorType'] as String,
      apiVersion: map['apiVersion'] as String,
      autocheckpointEnabled: map['autocheckpointEnabled'] as bool,
      bootDiskConfig: BootDiskConfigResponse.fromMap(
          (map['bootDiskConfig'] as Map).cast<String, dynamic>()),
      cidrBlock: map['cidrBlock'] as String,
      createTime: map['createTime'] as String,
      dataDisks: Input.decodeList<AttachedDiskResponse6>(
          map['dataDisks'],
          (value) => AttachedDiskResponse6.fromMap(
              (value as Map).cast<String, dynamic>())),
      description: map['description'] as String,
      health: map['health'] as String,
      healthDescription: map['healthDescription'] as String,
      labels: (map['labels'] as Map).cast<String, String>(),
      metadata: (map['metadata'] as Map).cast<String, String>(),
      multisliceNode: map['multisliceNode'] as bool,
      name: map['name'] as String,
      networkConfig: NetworkConfigResponse20.fromMap(
          (map['networkConfig'] as Map).cast<String, dynamic>()),
      networkEndpoints: Input.decodeList<NetworkEndpointResponse4>(
          map['networkEndpoints'],
          (value) => NetworkEndpointResponse4.fromMap(
              (value as Map).cast<String, dynamic>())),
      queuedResource: map['queuedResource'] as String,
      runtimeVersion: map['runtimeVersion'] as String,
      schedulingConfig: SchedulingConfigResponse4.fromMap(
          (map['schedulingConfig'] as Map).cast<String, dynamic>()),
      serviceAccount: ServiceAccountResponse10.fromMap(
          (map['serviceAccount'] as Map).cast<String, dynamic>()),
      shieldedInstanceConfig: ShieldedInstanceConfigResponse11.fromMap(
          (map['shieldedInstanceConfig'] as Map).cast<String, dynamic>()),
      state: map['state'] as String,
      symptoms: Input.decodeList<SymptomResponse4>(
          map['symptoms'],
          (value) =>
              SymptomResponse4.fromMap((value as Map).cast<String, dynamic>())),
      tags: (map['tags'] as List).cast<String>(),
    );
  }
}
