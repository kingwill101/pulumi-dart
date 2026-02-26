import 'package:pulumi/pulumi.dart';
import 'ingress_policy_args.dart';

/// This resource has been deprecated, please refer to ServicePerimeterIngressPolicy.
///
///
/// To get more information about IngressPolicy, see:
///
/// * [API documentation](https://cloud.google.com/access-context-manager/docs/reference/rest/v1/accessPolicies.servicePerimeters#ingresspolicy)
///
/// ## Import
///
/// IngressPolicy can be imported using any of these accepted formats:
///
/// * `{{ingress_policy_name}}/{{resource}}`
///
/// When using the `pulumi import` command, IngressPolicy can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:accesscontextmanager/ingressPolicy:IngressPolicy default {{ingress_policy_name}}/{{resource}}
/// ```
class IngressPolicy extends CustomResource {
  /// The name of the Access Policy this resource belongs to.
  late final Output<String> accessPolicyId;

  /// The name of the Service Perimeter to add this resource to.
  late final Output<String> ingressPolicyName;

  /// A GCP resource that is inside of the service perimeter.
  late final Output<String> resource;

  IngressPolicy(
    String name, {
    IngressPolicyArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'gcp:accesscontextmanager/ingressPolicy:IngressPolicy',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.accessPolicyId = registerOutput<String>('accessPolicyId');
    this.ingressPolicyName = registerOutput<String>('ingressPolicyName');
    this.resource = registerOutput<String>('resource');
  }
}
