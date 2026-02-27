import 'package:pulumi/pulumi.dart' as pulumi;
import '../v2_vm_accelerator_config/v2_vm_accelerator_config.dart';
import '../v2_vm_data_disk/v2_vm_data_disk.dart';
import '../v2_vm_network_config/v2_vm_network_config.dart';
import '../v2_vm_network_endpoint/v2_vm_network_endpoint.dart';
import '../v2_vm_scheduling_config/v2_vm_scheduling_config.dart';
import '../v2_vm_service_account/v2_vm_service_account.dart';
import '../v2_vm_shielded_instance_config/v2_vm_shielded_instance_config.dart';
import '../v2_vm_symptom/v2_vm_symptom.dart';
import 'v2_vm_args.dart';

/// A Cloud TPU VM instance.
///
/// To get more information about Vm, see:
///
/// * [API documentation](https://cloud.google.com/tpu/docs/reference/rest/v2/projects.locations.nodes)
/// * How-to Guides
/// * [Official Documentation](https://cloud.google.com/tpu/docs/)
///
/// ## Example Usage
///
/// ### Tpu V2 Vm Basic
///
///
///
/// ### Tpu V2 Vm Full
///
///
///
///
/// ## Import
///
/// Vm can be imported using any of these accepted formats:
///
/// * `projects/{{project}}/locations/{{zone}}/nodes/{{name}}`
///
/// * `{{project}}/{{zone}}/{{name}}`
///
/// * `{{zone}}/{{name}}`
///
/// * `{{name}}`
///
/// When using the `pulumi import` command, Vm can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:tpu/v2Vm:V2Vm default projects/{{project}}/locations/{{zone}}/nodes/{{name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:tpu/v2Vm:V2Vm default {{project}}/{{zone}}/{{name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:tpu/v2Vm:V2Vm default {{zone}}/{{name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:tpu/v2Vm:V2Vm default {{name}}
/// ```
class V2Vm extends pulumi.CustomResource {
  /// The AccleratorConfig for the TPU Node. `accelerator_config` cannot be used at the same time
  /// as `accelerator_type`. If neither is specified, `accelerator_type` defaults to 'v2-8'.
  /// Structure is documented below.
  late final pulumi.Output<V2VmAcceleratorConfig> acceleratorConfig;

  /// TPU accelerator type for the TPU. `accelerator_type` cannot be used at the same time as
  /// `accelerator_config`. If neither is specified, `accelerator_type` defaults to 'v2-8'.
  late final pulumi.Output<String> acceleratorType;

  /// The API version that created this Node.
  late final pulumi.Output<String> apiVersion;

  /// The CIDR block that the TPU node will use when selecting an IP address. This CIDR block must
  /// be a /29 block; the Compute Engine networks API forbids a smaller block, and using a larger
  /// block would be wasteful (a node can only consume one IP address). Errors will occur if the
  /// CIDR block has already been used for a currently existing TPU node, the CIDR block conflicts
  /// with any subnetworks in the user's provided network, or the provided network is peered with
  /// another network that is using that CIDR block.
  late final pulumi.Output<String> cidrBlock;

  /// The additional data disks for the Node.
  /// Structure is documented below.
  late final pulumi.Output<List<V2VmDataDisk>?> dataDisks;

  /// Text description of the TPU.
  late final pulumi.Output<String?> description;

  /// All of labels (key/value pairs) present on the resource in GCP, including the labels configured through Pulumi, other clients and services.
  late final pulumi.Output<Map<String, String>> effectiveLabels;

  /// The health status of the TPU node.
  late final pulumi.Output<String> health;

  /// If this field is populated, it contains a description of why the TPU Node is unhealthy.
  late final pulumi.Output<String> healthDescription;

