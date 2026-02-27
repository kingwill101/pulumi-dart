import 'package:pulumi/pulumi.dart';
import 'router_nat_address_args.dart';

/// A resource used to set the list of IP addresses to be used in a NAT service and manage the draining of destroyed IPs.
///
/// > **Note:** This resource is to be used alongside a `gcp.compute.RouterNat` resource,
/// the router nat resource must have no defined `nat_ips` or `drain_nat_ips` parameters,
/// instead using the `initial_nat_ips` parameter to set at least one IP for the creation of the resource.
///
///
/// To get more information about RouterNatAddress, see:
///
/// * [API documentation](https://cloud.google.com/compute/docs/reference/rest/v1/routers)
/// * How-to Guides
/// * [Google Cloud Router](https://cloud.google.com/router/docs/)
///
/// ## Example Usage
///
/// ## Import
///
/// RouterNatAddress can be imported using any of these accepted formats:
///
/// * `projects/{{project}}/regions/{{region}}/routers/{{router}}/{{router_nat}}`
///
/// * `{{project}}/{{region}}/{{router}}/{{router_nat}}`
///
/// * `{{region}}/{{router}}/{{router_nat}}`
///
/// * `{{router}}/{{router_nat}}`
///
/// When using the `pulumi import` command, RouterNatAddress can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:compute/routerNatAddress:RouterNatAddress default projects/{{project}}/regions/{{region}}/routers/{{router}}/{{router_nat}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:compute/routerNatAddress:RouterNatAddress default {{project}}/{{region}}/{{router}}/{{router_nat}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:compute/routerNatAddress:RouterNatAddress default {{region}}/{{router}}/{{router_nat}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:compute/routerNatAddress:RouterNatAddress default {{router}}/{{router_nat}}
/// ```
class RouterNatAddress extends CustomResource {
  /// A list of URLs of the IP resources to be drained. These IPs must be
  /// valid static external IPs that have been assigned to the NAT.
  late final Output<List<String>?> drainNatIps;

  /// Self-links of NAT IPs to be used in a Nat service. Only valid if the referenced RouterNat
  /// natIpAllocateOption is set to MANUAL_ONLY.
  late final Output<List<String>> natIps;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final Output<String> project;

  /// Region where the NAT service reside.
  late final Output<String> region;

  /// The name of the Cloud Router in which the referenced NAT service is configured.
  late final Output<String> router;

  /// The name of the Nat service in which this address will be configured.
  late final Output<String> routerNat;

  RouterNatAddress(
    String name, {
    RouterNatAddressArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'gcp:compute/routerNatAddress:RouterNatAddress',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.drainNatIps = registerOutput<List<String>?>('drainNatIps');
    this.natIps = registerOutput<List<String>>('natIps');
    this.project = registerOutput<String>('project');
    this.region = registerOutput<String>('region');
    this.router = registerOutput<String>('router');
    this.routerNat = registerOutput<String>('routerNat');
  }
}
