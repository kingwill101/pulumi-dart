import 'package:pulumi/pulumi.dart';
import '../router_nat_log_config/router_nat_log_config.dart';
import '../router_nat_nat64_subnetwork/router_nat_nat64_subnetwork.dart';
import '../router_nat_rule/router_nat_rule.dart';
import '../router_nat_subnetwork/router_nat_subnetwork.dart';
import 'router_nat_args.dart';

/// A NAT service created in a router.
///
/// > **Note:** Recreating a `gcp.compute.Address` that is being used by `gcp.compute.RouterNat` will give a `resourceInUseByAnotherResource` error.
/// Use `lifecycle.create_before_destroy` on this address resource to avoid this type of error as shown in the Manual Ips example.
///
///
/// To get more information about RouterNat, see:
///
/// * [API documentation](https://cloud.google.com/compute/docs/reference/rest/v1/routers)
/// * How-to Guides
/// * [Google Cloud Router](https://cloud.google.com/router/docs/)
///
/// ## Example Usage
///
/// ### Router Nat Basic
///
///
///
/// ### Router Nat Rules
///
///
///
/// ### Router Nat Private
///
///
///
///
/// ## Import
///
/// RouterNat can be imported using any of these accepted formats:
///
/// * `projects/{{project}}/regions/{{region}}/routers/{{router}}/{{name}}`
///
/// * `{{project}}/{{region}}/{{router}}/{{name}}`
///
/// * `{{region}}/{{router}}/{{name}}`
///
/// * `{{router}}/{{name}}`
///
/// When using the `pulumi import` command, RouterNat can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:compute/routerNat:RouterNat default projects/{{project}}/regions/{{region}}/routers/{{router}}/{{name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:compute/routerNat:RouterNat default {{project}}/{{region}}/{{router}}/{{name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:compute/routerNat:RouterNat default {{region}}/{{router}}/{{name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:compute/routerNat:RouterNat default {{router}}/{{name}}
/// ```
class RouterNat extends CustomResource {
  /// The network tier to use when automatically reserving NAT IP addresses.
  /// Must be one of: PREMIUM, STANDARD. If not specified, then the current
  /// project-level default tier is used.
  /// Possible values are: `PREMIUM`, `STANDARD`.
  late final Output<String> autoNetworkTier;

  /// A list of URLs of the IP resources to be drained. These IPs must be
  /// valid static external IPs that have been assigned to the NAT.
  late final Output<List<String>> drainNatIps;

  /// Enable Dynamic Port Allocation.
  /// If minPortsPerVm is set, minPortsPerVm must be set to a power of two greater than or equal to 32.
  /// If minPortsPerVm is not set, a minimum of 32 ports will be allocated to a VM from this NAT config.
  /// If maxPortsPerVm is set, maxPortsPerVm must be set to a power of two greater than minPortsPerVm.
  /// If maxPortsPerVm is not set, a maximum of 65536 ports will be allocated to a VM from this NAT config.
  /// Mutually exclusive with enableEndpointIndependentMapping.
  late final Output<bool> enableDynamicPortAllocation;

  /// Enable endpoint independent mapping.
  /// For more information see the [official documentation](https://docs.cloud.google.com/nat/docs/public-nat#specs-rfcs).
  late final Output<bool> enableEndpointIndependentMapping;

  /// Specifies the endpoint Types supported by the NAT Gateway.
  /// Supported values include:
  /// `ENDPOINT_TYPE_VM`, `ENDPOINT_TYPE_SWG`,
  /// `ENDPOINT_TYPE_MANAGED_PROXY_LB`.
  late final Output<List<String>> endpointTypes;

  /// Timeout (in seconds) for ICMP connections. Defaults to 30s if not set.
  late final Output<int?> icmpIdleTimeoutSec;

  /// Self-links of NAT IPs to be used as initial value for creation alongside a RouterNatAddress resource.
  /// Conflicts with natIps and drainNatIps. Only valid if natIpAllocateOption is set to MANUAL_ONLY.
  late final Output<List<String>?> initialNatIps;

