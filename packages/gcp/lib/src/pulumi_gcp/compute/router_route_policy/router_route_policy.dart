import 'package:pulumi/pulumi.dart';
import '../router_route_policy_term/router_route_policy_term.dart';
import 'router_route_policy_args.dart';

/// A route policy created in a router
///
///
/// To get more information about RouterRoutePolicy, see:
///
/// * [API documentation](https://cloud.google.com/compute/docs/reference/rest/v1/routers)
/// * How-to Guides
/// * [Google Cloud Router](https://cloud.google.com/router/docs/)
///
/// ## Example Usage
///
/// ### Router Route Policy Export
///
///
///
/// ### Router Route Policy Import
///
///
///
///
/// ## Import
///
/// RouterRoutePolicy can be imported using any of these accepted formats:
///
/// * `{{project}}/{{region}}/{{router}}/routePolicies/{{name}}`
///
/// * `{{project}}/{{region}}/{{router}}/{{name}}`
///
/// * `{{region}}/{{router}}/{{name}}`
///
/// * `{{router}}/{{name}}`
///
/// When using the `pulumi import` command, RouterRoutePolicy can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:compute/routerRoutePolicy:RouterRoutePolicy default {{project}}/{{region}}/{{router}}/routePolicies/{{name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:compute/routerRoutePolicy:RouterRoutePolicy default {{project}}/{{region}}/{{router}}/{{name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:compute/routerRoutePolicy:RouterRoutePolicy default {{region}}/{{router}}/{{name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:compute/routerRoutePolicy:RouterRoutePolicy default {{router}}/{{name}}
/// ```
class RouterRoutePolicy extends CustomResource {
  /// The fingerprint used for optimistic locking of this resource.  Used
  /// internally during updates.
  late final Output<String> fingerprint;

  /// Name of the route policy. This policy's name, which must be a resource ID segment and unique within all policies owned by the Router
  late final Output<String> name;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final Output<String> project;

  /// Region where the router and NAT reside.
  late final Output<String> region;

  /// The name of the Cloud Router in which this route policy will be configured.
  late final Output<String> router;

  /// List of terms (the order in the list is not important, they are evaluated in order of priority).
  /// Structure is documented below.
  late final Output<List<RouterRoutePolicyTerm>> terms;

  /// This is policy's type, which is one of IMPORT or EXPORT
  /// Possible values are: `ROUTE_POLICY_TYPE_IMPORT`, `ROUTE_POLICY_TYPE_EXPORT`.
  late final Output<String?> type;

  RouterRoutePolicy(
    String name, {
    RouterRoutePolicyArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'gcp:compute/routerRoutePolicy:RouterRoutePolicy',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.fingerprint = registerOutput<String>('fingerprint');
    this.name = registerOutput<String>('name');
    this.project = registerOutput<String>('project');
    this.region = registerOutput<String>('region');
    this.router = registerOutput<String>('router');
    this.terms = registerOutput<List<RouterRoutePolicyTerm>>('terms');
    this.type = registerOutput<String?>('type');
  }
}
