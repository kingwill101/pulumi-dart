import 'package:pulumi/pulumi.dart';
import '../service_perimeter_dry_run_egress_policy_egress_from/service_perimeter_dry_run_egress_policy_egress_from.dart';
import '../service_perimeter_dry_run_egress_policy_egress_to/service_perimeter_dry_run_egress_policy_egress_to.dart';
import 'service_perimeter_dry_run_egress_policy_args.dart';

/// Manage a single EgressPolicy in the spec (dry-run) configuration for a service perimeter.
/// EgressPolicies match requests based on egressFrom and egressTo stanzas.
/// For an EgressPolicy to match, both egressFrom and egressTo stanzas must be matched.
/// If an EgressPolicy matches a request, the request is allowed to span the ServicePerimeter
/// boundary. For example, an EgressPolicy can be used to allow VMs on networks
/// within the ServicePerimeter to access a defined set of projects outside the
/// perimeter in certain contexts (e.g. to read data from a Cloud Storage bucket
/// or query against a BigQuery dataset).
///
/// > **Note:** By default, updates to this resource will remove the EgressPolicy from the
/// from the perimeter and add it back in a non-atomic manner. To ensure that the new EgressPolicy
/// is added before the old one is removed, add a <span pulumi-lang-nodejs="`lifecycle`" pulumi-lang-dotnet="`Lifecycle`" pulumi-lang-go="`lifecycle`" pulumi-lang-python="`lifecycle`" pulumi-lang-yaml="`lifecycle`" pulumi-lang-java="`lifecycle`">`lifecycle`</span> block with <span pulumi-lang-nodejs="`createBeforeDestroy " pulumi-lang-dotnet="`CreateBeforeDestroy " pulumi-lang-go="`createBeforeDestroy " pulumi-lang-python="`create_before_destroy " pulumi-lang-yaml="`createBeforeDestroy " pulumi-lang-java="`createBeforeDestroy ">`create_before_destroy </span>= true` to this resource.
/// > **Note:** If this resource is used alongside a <span pulumi-lang-nodejs="`gcp.accesscontextmanager.ServicePerimeter`" pulumi-lang-dotnet="`gcp.accesscontextmanager.ServicePerimeter`" pulumi-lang-go="`accesscontextmanager.ServicePerimeter`" pulumi-lang-python="`accesscontextmanager.ServicePerimeter`" pulumi-lang-yaml="`gcp.accesscontextmanager.ServicePerimeter`" pulumi-lang-java="`gcp.accesscontextmanager.ServicePerimeter`">`gcp.accesscontextmanager.ServicePerimeter`</span> resource,
/// the service perimeter resource must have a <span pulumi-lang-nodejs="`lifecycle`" pulumi-lang-dotnet="`Lifecycle`" pulumi-lang-go="`lifecycle`" pulumi-lang-python="`lifecycle`" pulumi-lang-yaml="`lifecycle`" pulumi-lang-java="`lifecycle`">`lifecycle`</span> block with <span pulumi-lang-nodejs="`ignoreChanges " pulumi-lang-dotnet="`IgnoreChanges " pulumi-lang-go="`ignoreChanges " pulumi-lang-python="`ignore_changes " pulumi-lang-yaml="`ignoreChanges " pulumi-lang-java="`ignoreChanges ">`ignore_changes </span>= [spec[0].egress_policies]` so
/// they don't fight over which egress rules should be in the policy.
///
///
/// To get more information about ServicePerimeterDryRunEgressPolicy, see:
///
/// * [API documentation](https://cloud.google.com/access-context-manager/docs/reference/rest/v1/accessPolicies.servicePerimeters#egresspolicy)
/// * How-to Guides
/// * [Guide to Ingress and Egress Rules](https://cloud.google.com/vpc-service-controls/docs/ingress-egress-rules)
///
/// ## Example Usage
class ServicePerimeterDryRunEgressPolicy extends CustomResource {
  /// The name of the Access Policy this resource belongs to.
  late final Output<String> accessPolicyId;

  /// Defines conditions on the source of a request causing this `EgressPolicy` to apply.
  /// Structure is documented below.
  late final Output<ServicePerimeterDryRunEgressPolicyEgressFrom?> egressFrom;

  /// Defines the conditions on the `ApiOperation` and destination resources that
  /// cause this `EgressPolicy` to apply.
  /// Structure is documented below.
  late final Output<ServicePerimeterDryRunEgressPolicyEgressTo?> egressTo;

  /// The perimeter etag is internally used to prevent overwriting the list of policies on PATCH calls. It is retrieved from the same GET perimeter API call that's used to get the current list of policies. The policy defined in this resource is added or removed from that list, and then this etag is sent with the PATCH call along with the updated policies.
  late final Output<String> etag;

  /// The name of the Service Perimeter to add this resource to.
  late final Output<String> perimeter;

  /// Human readable title. Must be unique within the perimeter. Does not affect behavior.
  late final Output<String?> title;

  ServicePerimeterDryRunEgressPolicy(
    String name, {
    ServicePerimeterDryRunEgressPolicyArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'gcp:accesscontextmanager/servicePerimeterDryRunEgressPolicy:ServicePerimeterDryRunEgressPolicy',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.accessPolicyId = Output.createUnknown<String>();
    this.egressFrom =
        Output.createUnknown<ServicePerimeterDryRunEgressPolicyEgressFrom?>();
    this.egressTo =
        Output.createUnknown<ServicePerimeterDryRunEgressPolicyEgressTo?>();
    this.etag = Output.createUnknown<String>();
    this.perimeter = Output.createUnknown<String>();
    this.title = Output.createUnknown<String?>();
  }
}