  /// Configuration for logging on NAT
  /// Structure is documented below.
  late final Output<RouterNatLogConfig?> logConfig;

  /// Maximum number of ports allocated to a VM from this NAT.
  /// This field can only be set when enableDynamicPortAllocation is enabled.
  late final Output<int?> maxPortsPerVm;

  /// Minimum number of ports allocated to a VM from this NAT. Defaults to 64 for static port allocation and 32 dynamic port allocation if not set.
  late final Output<int> minPortsPerVm;

  /// Name of the NAT service. The name must be 1-63 characters long and
  /// comply with RFC1035.
  late final Output<String> name;

  /// One or more subnetwork NAT configurations whose traffic should be translated by NAT64 Gateway.
  /// Only used if `source_subnetwork_ip_ranges_to_nat64` is set to `LIST_OF_IPV6_SUBNETWORKS`
  /// Structure is documented below.
  late final Output<List<RouterNatNat64Subnetwork>?> nat64Subnetworks;

  /// How external IPs should be allocated for this NAT. Valid values are
  /// `AUTO_ONLY` for only allowing NAT IPs allocated by Google Cloud
  /// Platform, or `MANUAL_ONLY` for only user-allocated NAT IP addresses.
  /// Possible values are: `MANUAL_ONLY`, `AUTO_ONLY`.
  late final Output<String?> natIpAllocateOption;

  /// Self-links of NAT IPs. Only valid if natIpAllocateOption
  /// is set to MANUAL_ONLY.
  /// If this field is used alongside with a count created list of address resources `google_compute_address.foobar.*.self_link`,
  /// the access level resource for the address resource must have a `lifecycle` block with `create_before_destroy = true` so
  /// the number of resources can be increased/decreased without triggering the `resourceInUseByAnotherResource` error.
  late final Output<List<String>> natIps;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final Output<String> project;

  /// Region where the router and NAT reside.
  late final Output<String> region;

  /// The name of the Cloud Router in which this NAT will be configured.
  late final Output<String> router;

  /// A list of rules associated with this NAT.
  /// Structure is documented below.
  late final Output<List<RouterNatRule>?> rules;

  /// How NAT should be configured per Subnetwork.
  /// If `ALL_SUBNETWORKS_ALL_IP_RANGES`, all of the
  /// IP ranges in every Subnetwork are allowed to Nat.
  /// If `ALL_SUBNETWORKS_ALL_PRIMARY_IP_RANGES`, all of the primary IP
  /// ranges in every Subnetwork are allowed to Nat.
  /// `LIST_OF_SUBNETWORKS`: A list of Subnetworks are allowed to Nat
  /// (specified in the field subnetwork below). Note that if this field
  /// contains ALL_SUBNETWORKS_ALL_IP_RANGES or
  /// ALL_SUBNETWORKS_ALL_PRIMARY_IP_RANGES, then there should not be any
  /// other RouterNat section in any Router for this network in this region.
  /// Possible values are: `ALL_SUBNETWORKS_ALL_IP_RANGES`, `ALL_SUBNETWORKS_ALL_PRIMARY_IP_RANGES`, `LIST_OF_SUBNETWORKS`.
  late final Output<String> sourceSubnetworkIpRangesToNat;

  /// Specify the Nat option for NAT64, which can take one of the following values:
  /// ALL_IPV6_SUBNETWORKS: All of the IP ranges in every Subnetwork are allowed to Nat.
  /// LIST_OF_IPV6_SUBNETWORKS: A list of Subnetworks are allowed to Nat (specified in the field nat64Subnetwork below).
  /// Note that if this field contains NAT64_ALL_V6_SUBNETWORKS no other Router.Nat section in this region can also enable NAT64 for any Subnetworks in this network.
  /// Other Router.Nat sections can still be present to enable NAT44 only.
  /// Possible values are: `ALL_IPV6_SUBNETWORKS`, `LIST_OF_IPV6_SUBNETWORKS`.
  late final Output<String?> sourceSubnetworkIpRangesToNat64;

