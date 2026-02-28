import 'package:pulumi/pulumi.dart' as pulumi;
import 'service_perimeter_dry_run_egress_policy_args.dart';
import 'service_perimeter_dry_run_egress_policy_egress_from.dart';
import 'service_perimeter_dry_run_egress_policy_egress_to.dart';

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
/// is added before the old one is removed, add a `lifecycle` block with `create_before_destroy = true` to this resource.
/// > **Note:** If this resource is used alongside a `gcp.accesscontextmanager.ServicePerimeter` resource,
/// the service perimeter resource must have a `lifecycle` block with `ignore_changes = [spec[0].egress_policies]` so
/// they don't fight over which egress rules should be in the policy.
///
///
/// To get more information about ServicePerimeterDryRunEgressPolicy, see:
///
/// * [API documentation](https://cloud.google.com/access-context-manager/docs/reference/rest/v1/accessPolicies.servicePerimeters#egresspolicy)
/// * How-to Guides
/// * [Guide to Ingress and Egress Rules](https://cloud.google.com/vpc-service-controls/docs/ingress-egress-rules)
class ServicePerimeterDryRunEgressPolicy extends pulumi.CustomResource {
  /// The name of the Access Policy this resource belongs to.
  late final pulumi.Output<String> accessPolicyId;
  /// Defines conditions on the source of a request causing this `EgressPolicy` to apply.
  /// Structure is documented below.
  late final pulumi.Output<ServicePerimeterDryRunEgressPolicyEgressFrom?> egressFrom;
  /// Defines the conditions on the `ApiOperation` and destination resources that
  /// cause this `EgressPolicy` to apply.
  /// Structure is documented below.
  late final pulumi.Output<ServicePerimeterDryRunEgressPolicyEgressTo?> egressTo;
  /// The perimeter etag is internally used to prevent overwriting the list of policies on PATCH calls. It is retrieved from the same GET perimeter API call that's used to get the current list of policies. The policy defined in this resource is added or removed from that list, and then this etag is sent with the PATCH call along with the updated policies.
  late final pulumi.Output<String> etag;
  /// The name of the Service Perimeter to add this resource to.
  late final pulumi.Output<String> perimeter;
  /// Human readable title. Must be unique within the perimeter. Does not affect behavior.
  late final pulumi.Output<String?> title;

  /// Creates a new [ServicePerimeterDryRunEgressPolicy].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [ServicePerimeterDryRunEgressPolicy]. {@macro pulumi_accesscontextmanager_service_perimeter_dry_run_egress_policy_service_perimeter_dry_run_egress_policy_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  ServicePerimeterDryRunEgressPolicy(
    String name, {
    ServicePerimeterDryRunEgressPolicyArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:accesscontextmanager/servicePerimeterDryRunEgressPolicy:ServicePerimeterDryRunEgressPolicy',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.accessPolicyId = registerOutput<String>('accessPolicyId');
    this.egressFrom = registerOutput<ServicePerimeterDryRunEgressPolicyEgressFrom?>('egressFrom');
    this.egressTo = registerOutput<ServicePerimeterDryRunEgressPolicyEgressTo?>('egressTo');
    this.etag = registerOutput<String>('etag');
    this.perimeter = registerOutput<String>('perimeter');
    this.title = registerOutput<String?>('title');
  }
}
