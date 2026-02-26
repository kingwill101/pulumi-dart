import 'package:pulumi/pulumi.dart';
import 'egress_policy_args.dart';

/// This resource has been deprecated, please refer to ServicePerimeterEgressPolicy.
///
///
/// To get more information about EgressPolicy, see:
///
/// * [API documentation](https://cloud.google.com/access-context-manager/docs/reference/rest/v1/accessPolicies.servicePerimeters#egresspolicy)
///
/// ## Import
///
/// EgressPolicy can be imported using any of these accepted formats:
///
/// * `{{egress_policy_name}}/{{resource}}`
///
/// When using the `pulumi import` command, EgressPolicy can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:accesscontextmanager/egressPolicy:EgressPolicy default {{egress_policy_name}}/{{resource}}
/// ```
class EgressPolicy extends CustomResource {
  /// The name of the Access Policy this resource belongs to.
  late final Output<String> accessPolicyId;

  /// The name of the Service Perimeter to add this resource to.
  late final Output<String> egressPolicyName;

  /// A GCP resource that is inside of the service perimeter.
  late final Output<String> resource;

  EgressPolicy(
    String name, {
    EgressPolicyArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'gcp:accesscontextmanager/egressPolicy:EgressPolicy',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.accessPolicyId = registerOutput<String>('accessPolicyId');
    this.egressPolicyName = registerOutput<String>('egressPolicyName');
    this.resource = registerOutput<String>('resource');
  }
}