  /// Resource labels to represent user-provided metadata.
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effective_labels` for all of the labels present on the resource.
  late final pulumi.Output<Map<String, String>?> labels;

  /// Custom metadata to apply to the TPU Node. Can set startup-script and shutdown-script.
  late final pulumi.Output<Map<String, String>?> metadata;

  /// Whether the Node belongs to a Multislice group.
  late final pulumi.Output<bool> multisliceNode;

  /// The immutable name of the TPU.
  late final pulumi.Output<String> name;

  /// Network configurations for the TPU node.
  /// Structure is documented below.
  late final pulumi.Output<V2VmNetworkConfig> networkConfig;

  /// Repeated network configurations for the TPU node. This field is used to specify multiple
  /// network configs for the TPU node.
  /// Structure is documented below.
  late final pulumi.Output<List<V2VmNetworkConfig>?> networkConfigs;

  /// The network endpoints where TPU workers can be accessed and sent work. It is recommended that
  /// runtime clients of the node reach out to the 0th entry in this map first.
  /// Structure is documented below.
  late final pulumi.Output<List<V2VmNetworkEndpoint>> networkEndpoints;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final pulumi.Output<String> project;

  /// The combination of labels configured directly on the resource
  /// and default labels configured on the provider.
  late final pulumi.Output<Map<String, String>> pulumiLabels;

  /// The qualified name of the QueuedResource that requested this Node.
  late final pulumi.Output<String> queuedResource;

  /// Runtime version for the TPU.
  late final pulumi.Output<String> runtimeVersion;

  /// The scheduling options for this node.
  /// Structure is documented below.
  late final pulumi.Output<V2VmSchedulingConfig?> schedulingConfig;

  /// The Google Cloud Platform Service Account to be used by the TPU node VMs. If None is
  /// specified, the default compute service account will be used.
  /// Structure is documented below.
  late final pulumi.Output<V2VmServiceAccount> serviceAccount;

  /// Shielded Instance options.
  /// Structure is documented below.
  late final pulumi.Output<V2VmShieldedInstanceConfig?> shieldedInstanceConfig;

  /// The current state for the TPU Node.
  late final pulumi.Output<String> state;

  /// The Symptoms that have occurred to the TPU Node.
  /// Structure is documented below.
  late final pulumi.Output<List<V2VmSymptom>> symptoms;

  /// Tags to apply to the TPU Node. Tags are used to identify valid sources or targets for network firewalls.
  late final pulumi.Output<List<String>?> tags;

  /// The GCP location for the TPU. If it is not provided, the provider zone is used.
  late final pulumi.Output<String> zone;

  V2Vm(
    String name, {
    V2VmArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:tpu/v2Vm:V2Vm',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.acceleratorConfig =
        registerOutput<V2VmAcceleratorConfig>('acceleratorConfig');
    this.acceleratorType = registerOutput<String>('acceleratorType');
    this.apiVersion = registerOutput<String>('apiVersion');
    this.cidrBlock = registerOutput<String>('cidrBlock');
    this.dataDisks = registerOutput<List<V2VmDataDisk>?>('dataDisks');
    this.description = registerOutput<String?>('description');
    this.effectiveLabels =
        registerOutput<Map<String, String>>('effectiveLabels');
    this.health = registerOutput<String>('health');
    this.healthDescription = registerOutput<String>('healthDescription');
    this.labels = registerOutput<Map<String, String>?>('labels');
    this.metadata = registerOutput<Map<String, String>?>('metadata');
    this.multisliceNode = registerOutput<bool>('multisliceNode');
    this.name = registerOutput<String>('name');
    this.networkConfig = registerOutput<V2VmNetworkConfig>('networkConfig');
    this.networkConfigs =
        registerOutput<List<V2VmNetworkConfig>?>('networkConfigs');
    this.networkEndpoints =
        registerOutput<List<V2VmNetworkEndpoint>>('networkEndpoints');
    this.project = registerOutput<String>('project');
    this.pulumiLabels = registerOutput<Map<String, String>>('pulumiLabels');
    this.queuedResource = registerOutput<String>('queuedResource');
    this.runtimeVersion = registerOutput<String>('runtimeVersion');
    this.schedulingConfig =
        registerOutput<V2VmSchedulingConfig?>('schedulingConfig');
    this.serviceAccount = registerOutput<V2VmServiceAccount>('serviceAccount');
    this.shieldedInstanceConfig =
        registerOutput<V2VmShieldedInstanceConfig?>('shieldedInstanceConfig');
    this.state = registerOutput<String>('state');
    this.symptoms = registerOutput<List<V2VmSymptom>>('symptoms');
    this.tags = registerOutput<List<String>?>('tags');
    this.zone = registerOutput<String>('zone');
  }
}
