// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' hide Config;
import 'network_service.dart';

/// The set of arguments for NetworkPolicy.
class NetworkPolicyArgs {
  /// Optional. User-provided description for this network policy.
  final Input<String>? description;

  /// IP address range in CIDR notation used to create internet access and external IP access. An RFC 1918 CIDR block, with a "/26" prefix, is required. The range cannot overlap with any prefixes either in the consumer VPC network or in use by the private clouds attached to that VPC network.
  final Input<String> edgeServicesCidr;

  /// Network service that allows External IP addresses to be assigned to VMware workloads. This service can only be enabled when `internet_access` is also enabled.
  final Input<NetworkService>? externalIp;

  /// Network service that allows VMware workloads to access the internet.
  final Input<NetworkService>? internetAccess;
  final Input<String>? location;

  /// Required. The user-provided identifier of the network policy to be created. This identifier must be unique within parent `projects/{my-project}/locations/{us-central1}/networkPolicies` and becomes the final token in the name URI. The identifier must meet the following requirements: * Only contains 1-63 alphanumeric characters and hyphens * Begins with an alphabetical character * Ends with a non-hyphen character * Not formatted as a UUID * Complies with [RFC 1034](https://datatracker.ietf.org/doc/html/rfc1034) (section 3.5)
  final Input<String> networkPolicyId;
  final Input<String>? project;

  /// Optional. A request ID to identify requests. Specify a unique request ID so that if you must retry your request, the server will know to ignore the request if it has already been completed. The server guarantees that a request doesn't result in creation of duplicate commitments for at least 60 minutes. For example, consider a situation where you make an initial request and the request times out. If you make the request again with the same request ID, the server can check if original operation with the same request ID was received, and if so, will ignore the second request. This prevents clients from accidentally creating duplicate commitments. The request ID must be a valid UUID with the exception that zero UUID is not supported (00000000-0000-0000-0000-000000000000).
  final Input<String>? requestId;

  /// Optional. The relative resource name of the VMware Engine network. Specify the name in the following form: `projects/{project}/locations/{location}/vmwareEngineNetworks/{vmware_engine_network_id}` where `{project}` can either be a project number or a project ID.
  final Input<String>? vmwareEngineNetwork;

  NetworkPolicyArgs({
    this.description,
    required this.edgeServicesCidr,
    this.externalIp,
    this.internetAccess,
    this.location,
    required this.networkPolicyId,
    this.project,
    this.requestId,
    this.vmwareEngineNetwork,
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
      map['externalIp'] =
          Input.mapOptionalInputValue<NetworkService, Map<String, dynamic>>(
              externalIpValue, (value) => value.toMap());
    }
    final internetAccessValue = internetAccess;
    if (internetAccessValue != null) {
      map['internetAccess'] =
          Input.mapOptionalInputValue<NetworkService, Map<String, dynamic>>(
              internetAccessValue, (value) => value.toMap());
    }
    final locationValue = location;
    if (locationValue != null) {
      map['location'] = locationValue;
    }
    map['networkPolicyId'] = networkPolicyId;
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    final requestIdValue = requestId;
    if (requestIdValue != null) {
      map['requestId'] = requestIdValue;
    }
    final vmwareEngineNetworkValue = vmwareEngineNetwork;
    if (vmwareEngineNetworkValue != null) {
      map['vmwareEngineNetwork'] = vmwareEngineNetworkValue;
    }
    return map;
  }

  factory NetworkPolicyArgs.fromMap(Map<String, dynamic> map) {
    return NetworkPolicyArgs(
      description: Input.asOptionalInput<String>(map['description']),
      edgeServicesCidr: Input.asInput<String>(map['edgeServicesCidr']),
      externalIp: Input.asOptionalInput<NetworkService>(map['externalIp']),
      internetAccess:
          Input.asOptionalInput<NetworkService>(map['internetAccess']),
      location: Input.asOptionalInput<String>(map['location']),
      networkPolicyId: Input.asInput<String>(map['networkPolicyId']),
      project: Input.asOptionalInput<String>(map['project']),
      requestId: Input.asOptionalInput<String>(map['requestId']),
      vmwareEngineNetwork:
          Input.asOptionalInput<String>(map['vmwareEngineNetwork']),
    );
  }
}
