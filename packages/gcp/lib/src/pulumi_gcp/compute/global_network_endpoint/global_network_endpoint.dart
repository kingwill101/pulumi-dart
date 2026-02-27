import 'package:pulumi/pulumi.dart' as pulumi;
import 'global_network_endpoint_args.dart';

/// A Global Network endpoint represents a IP address and port combination that exists outside of GCP.
/// **NOTE**: Global network endpoints cannot be created outside of a
/// global network endpoint group.
///
///
/// To get more information about GlobalNetworkEndpoint, see:
///
/// * [API documentation](https://cloud.google.com/compute/docs/reference/rest/beta/networkEndpointGroups)
/// * How-to Guides
/// * [Official Documentation](https://cloud.google.com/load-balancing/docs/negs/)
///
/// ## Example Usage
///
/// ### Global Network Endpoint
///
///
///
///
/// ## Import
///
/// GlobalNetworkEndpoint can be imported using any of these accepted formats:
///
/// * `projects/{{project}}/global/networkEndpointGroups/{{global_network_endpoint_group}}/{{ip_address}}/{{fqdn}}/{{port}}`
///
/// * `{{project}}/{{global_network_endpoint_group}}/{{ip_address}}/{{fqdn}}/{{port}}`
///
/// * `{{global_network_endpoint_group}}/{{ip_address}}/{{fqdn}}/{{port}}`
///
/// When using the `pulumi import` command, GlobalNetworkEndpoint can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:compute/globalNetworkEndpoint:GlobalNetworkEndpoint default projects/{{project}}/global/networkEndpointGroups/{{global_network_endpoint_group}}/{{ip_address}}/{{fqdn}}/{{port}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:compute/globalNetworkEndpoint:GlobalNetworkEndpoint default {{project}}/{{global_network_endpoint_group}}/{{ip_address}}/{{fqdn}}/{{port}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:compute/globalNetworkEndpoint:GlobalNetworkEndpoint default {{global_network_endpoint_group}}/{{ip_address}}/{{fqdn}}/{{port}}
/// ```
class GlobalNetworkEndpoint extends pulumi.CustomResource {
  /// Fully qualified domain name of network endpoint.
  /// This can only be specified when network_endpoint_type of the NEG is INTERNET_FQDN_PORT.
  late final pulumi.Output<String?> fqdn;

  /// The global network endpoint group this endpoint is part of.
  late final pulumi.Output<String> globalNetworkEndpointGroup;

  /// IPv4 address external endpoint.
  late final pulumi.Output<String?> ipAddress;

  /// Port number of the external endpoint.
  late final pulumi.Output<int> port;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final pulumi.Output<String> project;

  GlobalNetworkEndpoint(
    String name, {
    GlobalNetworkEndpointArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:compute/globalNetworkEndpoint:GlobalNetworkEndpoint',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.fqdn = registerOutput<String?>('fqdn');
    this.globalNetworkEndpointGroup =
        registerOutput<String>('globalNetworkEndpointGroup');
    this.ipAddress = registerOutput<String?>('ipAddress');
    this.port = registerOutput<int>('port');
    this.project = registerOutput<String>('project');
  }
}
