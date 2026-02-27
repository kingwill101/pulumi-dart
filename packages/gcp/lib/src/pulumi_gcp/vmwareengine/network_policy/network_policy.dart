import 'package:pulumi/pulumi.dart' as pulumi;
import '../network_policy_external_ip/network_policy_external_ip.dart';
import '../network_policy_internet_access/network_policy_internet_access.dart';
import 'network_policy_args.dart';

/// Represents a network policy resource. Network policies are regional resources.
///
///
/// To get more information about NetworkPolicy, see:
///
/// * [API documentation](https://cloud.google.com/vmware-engine/docs/reference/rest/v1/projects.locations.networkPolicies)
///
/// ## Example Usage
///
/// ### Vmware Engine Network Policy Basic
///
///
///
/// ### Vmware Engine Network Policy Full
///
///
///
///
/// ## Import
///
/// NetworkPolicy can be imported using any of these accepted formats:
///
/// * `projects/{{project}}/locations/{{location}}/networkPolicies/{{name}}`
///
/// * `{{project}}/{{location}}/{{name}}`
///
/// * `{{location}}/{{name}}`
///
/// When using the `pulumi import` command, NetworkPolicy can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:vmwareengine/networkPolicy:NetworkPolicy default projects/{{project}}/locations/{{location}}/networkPolicies/{{name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:vmwareengine/networkPolicy:NetworkPolicy default {{project}}/{{location}}/{{name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:vmwareengine/networkPolicy:NetworkPolicy default {{location}}/{{name}}
/// ```
class NetworkPolicy extends pulumi.CustomResource {
  /// Creation time of this resource.
  /// A timestamp in RFC3339 UTC "Zulu" format, with nanosecond resolution and
  /// up to nine fractional digits. Examples: "2014-10-02T15:01:23Z" and "2014-10-02T15:01:23.045123456Z".
  late final pulumi.Output<String> createTime;

  /// User-provided description for this network policy.
  late final pulumi.Output<String?> description;

  /// IP address range in CIDR notation used to create internet access and external IP access.
  /// An RFC 1918 CIDR block, with a "/26" prefix, is required. The range cannot overlap with any
  /// prefixes either in the consumer VPC network or in use by the private clouds attached to that VPC network.
  late final pulumi.Output<String> edgeServicesCidr;

  /// Network service that allows External IP addresses to be assigned to VMware workloads.
  /// This service can only be enabled when internetAccess is also enabled.
  /// Structure is documented below.
  late final pulumi.Output<NetworkPolicyExternalIp> externalIp;

  /// Network service that allows VMware workloads to access the internet.
  /// Structure is documented below.
  late final pulumi.Output<NetworkPolicyInternetAccess> internetAccess;

  /// The resource name of the location (region) to create the new network policy in.
  /// Resource names are schemeless URIs that follow the conventions in https://cloud.google.com/apis/design/resource_names.
  /// For example: projects/my-project/locations/us-central1
  late final pulumi.Output<String> location;

  /// The ID of the Network Policy.
  late final pulumi.Output<String> name;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final pulumi.Output<String> project;

  /// System-generated unique identifier for the resource.
  late final pulumi.Output<String> uid;

  /// Last updated time of this resource.
  /// A timestamp in RFC3339 UTC "Zulu" format, with nanosecond resolution and up to nine
  /// fractional digits. Examples: "2014-10-02T15:01:23Z" and "2014-10-02T15:01:23.045123456Z".
  late final pulumi.Output<String> updateTime;

  /// The relative resource name of the VMware Engine network. Specify the name in the following form:
  /// projects/{project}/locations/{location}/vmwareEngineNetworks/{vmwareEngineNetworkId} where {project}
  /// can either be a project number or a project ID.
  late final pulumi.Output<String> vmwareEngineNetwork;

  /// The canonical name of the VMware Engine network in the form:
  /// projects/{project_number}/locations/{location}/vmwareEngineNetworks/{vmwareEngineNetworkId}
  late final pulumi.Output<String> vmwareEngineNetworkCanonical;

  NetworkPolicy(
    String name, {
    NetworkPolicyArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:vmwareengine/networkPolicy:NetworkPolicy',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.createTime = registerOutput<String>('createTime');
    this.description = registerOutput<String?>('description');
    this.edgeServicesCidr = registerOutput<String>('edgeServicesCidr');
    this.externalIp = registerOutput<NetworkPolicyExternalIp>('externalIp');
    this.internetAccess =
        registerOutput<NetworkPolicyInternetAccess>('internetAccess');
    this.location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    this.project = registerOutput<String>('project');
    this.uid = registerOutput<String>('uid');
    this.updateTime = registerOutput<String>('updateTime');
    this.vmwareEngineNetwork = registerOutput<String>('vmwareEngineNetwork');
    this.vmwareEngineNetworkCanonical =
        registerOutput<String>('vmwareEngineNetworkCanonical');
  }
}
