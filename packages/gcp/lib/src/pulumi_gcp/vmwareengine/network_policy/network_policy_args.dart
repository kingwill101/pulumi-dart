// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../network_policy_external_ip/network_policy_external_ip.dart';
import '../network_policy_internet_access/network_policy_internet_access.dart';

/// The set of arguments for NetworkPolicy.
class NetworkPolicyArgs {
  /// User-provided description for this network policy.
  final Input<String>? description;

  /// IP address range in CIDR notation used to create internet access and external IP access.
  /// An RFC 1918 CIDR block, with a "/26" prefix, is required. The range cannot overlap with any
  /// prefixes either in the consumer VPC network or in use by the private clouds attached to that VPC network.
  final Input<String> edgeServicesCidr;

  /// Network service that allows External IP addresses to be assigned to VMware workloads.
  /// This service can only be enabled when internetAccess is also enabled.
  /// Structure is documented below.
  final Input<NetworkPolicyExternalIp>? externalIp;

  /// Network service that allows VMware workloads to access the internet.
  /// Structure is documented below.
  final Input<NetworkPolicyInternetAccess>? internetAccess;

  /// The resource name of the location (region) to create the new network policy in.
  /// Resource names are schemeless URIs that follow the conventions in https://cloud.google.com/apis/design/resource_names.
  /// For example: projects/my-project/locations/us-central1
  final Input<String> location;

  /// The ID of the Network Policy.
  final Input<String>? name;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final Input<String>? project;

  /// The relative resource name of the VMware Engine network. Specify the name in the following form:
  /// projects/{project}/locations/{location}/vmwareEngineNetworks/{vmwareEngineNetworkId} where {project}
  /// can either be a project number or a project ID.
  final Input<String> vmwareEngineNetwork;

  NetworkPolicyArgs({
    this.description,
    required this.edgeServicesCidr,
    this.externalIp,
    this.internetAccess,
    required this.location,
    this.name,
    this.project,
    required this.vmwareEngineNetwork,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final descriptionValue = description;
    if (descriptionValue != null) {
      map['description'] = descriptionValue;
    }
    map['edgeServicesCidr'] = edgeServicesCidr;
    final externalIpValue = externalIp;
    if (externalIpValue != null) {
      map['externalIp'] = Input.mapOptionalInputValue<NetworkPolicyExternalIp,
          Map<String, dynamic>>(externalIpValue, (value) => value.toMap());
    }
    final internetAccessValue = internetAccess;
    if (internetAccessValue != null) {
      map['internetAccess'] = Input.mapOptionalInputValue<
          NetworkPolicyInternetAccess,
          Map<String, dynamic>>(internetAccessValue, (value) => value.toMap());
    }
    map['location'] = location;
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    map['vmwareEngineNetwork'] = vmwareEngineNetwork;
    return map;
  }

  factory NetworkPolicyArgs.fromMap(Map<String, dynamic> map) {
    return NetworkPolicyArgs(
      description: Input.asOptionalInput<String>(map['description']),
      edgeServicesCidr: Input.asInput<String>(map['edgeServicesCidr']),
      externalIp:
          Input.asOptionalInput<NetworkPolicyExternalIp>(map['externalIp']),
      internetAccess: Input.asOptionalInput<NetworkPolicyInternetAccess>(
          map['internetAccess']),
      location: Input.asInput<String>(map['location']),
      name: Input.asOptionalInput<String>(map['name']),
      project: Input.asOptionalInput<String>(map['project']),
      vmwareEngineNetwork: Input.asInput<String>(map['vmwareEngineNetwork']),
    );
  }
}
