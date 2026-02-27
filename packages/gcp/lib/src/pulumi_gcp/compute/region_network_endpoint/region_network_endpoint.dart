import 'package:pulumi/pulumi.dart';
import 'region_network_endpoint_args.dart';

/// A Region network endpoint represents a IP address/FQDN and port combination that is
/// part of a specific network endpoint group (NEG).
///
/// > **NOTE**: Network endpoints cannot be created outside of a network endpoint group.
///
///
/// To get more information about RegionNetworkEndpoint, see:
///
/// * [API documentation](https://cloud.google.com/compute/docs/reference/rest/beta/regionNetworkEndpointGroups)
/// * How-to Guides
/// * [Internet NEGs Official Documentation](https://cloud.google.com/load-balancing/docs/negs/internet-neg-concepts)
/// * [Official Documentation](https://cloud.google.com/load-balancing/docs/negs/)
///
/// ## Example Usage
///
/// ### Region Network Endpoint Internet Ip Port
///
///
///
/// ### Region Network Endpoint Internet Fqdn Port
///
///
///
/// ### Region Network Endpoint Portmap
///
///
///
///
/// ## Import
///
/// RegionNetworkEndpoint can be imported using any of these accepted formats:
///
/// * `projects/{{project}}/regions/{{region}}/networkEndpointGroups/{{region_network_endpoint_group}}/{{ip_address}}/{{fqdn}}/{{port}}`
///
/// * `{{project}}/{{region}}/{{region_network_endpoint_group}}/{{ip_address}}/{{fqdn}}/{{port}}`
///
/// * `{{region}}/{{region_network_endpoint_group}}/{{ip_address}}/{{fqdn}}/{{port}}`
///
/// * `{{region_network_endpoint_group}}/{{ip_address}}/{{fqdn}}/{{port}}`
///
/// When using the `pulumi import` command, RegionNetworkEndpoint can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:compute/regionNetworkEndpoint:RegionNetworkEndpoint default projects/{{project}}/regions/{{region}}/networkEndpointGroups/{{region_network_endpoint_group}}/{{ip_address}}/{{fqdn}}/{{port}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:compute/regionNetworkEndpoint:RegionNetworkEndpoint default {{project}}/{{region}}/{{region_network_endpoint_group}}/{{ip_address}}/{{fqdn}}/{{port}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:compute/regionNetworkEndpoint:RegionNetworkEndpoint default {{region}}/{{region_network_endpoint_group}}/{{ip_address}}/{{fqdn}}/{{port}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:compute/regionNetworkEndpoint:RegionNetworkEndpoint default {{region_network_endpoint_group}}/{{ip_address}}/{{fqdn}}/{{port}}
/// ```
class RegionNetworkEndpoint extends CustomResource {
  /// Client destination port for the `GCE_VM_IP_PORTMAP` NEG.
  late final Output<int?> clientDestinationPort;

  /// Fully qualified domain name of network endpoint.
  /// This can only be specified when network_endpoint_type of the NEG is INTERNET_FQDN_PORT.
  late final Output<String?> fqdn;

  /// The name for a specific VM instance that the IP address belongs to.
  /// This is required for network endpoints of type GCE_VM_IP_PORTMAP.
  late final Output<String?> instance;

  /// IPv4 address external endpoint.
  /// This can only be specified when network_endpoint_type of the NEG is INTERNET_IP_PORT.
  late final Output<String?> ipAddress;

  /// The unique identifier number for the resource. This identifier is defined by the server.
  late final Output<int> networkEndpointId;

  /// Port number of network endpoint.
  late final Output<int> port;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final Output<String> project;

  /// Region where the containing network endpoint group is located.
  late final Output<String> region;

  /// The network endpoint group this endpoint is part of.
  late final Output<String> regionNetworkEndpointGroup;

  RegionNetworkEndpoint(
    String name, {
    RegionNetworkEndpointArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'gcp:compute/regionNetworkEndpoint:RegionNetworkEndpoint',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.clientDestinationPort = registerOutput<int?>('clientDestinationPort');
    this.fqdn = registerOutput<String?>('fqdn');
    this.instance = registerOutput<String?>('instance');
    this.ipAddress = registerOutput<String?>('ipAddress');
    this.networkEndpointId = registerOutput<int>('networkEndpointId');
    this.port = registerOutput<int>('port');
    this.project = registerOutput<String>('project');
    this.region = registerOutput<String>('region');
    this.regionNetworkEndpointGroup =
        registerOutput<String>('regionNetworkEndpointGroup');
  }
}
