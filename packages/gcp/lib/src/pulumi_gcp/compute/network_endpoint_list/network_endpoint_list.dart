import 'package:pulumi/pulumi.dart' as pulumi;
import '../network_endpoint_list_network_endpoint/network_endpoint_list_network_endpoint.dart';
import 'network_endpoint_list_args.dart';

/// A set of network endpoints belonging to a network endpoint group (NEG). A
/// single network endpoint represents a IP address and port combination that is
/// part of a specific network endpoint group  (NEG). NEGs are zonal collections
/// of these endpoints for GCP resources within a single subnet. **NOTE**:
/// Network endpoints cannot be created outside of a network endpoint group.
///
/// This resource is authoritative for a single NEG. Any endpoints not specified
/// by this resource will be deleted when the resource configuration is applied.
///
/// > **NOTE** In case the Endpoint's Instance is recreated, it's needed to
/// perform `apply` twice. To avoid situations like this, please use this resource
/// with the lifecycle `replace_triggered_by` method, with the passed Instance's ID.
///
///
/// To get more information about NetworkEndpoints, see:
///
/// * [API documentation](https://cloud.google.com/compute/docs/reference/rest/beta/networkEndpointGroups)
/// * How-to Guides
/// * [Official Documentation](https://cloud.google.com/load-balancing/docs/negs/)
///
/// ## Example Usage
///
/// ### Network Endpoints
///
///
///
///
/// ## Import
///
/// NetworkEndpoints can be imported using any of these accepted formats:
///
/// * `projects/{{project}}/zones/{{zone}}/networkEndpointGroups/{{network_endpoint_group}}`
///
/// * `{{project}}/{{zone}}/{{network_endpoint_group}}`
///
/// * `{{zone}}/{{network_endpoint_group}}`
///
/// * `{{network_endpoint_group}}`
///
/// When using the `pulumi import` command, NetworkEndpoints can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:compute/networkEndpointList:NetworkEndpointList default projects/{{project}}/zones/{{zone}}/networkEndpointGroups/{{network_endpoint_group}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:compute/networkEndpointList:NetworkEndpointList default {{project}}/{{zone}}/{{network_endpoint_group}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:compute/networkEndpointList:NetworkEndpointList default {{zone}}/{{network_endpoint_group}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:compute/networkEndpointList:NetworkEndpointList default {{network_endpoint_group}}
/// ```
class NetworkEndpointList extends pulumi.CustomResource {
  /// The network endpoint group these endpoints are part of.
  late final pulumi.Output<String> networkEndpointGroup;

  /// The network endpoints to be added to the enclosing network endpoint group
  /// (NEG). Each endpoint specifies an IP address and port, along with
  /// additional information depending on the NEG type.
  /// Structure is documented below.
  late final pulumi.Output<List<NetworkEndpointListNetworkEndpoint>?>
      networkEndpoints;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final pulumi.Output<String> project;

  /// Zone where the containing network endpoint group is located.
  late final pulumi.Output<String> zone;

  NetworkEndpointList(
    String name, {
    NetworkEndpointListArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:compute/networkEndpointList:NetworkEndpointList',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.networkEndpointGroup = registerOutput<String>('networkEndpointGroup');
    this.networkEndpoints =
        registerOutput<List<NetworkEndpointListNetworkEndpoint>?>(
            'networkEndpoints');
    this.project = registerOutput<String>('project');
    this.zone = registerOutput<String>('zone');
  }
}
