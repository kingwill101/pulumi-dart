// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'network_endpoint_response.dart';
import 'scheduling_config_response.dart';
import 'symptom_response.dart';

/// Result data returned by getNode.
class GetNodeResult {
  /// The type of hardware accelerators associated with this node.
  final String acceleratorType;

  /// The API version that created this Node.
  final String apiVersion;

  /// The CIDR block that the TPU node will use when selecting an IP address. This CIDR block must be a /29 block; the Compute Engine networks API forbids a smaller block, and using a larger block would be wasteful (a node can only consume one IP address). Errors will occur if the CIDR block has already been used for a currently existing TPU node, the CIDR block conflicts with any subnetworks in the user's provided network, or the provided network is peered with another network that is using that CIDR block.
  final String cidrBlock;

  /// The time when the node was created.
  final String createTime;

  /// The user-supplied description of the TPU. Maximum of 512 characters.
  final String description;

  /// The health status of the TPU node.
  final String health;

  /// If this field is populated, it contains a description of why the TPU Node is unhealthy.
  final String healthDescription;

  /// DEPRECATED! Use network_endpoints instead. The network address for the TPU Node as visible to Compute Engine instances.
  final String ipAddress;

  /// Resource labels to represent user-provided metadata.
  final Map<String, String> labels;

  /// Immutable. The name of the TPU
  final String name;

  /// The name of a network they wish to peer the TPU node to. It must be a preexisting Compute Engine network inside of the project on which this API has been activated. If none is provided, "default" will be used.
  final String network;

  /// The network endpoints where TPU workers can be accessed and sent work. It is recommended that Tensorflow clients of the node reach out to the 0th entry in this map first.
  final List<NetworkEndpointResponse> networkEndpoints;

  /// DEPRECATED! Use network_endpoints instead. The network port for the TPU Node as visible to Compute Engine instances.
  final String port;

  /// The scheduling options for this node.
  final SchedulingConfigResponse schedulingConfig;

  /// The service account used to run the tensor flow services within the node. To share resources, including Google Cloud Storage data, with the Tensorflow job running in the Node, this account must have permissions to that data.
  final String serviceAccount;

  /// The current state for the TPU Node.
  final String state;

  /// The Symptoms that have occurred to the TPU Node.
  final List<SymptomResponse> symptoms;

  /// The version of Tensorflow running in the Node.
  final String tensorflowVersion;

  /// Whether the VPC peering for the node is set up through Service Networking API. The VPC Peering should be set up before provisioning the node. If this field is set, cidr_block field should not be specified. If the network, that you want to peer the TPU Node to, is Shared VPC networks, the node must be created with this this field enabled.
  final bool useServiceNetworking;

