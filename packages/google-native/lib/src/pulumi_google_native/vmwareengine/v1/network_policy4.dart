import 'package:pulumi/pulumi.dart';
import 'network_policy_args.dart';
import 'network_service_response.dart';

/// Creates a new network policy in a given VMware Engine network of a project and location (region). A new network policy cannot be created if another network policy already exists in the same scope.
/// Auto-naming is currently not supported for this resource.
class NetworkPolicy4 extends CustomResource {
  /// Creation time of this resource.
  late final Output<String> createTime;

  /// Optional. User-provided description for this network policy.
  late final Output<String> description;

  /// IP address range in CIDR notation used to create internet access and external IP access. An RFC 1918 CIDR block, with a "/26" prefix, is required. The range cannot overlap with any prefixes either in the consumer VPC network or in use by the private clouds attached to that VPC network.
  late final Output<String> edgeServicesCidr;

  /// Network service that allows External IP addresses to be assigned to VMware workloads. This service can only be enabled when `internet_access` is also enabled.
  late final Output<NetworkServiceResponse> externalIp;

  /// Network service that allows VMware workloads to access the internet.
  late final Output<NetworkServiceResponse> internetAccess;
  late final Output<String> location;

  /// The resource name of this network policy. Resource names are schemeless URIs that follow the conventions in https://cloud.google.com/apis/design/resource_names. For example: `projects/my-project/locations/us-central1/networkPolicies/my-network-policy`
  late final Output<String> name;

  /// Required. The user-provided identifier of the network policy to be created. This identifier must be unique within parent `projects/{my-project}/locations/{us-central1}/networkPolicies` and becomes the final token in the name URI. The identifier must meet the following requirements: * Only contains 1-63 alphanumeric characters and hyphens * Begins with an alphabetical character * Ends with a non-hyphen character * Not formatted as a UUID * Complies with [RFC 1034](https://datatracker.ietf.org/doc/html/rfc1034) (section 3.5)
  late final Output<String> networkPolicyId;
  late final Output<String> project;

  /// Optional. A request ID to identify requests. Specify a unique request ID so that if you must retry your request, the server will know to ignore the request if it has already been completed. The server guarantees that a request doesn't result in creation of duplicate commitments for at least 60 minutes. For example, consider a situation where you make an initial request and the request times out. If you make the request again with the same request ID, the server can check if original operation with the same request ID was received, and if so, will ignore the second request. This prevents clients from accidentally creating duplicate commitments. The request ID must be a valid UUID with the exception that zero UUID is not supported (00000000-0000-0000-0000-000000000000).
  late final Output<String?> requestId;

  /// System-generated unique identifier for the resource.
  late final Output<String> uid;

  /// Last update time of this resource.
  late final Output<String> updateTime;

  /// Optional. The relative resource name of the VMware Engine network. Specify the name in the following form: `projects/{project}/locations/{location}/vmwareEngineNetworks/{vmware_engine_network_id}` where `{project}` can either be a project number or a project ID.
  late final Output<String> vmwareEngineNetwork;

  /// The canonical name of the VMware Engine network in the form: `projects/{project_number}/locations/{location}/vmwareEngineNetworks/{vmware_engine_network_id}`
  late final Output<String> vmwareEngineNetworkCanonical;

  NetworkPolicy4(
    String name, {
    NetworkPolicyArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'google-native:vmwareengine/v1:NetworkPolicy',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.createTime = Output.createUnknown<String>();
    this.description = Output.createUnknown<String>();
    this.edgeServicesCidr = Output.createUnknown<String>();
    this.externalIp = Output.createUnknown<NetworkServiceResponse>();
    this.internetAccess = Output.createUnknown<NetworkServiceResponse>();
    this.location = Output.createUnknown<String>();
    this.name = Output.createUnknown<String>();
    this.networkPolicyId = Output.createUnknown<String>();
    this.project = Output.createUnknown<String>();
    this.requestId = Output.createUnknown<String?>();
    this.uid = Output.createUnknown<String>();
    this.updateTime = Output.createUnknown<String>();
    this.vmwareEngineNetwork = Output.createUnknown<String>();
    this.vmwareEngineNetworkCanonical = Output.createUnknown<String>();
  }
}
