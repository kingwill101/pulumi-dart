import 'package:pulumi/pulumi.dart' as pulumi;
import 'accelerator_config_response_tpu_v2alpha1.dart';
import 'attached_disk_response_tpu_v2alpha1.dart';
import 'boot_disk_config_response.dart';
import 'network_config_response_tpu_v2alpha1.dart';
import 'network_endpoint_response_tpu_v2alpha1.dart';
import 'node_tpu_v2alpha1_args.dart';
import 'scheduling_config_response_tpu_v2alpha1.dart';
import 'service_account_response_tpu_v2alpha1.dart';
import 'shielded_instance_config_response_tpu_v2alpha1.dart';
import 'symptom_response_tpu_v2alpha1.dart';

/// Creates a node.
/// Auto-naming is currently not supported for this resource.
class NodeTpuV2alpha1 extends pulumi.CustomResource {
  /// The AccleratorConfig for the TPU Node.
  late final pulumi.Output<AcceleratorConfigResponseTpuV2alpha1>
  acceleratorConfig;

  /// The type of hardware accelerators associated with this node.
  late final pulumi.Output<String> acceleratorType;

  /// The API version that created this Node.
  late final pulumi.Output<String> apiVersion;

  /// Optional. Whether Autocheckpoint is enabled.
  late final pulumi.Output<bool> autocheckpointEnabled;

  /// Optional. Boot disk configuration.
  late final pulumi.Output<BootDiskConfigResponse> bootDiskConfig;

  /// The CIDR block that the TPU node will use when selecting an IP address. This CIDR block must be a /29 block; the Compute Engine networks API forbids a smaller block, and using a larger block would be wasteful (a node can only consume one IP address). Errors will occur if the CIDR block has already been used for a currently existing TPU node, the CIDR block conflicts with any subnetworks in the user's provided network, or the provided network is peered with another network that is using that CIDR block.
  late final pulumi.Output<String> cidrBlock;

  /// The time when the node was created.
  late final pulumi.Output<String> createTime;

  /// The additional data disks for the Node.
  late final pulumi.Output<List<AttachedDiskResponseTpuV2alpha1>> dataDisks;

  /// The user-supplied description of the TPU. Maximum of 512 characters.
  late final pulumi.Output<String> description;

  /// The health status of the TPU node.
  late final pulumi.Output<String> health;

  /// If this field is populated, it contains a description of why the TPU Node is unhealthy.
  late final pulumi.Output<String> healthDescription;

  /// Resource labels to represent user-provided metadata.
  late final pulumi.Output<Map<String, String>> labels;
  late final pulumi.Output<String> location;

  /// Custom metadata to apply to the TPU Node. Can set startup-script and shutdown-script
  late final pulumi.Output<Map<String, String>> metadata;

  /// Whether the Node belongs to a Multislice group.
  late final pulumi.Output<bool> multisliceNode;

  /// Immutable. The name of the TPU.
  late final pulumi.Output<String> name;

  /// Network configurations for the TPU node.
  late final pulumi.Output<NetworkConfigResponseTpuV2alpha1> networkConfig;

  /// The network endpoints where TPU workers can be accessed and sent work. It is recommended that runtime clients of the node reach out to the 0th entry in this map first.
  late final pulumi.Output<List<NetworkEndpointResponseTpuV2alpha1>>
  networkEndpoints;

  /// The unqualified resource name.
  late final pulumi.Output<String?> nodeId;
  late final pulumi.Output<String> project;

  /// The qualified name of the QueuedResource that requested this Node.
  late final pulumi.Output<String> queuedResource;

  /// Idempotent request UUID.
  late final pulumi.Output<String?> requestId;

  /// The runtime version running in the Node.
  late final pulumi.Output<String> runtimeVersion;

  /// The scheduling options for this node.
  late final pulumi.Output<SchedulingConfigResponseTpuV2alpha1>
  schedulingConfig;

  /// The Google Cloud Platform Service Account to be used by the TPU node VMs. If None is specified, the default compute service account will be used.
  late final pulumi.Output<ServiceAccountResponseTpuV2alpha1> serviceAccount;

  /// Shielded Instance options.
  late final pulumi.Output<ShieldedInstanceConfigResponseTpuV2alpha1>
  shieldedInstanceConfig;

  /// The current state for the TPU Node.
  late final pulumi.Output<String> state;

  /// The Symptoms that have occurred to the TPU Node.
  late final pulumi.Output<List<SymptomResponseTpuV2alpha1>> symptoms;

  /// Tags to apply to the TPU Node. Tags are used to identify valid sources or targets for network firewalls.
  late final pulumi.Output<List<String>> tags;

  /// Creates a new [NodeTpuV2alpha1].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [NodeTpuV2alpha1]. {@macro pulumi_tpu_v2alpha1_node_tpu_v2alpha1_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  NodeTpuV2alpha1(
    String name, {
    NodeTpuV2alpha1Args? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'google-native:tpu/v2alpha1:Node',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    this.acceleratorConfig =
        registerOutput<AcceleratorConfigResponseTpuV2alpha1>(
          'acceleratorConfig',
        );
    this.acceleratorType = registerOutput<String>('acceleratorType');
    this.apiVersion = registerOutput<String>('apiVersion');
    this.autocheckpointEnabled = registerOutput<bool>('autocheckpointEnabled');
    this.bootDiskConfig = registerOutput<BootDiskConfigResponse>(
      'bootDiskConfig',
    );
    this.cidrBlock = registerOutput<String>('cidrBlock');
    this.createTime = registerOutput<String>('createTime');
    this.dataDisks = registerOutput<List<AttachedDiskResponseTpuV2alpha1>>(
      'dataDisks',
    );
    this.description = registerOutput<String>('description');
    this.health = registerOutput<String>('health');
    this.healthDescription = registerOutput<String>('healthDescription');
    this.labels = registerOutput<Map<String, String>>('labels');
    this.location = registerOutput<String>('location');
    this.metadata = registerOutput<Map<String, String>>('metadata');
    this.multisliceNode = registerOutput<bool>('multisliceNode');
    this.name = registerOutput<String>('name');
    this.networkConfig = registerOutput<NetworkConfigResponseTpuV2alpha1>(
      'networkConfig',
    );
    this.networkEndpoints =
        registerOutput<List<NetworkEndpointResponseTpuV2alpha1>>(
          'networkEndpoints',
        );
    this.nodeId = registerOutput<String?>('nodeId');
    this.project = registerOutput<String>('project');
    this.queuedResource = registerOutput<String>('queuedResource');
    this.requestId = registerOutput<String?>('requestId');
    this.runtimeVersion = registerOutput<String>('runtimeVersion');
    this.schedulingConfig = registerOutput<SchedulingConfigResponseTpuV2alpha1>(
      'schedulingConfig',
    );
    this.serviceAccount = registerOutput<ServiceAccountResponseTpuV2alpha1>(
      'serviceAccount',
    );
    this.shieldedInstanceConfig =
        registerOutput<ShieldedInstanceConfigResponseTpuV2alpha1>(
          'shieldedInstanceConfig',
        );
    this.state = registerOutput<String>('state');
    this.symptoms = registerOutput<List<SymptomResponseTpuV2alpha1>>(
      'symptoms',
    );
    this.tags = registerOutput<List<String>>('tags');
  }
}
