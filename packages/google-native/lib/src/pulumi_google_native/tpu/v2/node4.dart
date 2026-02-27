import 'package:pulumi/pulumi.dart' hide Config;
import 'accelerator_config_response10.dart';
import 'attached_disk_response5.dart';
import 'network_config_response19.dart';
import 'network_endpoint_response3.dart';
import 'node_args3.dart';
import 'scheduling_config_response3.dart';
import 'service_account_response9.dart';
import 'shielded_instance_config_response10.dart';
import 'symptom_response3.dart';

/// Creates a node.
/// Auto-naming is currently not supported for this resource.
class Node4 extends CustomResource {
  /// The AccleratorConfig for the TPU Node.
  late final Output<AcceleratorConfigResponse10> acceleratorConfig;

  /// Optional. The type of hardware accelerators associated with this node.
  late final Output<String> acceleratorType;

  /// The API version that created this Node.
  late final Output<String> apiVersion;

  /// The CIDR block that the TPU node will use when selecting an IP address. This CIDR block must be a /29 block; the Compute Engine networks API forbids a smaller block, and using a larger block would be wasteful (a node can only consume one IP address). Errors will occur if the CIDR block has already been used for a currently existing TPU node, the CIDR block conflicts with any subnetworks in the user's provided network, or the provided network is peered with another network that is using that CIDR block.
  late final Output<String> cidrBlock;

  /// The time when the node was created.
  late final Output<String> createTime;

  /// The additional data disks for the Node.
  late final Output<List<AttachedDiskResponse5>> dataDisks;

  /// The user-supplied description of the TPU. Maximum of 512 characters.
  late final Output<String> description;

  /// The health status of the TPU node.
  late final Output<String> health;

  /// If this field is populated, it contains a description of why the TPU Node is unhealthy.
  late final Output<String> healthDescription;

  /// Resource labels to represent user-provided metadata.
  late final Output<Map<String, String>> labels;
  late final Output<String> location;

  /// Custom metadata to apply to the TPU Node. Can set startup-script and shutdown-script
  late final Output<Map<String, String>> metadata;

  /// Whether the Node belongs to a Multislice group.
  late final Output<bool> multisliceNode;

  /// Immutable. The name of the TPU.
  late final Output<String> name;

  /// Network configurations for the TPU node.
  late final Output<NetworkConfigResponse19> networkConfig;

  /// The network endpoints where TPU workers can be accessed and sent work. It is recommended that runtime clients of the node reach out to the 0th entry in this map first.
  late final Output<List<NetworkEndpointResponse3>> networkEndpoints;

  /// The unqualified resource name.
  late final Output<String?> nodeId;
  late final Output<String> project;

  /// The qualified name of the QueuedResource that requested this Node.
  late final Output<String> queuedResource;

  /// The runtime version running in the Node.
  late final Output<String> runtimeVersion;

  /// The scheduling options for this node.
  late final Output<SchedulingConfigResponse3> schedulingConfig;

  /// The Google Cloud Platform Service Account to be used by the TPU node VMs. If None is specified, the default compute service account will be used.
  late final Output<ServiceAccountResponse9> serviceAccount;

  /// Shielded Instance options.
  late final Output<ShieldedInstanceConfigResponse10> shieldedInstanceConfig;

  /// The current state for the TPU Node.
  late final Output<String> state;

  /// The Symptoms that have occurred to the TPU Node.
  late final Output<List<SymptomResponse3>> symptoms;

  /// Tags to apply to the TPU Node. Tags are used to identify valid sources or targets for network firewalls.
  late final Output<List<String>> tags;

  Node4(
    String name, {
    NodeArgs3? args,
    CustomResourceOptions? options,
  }) : super(
          'google-native:tpu/v2:Node',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.acceleratorConfig =
        registerOutput<AcceleratorConfigResponse10>('acceleratorConfig');
    this.acceleratorType = registerOutput<String>('acceleratorType');
    this.apiVersion = registerOutput<String>('apiVersion');
    this.cidrBlock = registerOutput<String>('cidrBlock');
    this.createTime = registerOutput<String>('createTime');
    this.dataDisks = registerOutput<List<AttachedDiskResponse5>>('dataDisks');
    this.description = registerOutput<String>('description');
    this.health = registerOutput<String>('health');
    this.healthDescription = registerOutput<String>('healthDescription');
    this.labels = registerOutput<Map<String, String>>('labels');
    this.location = registerOutput<String>('location');
    this.metadata = registerOutput<Map<String, String>>('metadata');
    this.multisliceNode = registerOutput<bool>('multisliceNode');
    this.name = registerOutput<String>('name');
    this.networkConfig =
        registerOutput<NetworkConfigResponse19>('networkConfig');
    this.networkEndpoints =
        registerOutput<List<NetworkEndpointResponse3>>('networkEndpoints');
    this.nodeId = registerOutput<String?>('nodeId');
    this.project = registerOutput<String>('project');
    this.queuedResource = registerOutput<String>('queuedResource');
    this.runtimeVersion = registerOutput<String>('runtimeVersion');
    this.schedulingConfig =
        registerOutput<SchedulingConfigResponse3>('schedulingConfig');
    this.serviceAccount =
        registerOutput<ServiceAccountResponse9>('serviceAccount');
    this.shieldedInstanceConfig =
        registerOutput<ShieldedInstanceConfigResponse10>(
            'shieldedInstanceConfig');
    this.state = registerOutput<String>('state');
    this.symptoms = registerOutput<List<SymptomResponse3>>('symptoms');
    this.tags = registerOutput<List<String>>('tags');
  }
}
