import 'package:pulumi/pulumi.dart' hide Config;
import 'accelerator_config_response11.dart';
import 'attached_disk_response6.dart';
import 'boot_disk_config_response.dart';
import 'network_config_response20.dart';
import 'network_endpoint_response4.dart';
import 'node_args4.dart';
import 'scheduling_config_response4.dart';
import 'service_account_response10.dart';
import 'shielded_instance_config_response11.dart';
import 'symptom_response4.dart';

/// Creates a node.
/// Auto-naming is currently not supported for this resource.
class Node5 extends CustomResource {
  /// The AccleratorConfig for the TPU Node.
  late final Output<AcceleratorConfigResponse11> acceleratorConfig;

  /// The type of hardware accelerators associated with this node.
  late final Output<String> acceleratorType;

  /// The API version that created this Node.
  late final Output<String> apiVersion;

  /// Optional. Whether Autocheckpoint is enabled.
  late final Output<bool> autocheckpointEnabled;

  /// Optional. Boot disk configuration.
  late final Output<BootDiskConfigResponse> bootDiskConfig;

  /// The CIDR block that the TPU node will use when selecting an IP address. This CIDR block must be a /29 block; the Compute Engine networks API forbids a smaller block, and using a larger block would be wasteful (a node can only consume one IP address). Errors will occur if the CIDR block has already been used for a currently existing TPU node, the CIDR block conflicts with any subnetworks in the user's provided network, or the provided network is peered with another network that is using that CIDR block.
  late final Output<String> cidrBlock;

  /// The time when the node was created.
  late final Output<String> createTime;

  /// The additional data disks for the Node.
  late final Output<List<AttachedDiskResponse6>> dataDisks;

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
  late final Output<NetworkConfigResponse20> networkConfig;

  /// The network endpoints where TPU workers can be accessed and sent work. It is recommended that runtime clients of the node reach out to the 0th entry in this map first.
  late final Output<List<NetworkEndpointResponse4>> networkEndpoints;

  /// The unqualified resource name.
  late final Output<String?> nodeId;
  late final Output<String> project;

  /// The qualified name of the QueuedResource that requested this Node.
  late final Output<String> queuedResource;

  /// Idempotent request UUID.
  late final Output<String?> requestId;

  /// The runtime version running in the Node.
  late final Output<String> runtimeVersion;

  /// The scheduling options for this node.
  late final Output<SchedulingConfigResponse4> schedulingConfig;

  /// The Google Cloud Platform Service Account to be used by the TPU node VMs. If None is specified, the default compute service account will be used.
  late final Output<ServiceAccountResponse10> serviceAccount;

  /// Shielded Instance options.
  late final Output<ShieldedInstanceConfigResponse11> shieldedInstanceConfig;

  /// The current state for the TPU Node.
  late final Output<String> state;

  /// The Symptoms that have occurred to the TPU Node.
  late final Output<List<SymptomResponse4>> symptoms;

  /// Tags to apply to the TPU Node. Tags are used to identify valid sources or targets for network firewalls.
  late final Output<List<String>> tags;

  Node5(
    String name, {
    NodeArgs4? args,
    CustomResourceOptions? options,
  }) : super(
          'google-native:tpu/v2alpha1:Node',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.acceleratorConfig =
        registerOutput<AcceleratorConfigResponse11>('acceleratorConfig');
    this.acceleratorType = registerOutput<String>('acceleratorType');
    this.apiVersion = registerOutput<String>('apiVersion');
    this.autocheckpointEnabled = registerOutput<bool>('autocheckpointEnabled');
    this.bootDiskConfig =
        registerOutput<BootDiskConfigResponse>('bootDiskConfig');
    this.cidrBlock = registerOutput<String>('cidrBlock');
    this.createTime = registerOutput<String>('createTime');
    this.dataDisks = registerOutput<List<AttachedDiskResponse6>>('dataDisks');
    this.description = registerOutput<String>('description');
    this.health = registerOutput<String>('health');
    this.healthDescription = registerOutput<String>('healthDescription');
    this.labels = registerOutput<Map<String, String>>('labels');
    this.location = registerOutput<String>('location');
    this.metadata = registerOutput<Map<String, String>>('metadata');
    this.multisliceNode = registerOutput<bool>('multisliceNode');
    this.name = registerOutput<String>('name');
    this.networkConfig =
        registerOutput<NetworkConfigResponse20>('networkConfig');
    this.networkEndpoints =
        registerOutput<List<NetworkEndpointResponse4>>('networkEndpoints');
    this.nodeId = registerOutput<String?>('nodeId');
    this.project = registerOutput<String>('project');
    this.queuedResource = registerOutput<String>('queuedResource');
    this.requestId = registerOutput<String?>('requestId');
    this.runtimeVersion = registerOutput<String>('runtimeVersion');
    this.schedulingConfig =
        registerOutput<SchedulingConfigResponse4>('schedulingConfig');
    this.serviceAccount =
        registerOutput<ServiceAccountResponse10>('serviceAccount');
    this.shieldedInstanceConfig =
        registerOutput<ShieldedInstanceConfigResponse11>(
            'shieldedInstanceConfig');
    this.state = registerOutput<String>('state');
    this.symptoms = registerOutput<List<SymptomResponse4>>('symptoms');
    this.tags = registerOutput<List<String>>('tags');
  }
}