  /// Creates a new [GetNodeResult].
  /// [acceleratorType] The type of hardware accelerators associated with this node.
  /// [apiVersion] The API version that created this Node.
  /// [cidrBlock] The CIDR block that the TPU node will use when selecting an IP address. This CIDR block must be a /29 block; the Compute Engine networks API forbids a smaller block, and using a larger block would be wasteful (a node can only consume one IP address). Errors will occur if the CIDR block has already been used for a currently existing TPU node, the CIDR block conflicts with any subnetworks in the user's provided network, or the provided network is peered with another network that is using that CIDR block.
  /// [createTime] The time when the node was created.
  /// [description] The user-supplied description of the TPU. Maximum of 512 characters.
  /// [health] The health status of the TPU node.
  /// [healthDescription] If this field is populated, it contains a description of why the TPU Node is unhealthy.
  /// [ipAddress] DEPRECATED! Use network_endpoints instead. The network address for the TPU Node as visible to Compute Engine instances.
  /// [labels] Resource labels to represent user-provided metadata.
  /// [name] Immutable. The name of the TPU
  /// [network] The name of a network they wish to peer the TPU node to. It must be a preexisting Compute Engine network inside of the project on which this API has been activated. If none is provided, "default" will be used.
  /// [networkEndpoints] The network endpoints where TPU workers can be accessed and sent work. It is recommended that Tensorflow clients of the node reach out to the 0th entry in this map first.
  /// [port] DEPRECATED! Use network_endpoints instead. The network port for the TPU Node as visible to Compute Engine instances.
  /// [schedulingConfig] The scheduling options for this node.
  /// [serviceAccount] The service account used to run the tensor flow services within the node. To share resources, including Google Cloud Storage data, with the Tensorflow job running in the Node, this account must have permissions to that data.
  /// [state] The current state for the TPU Node.
  /// [symptoms] The Symptoms that have occurred to the TPU Node.
  /// [tensorflowVersion] The version of Tensorflow running in the Node.
  /// [useServiceNetworking] Whether the VPC peering for the node is set up through Service Networking API. The VPC Peering should be set up before provisioning the node. If this field is set, cidr_block field should not be specified. If the network, that you want to peer the TPU Node to, is Shared VPC networks, the node must be created with this this field enabled.
  GetNodeResult({
    required this.acceleratorType,
    required this.apiVersion,
    required this.cidrBlock,
    required this.createTime,
    required this.description,
    required this.health,
    required this.healthDescription,
    required this.ipAddress,
    required this.labels,
    required this.name,
    required this.network,
    required this.networkEndpoints,
    required this.port,
    required this.schedulingConfig,
    required this.serviceAccount,
    required this.state,
    required this.symptoms,
    required this.tensorflowVersion,
    required this.useServiceNetworking,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['acceleratorType'] = acceleratorType;
    map['apiVersion'] = apiVersion;
    map['cidrBlock'] = cidrBlock;
    map['createTime'] = createTime;
    map['description'] = description;
    map['health'] = health;
    map['healthDescription'] = healthDescription;
    map['ipAddress'] = ipAddress;
    map['labels'] = labels;
    map['name'] = name;
    map['network'] = network;
    map['networkEndpoints'] =
        pulumi.Input.encodeList<NetworkEndpointResponse, Map<String, dynamic>>(
            networkEndpoints, (value) => value.toMap());
    map['port'] = port;
    map['schedulingConfig'] = schedulingConfig.toMap();
    map['serviceAccount'] = serviceAccount;
    map['state'] = state;
    map['symptoms'] =
        pulumi.Input.encodeList<SymptomResponse, Map<String, dynamic>>(
            symptoms, (value) => value.toMap());
    map['tensorflowVersion'] = tensorflowVersion;
    map['useServiceNetworking'] = useServiceNetworking;
    return map;
  }

  factory GetNodeResult.fromMap(Map<String, dynamic> map) {
    return GetNodeResult(
      acceleratorType: map['acceleratorType'] as String,
      apiVersion: map['apiVersion'] as String,
      cidrBlock: map['cidrBlock'] as String,
      createTime: map['createTime'] as String,
      description: map['description'] as String,
      health: map['health'] as String,
      healthDescription: map['healthDescription'] as String,
      ipAddress: map['ipAddress'] as String,
      labels: (map['labels'] as Map).cast<String, String>(),
      name: map['name'] as String,
      network: map['network'] as String,
      networkEndpoints: pulumi.Input.decodeList<NetworkEndpointResponse>(
          map['networkEndpoints'],
          (value) => NetworkEndpointResponse.fromMap(
              (value as Map).cast<String, dynamic>())),
      port: map['port'] as String,
      schedulingConfig: SchedulingConfigResponse.fromMap(
          (map['schedulingConfig'] as Map).cast<String, dynamic>()),
      serviceAccount: map['serviceAccount'] as String,
      state: map['state'] as String,
      symptoms: pulumi.Input.decodeList<SymptomResponse>(
          map['symptoms'],
          (value) =>
              SymptomResponse.fromMap((value as Map).cast<String, dynamic>())),
      tensorflowVersion: map['tensorflowVersion'] as String,
      useServiceNetworking: map['useServiceNetworking'] as bool,
    );
  }
}
