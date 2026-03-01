import 'package:pulumi/pulumi.dart' as pulumi;
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
class IngressPolicy extends pulumi.CustomResource {
  /// The name of the Access Policy this resource belongs to.
  late final pulumi.Output<String> accessPolicyId;

  /// The name of the Service Perimeter to add this resource to.
  late final pulumi.Output<String> ingressPolicyName;

  /// A GCP resource that is inside of the service perimeter.
  late final pulumi.Output<String> resource;

  /// Creates a new [IngressPolicy].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [IngressPolicy]. {@macro pulumi_accesscontextmanager_ingress_policy_ingress_policy_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  IngressPolicy(
    String name, {
    IngressPolicyArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'gcp:accesscontextmanager/ingressPolicy:IngressPolicy',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    this.accessPolicyId = registerOutput<String>('accessPolicyId');
    this.ingressPolicyName = registerOutput<String>('ingressPolicyName');
    this.resource = registerOutput<String>('resource');
  }
}
