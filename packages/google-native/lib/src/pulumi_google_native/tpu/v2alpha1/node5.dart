import 'package:pulumi/pulumi.dart';
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
        Output.createUnknown<AcceleratorConfigResponse11>();
    this.acceleratorType = Output.createUnknown<String>();
    this.apiVersion = Output.createUnknown<String>();
    this.autocheckpointEnabled = Output.createUnknown<bool>();
    this.bootDiskConfig = Output.createUnknown<BootDiskConfigResponse>();
    this.cidrBlock = Output.createUnknown<String>();
    this.createTime = Output.createUnknown<String>();
    this.dataDisks = Output.createUnknown<List<AttachedDiskResponse6>>();
    this.description = Output.createUnknown<String>();
    this.health = Output.createUnknown<String>();
    this.healthDescription = Output.createUnknown<String>();
    this.labels = Output.createUnknown<Map<String, String>>();
    this.location = Output.createUnknown<String>();
    this.metadata = Output.createUnknown<Map<String, String>>();
    this.multisliceNode = Output.createUnknown<bool>();
    this.name = Output.createUnknown<String>();
    this.networkConfig = Output.createUnknown<NetworkConfigResponse20>();
    this.networkEndpoints =
        Output.createUnknown<List<NetworkEndpointResponse4>>();
    this.nodeId = Output.createUnknown<String?>();
    this.project = Output.createUnknown<String>();
    this.queuedResource = Output.createUnknown<String>();
    this.requestId = Output.createUnknown<String?>();
    this.runtimeVersion = Output.createUnknown<String>();
    this.schedulingConfig = Output.createUnknown<SchedulingConfigResponse4>();
    this.serviceAccount = Output.createUnknown<ServiceAccountResponse10>();
    this.shieldedInstanceConfig =
        Output.createUnknown<ShieldedInstanceConfigResponse11>();
    this.state = Output.createUnknown<String>();
    this.symptoms = Output.createUnknown<List<SymptomResponse4>>();
    this.tags = Output.createUnknown<List<String>>();
  }
}
