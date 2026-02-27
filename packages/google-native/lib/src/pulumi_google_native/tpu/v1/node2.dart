import 'package:pulumi/pulumi.dart' hide Config;
import 'network_endpoint_response.dart';
import 'node_args.dart';
import 'scheduling_config_response.dart';
import 'symptom_response.dart';

/// Creates a node.
/// Auto-naming is currently not supported for this resource.
class Node2 extends CustomResource {
  /// The type of hardware accelerators associated with this node.
  late final Output<String> acceleratorType;

  /// The API version that created this Node.
  late final Output<String> apiVersion;

  /// The CIDR block that the TPU node will use when selecting an IP address. This CIDR block must be a /29 block; the Compute Engine networks API forbids a smaller block, and using a larger block would be wasteful (a node can only consume one IP address). Errors will occur if the CIDR block has already been used for a currently existing TPU node, the CIDR block conflicts with any subnetworks in the user's provided network, or the provided network is peered with another network that is using that CIDR block.
  late final Output<String> cidrBlock;

  /// The time when the node was created.
  late final Output<String> createTime;

  /// The user-supplied description of the TPU. Maximum of 512 characters.
  late final Output<String> description;

  /// The health status of the TPU node.
  late final Output<String> health;

  /// If this field is populated, it contains a description of why the TPU Node is unhealthy.
  late final Output<String> healthDescription;

  /// DEPRECATED! Use network_endpoints instead. The network address for the TPU Node as visible to Compute Engine instances.
  late final Output<String> ipAddress;

  /// Resource labels to represent user-provided metadata.
  late final Output<Map<String, String>> labels;
  late final Output<String> location;

  /// Immutable. The name of the TPU
  late final Output<String> name;

  /// The name of a network they wish to peer the TPU node to. It must be a preexisting Compute Engine network inside of the project on which this API has been activated. If none is provided, "default" will be used.
  late final Output<String> network;

  /// The network endpoints where TPU workers can be accessed and sent work. It is recommended that Tensorflow clients of the node reach out to the 0th entry in this map first.
  late final Output<List<NetworkEndpointResponse>> networkEndpoints;

  /// The unqualified resource name.
  late final Output<String?> nodeId;

  /// DEPRECATED! Use network_endpoints instead. The network port for the TPU Node as visible to Compute Engine instances.
  late final Output<String> port;
  late final Output<String> project;

  /// The scheduling options for this node.
  late final Output<SchedulingConfigResponse> schedulingConfig;

  /// The service account used to run the tensor flow services within the node. To share resources, including Google Cloud Storage data, with the Tensorflow job running in the Node, this account must have permissions to that data.
  late final Output<String> serviceAccount;

  /// The current state for the TPU Node.
  late final Output<String> state;

  /// The Symptoms that have occurred to the TPU Node.
  late final Output<List<SymptomResponse>> symptoms;

  /// The version of Tensorflow running in the Node.
  late final Output<String> tensorflowVersion;

  /// Whether the VPC peering for the node is set up through Service Networking API. The VPC Peering should be set up before provisioning the node. If this field is set, cidr_block field should not be specified. If the network, that you want to peer the TPU Node to, is Shared VPC networks, the node must be created with this this field enabled.
  late final Output<bool> useServiceNetworking;

  Node2(
    String name, {
    NodeArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'google-native:tpu/v1:Node',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.acceleratorType = registerOutput<String>('acceleratorType');
    this.apiVersion = registerOutput<String>('apiVersion');
    this.cidrBlock = registerOutput<String>('cidrBlock');
    this.createTime = registerOutput<String>('createTime');
    this.description = registerOutput<String>('description');
    this.health = registerOutput<String>('health');
    this.healthDescription = registerOutput<String>('healthDescription');
    this.ipAddress = registerOutput<String>('ipAddress');
    this.labels = registerOutput<Map<String, String>>('labels');
    this.location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    this.network = registerOutput<String>('network');
    this.networkEndpoints =
        registerOutput<List<NetworkEndpointResponse>>('networkEndpoints');
    this.nodeId = registerOutput<String?>('nodeId');
    this.port = registerOutput<String>('port');
    this.project = registerOutput<String>('project');
    this.schedulingConfig =
        registerOutput<SchedulingConfigResponse>('schedulingConfig');
    this.serviceAccount = registerOutput<String>('serviceAccount');
    this.state = registerOutput<String>('state');
    this.symptoms = registerOutput<List<SymptomResponse>>('symptoms');
    this.tensorflowVersion = registerOutput<String>('tensorflowVersion');
    this.useServiceNetworking = registerOutput<bool>('useServiceNetworking');
  }
}