  /// One or more subnetwork NAT configurations. Only used if
  /// `source_subnetwork_ip_ranges_to_nat` is set to `LIST_OF_SUBNETWORKS`
  /// Structure is documented below.
  late final Output<List<RouterNatSubnetwork>?> subnetworks;

  /// Timeout (in seconds) for TCP established connections.
  /// Defaults to 1200s if not set.
  late final Output<int?> tcpEstablishedIdleTimeoutSec;

  /// Timeout (in seconds) for TCP connections that are in TIME_WAIT state.
  /// Defaults to 120s if not set.
  late final Output<int?> tcpTimeWaitTimeoutSec;

  /// Timeout (in seconds) for TCP transitory connections.
  /// Defaults to 30s if not set.
  late final Output<int?> tcpTransitoryIdleTimeoutSec;

  /// Indicates whether this NAT is used for public or private IP translation.
  /// If unspecified, it defaults to PUBLIC.
  /// If `PUBLIC` NAT used for public IP translation.
  /// If `PRIVATE` NAT used for private IP translation.
  /// Default value is `PUBLIC`.
  /// Possible values are: `PUBLIC`, `PRIVATE`.
  late final Output<String?> type;

  /// Timeout (in seconds) for UDP connections. Defaults to 30s if not set.
  late final Output<int?> udpIdleTimeoutSec;

  RouterNat(
    String name, {
    RouterNatArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'gcp:compute/routerNat:RouterNat',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.autoNetworkTier = registerOutput<String>('autoNetworkTier');
    this.drainNatIps = registerOutput<List<String>>('drainNatIps');
    this.enableDynamicPortAllocation =
        registerOutput<bool>('enableDynamicPortAllocation');
    this.enableEndpointIndependentMapping =
        registerOutput<bool>('enableEndpointIndependentMapping');
    this.endpointTypes = registerOutput<List<String>>('endpointTypes');
    this.icmpIdleTimeoutSec = registerOutput<int?>('icmpIdleTimeoutSec');
    this.initialNatIps = registerOutput<List<String>?>('initialNatIps');
    this.logConfig = registerOutput<RouterNatLogConfig?>('logConfig');
    this.maxPortsPerVm = registerOutput<int?>('maxPortsPerVm');
    this.minPortsPerVm = registerOutput<int>('minPortsPerVm');
    this.name = registerOutput<String>('name');
    this.nat64Subnetworks =
        registerOutput<List<RouterNatNat64Subnetwork>?>('nat64Subnetworks');
    this.natIpAllocateOption = registerOutput<String?>('natIpAllocateOption');
    this.natIps = registerOutput<List<String>>('natIps');
    this.project = registerOutput<String>('project');
    this.region = registerOutput<String>('region');
    this.router = registerOutput<String>('router');
    this.rules = registerOutput<List<RouterNatRule>?>('rules');
    this.sourceSubnetworkIpRangesToNat =
        registerOutput<String>('sourceSubnetworkIpRangesToNat');
    this.sourceSubnetworkIpRangesToNat64 =
        registerOutput<String?>('sourceSubnetworkIpRangesToNat64');
    this.subnetworks =
        registerOutput<List<RouterNatSubnetwork>?>('subnetworks');
    this.tcpEstablishedIdleTimeoutSec =
        registerOutput<int?>('tcpEstablishedIdleTimeoutSec');
    this.tcpTimeWaitTimeoutSec = registerOutput<int?>('tcpTimeWaitTimeoutSec');
    this.tcpTransitoryIdleTimeoutSec =
        registerOutput<int?>('tcpTransitoryIdleTimeoutSec');
    this.type = registerOutput<String?>('type');
    this.udpIdleTimeoutSec = registerOutput<int?>('udpIdleTimeoutSec');
  }
}
