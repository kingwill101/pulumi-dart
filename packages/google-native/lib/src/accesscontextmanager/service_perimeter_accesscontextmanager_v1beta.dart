import 'package:pulumi/pulumi.dart' as pulumi;
import 'service_perimeter_accesscontextmanager_v1beta_args.dart';
import 'service_perimeter_config_response_accesscontextmanager_v1beta.dart';

/// Create a Service Perimeter. The longrunning operation from this RPC will have a successful status once the Service Perimeter has propagated to long-lasting storage. Service Perimeters containing errors will result in an error response for the first error encountered.
class ServicePerimeterAccesscontextmanagerV1beta extends pulumi.CustomResource {
  late final pulumi.Output<String> accessPolicyId;

  /// Description of the `ServicePerimeter` and its use. Does not affect behavior.
  late final pulumi.Output<String> description;

  /// Resource name for the `ServicePerimeter`. Format: `accessPolicies/{access_policy}/servicePerimeters/{service_perimeter}`. The `service_perimeter` component must begin with a letter, followed by alphanumeric characters or `_`. After you create a `ServicePerimeter`, you cannot change its `name`.
  late final pulumi.Output<String> name;

  /// Perimeter type indicator. A single project is allowed to be a member of single regular perimeter, but multiple service perimeter bridges. A project cannot be a included in a perimeter bridge without being included in regular perimeter. For perimeter bridges, restricted/unrestricted service lists as well as access lists must be empty.
  late final pulumi.Output<String> perimeterType;

  /// Current ServicePerimeter configuration. Specifies sets of resources, restricted/unrestricted services and access levels that determine perimeter content and boundaries.
  late final pulumi.Output<
    ServicePerimeterConfigResponseAccesscontextmanagerV1beta
  >
  status;

  /// Human readable title. Must be unique within the Policy.
  late final pulumi.Output<String> title;

  /// Creates a new [ServicePerimeterAccesscontextmanagerV1beta].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [ServicePerimeterAccesscontextmanagerV1beta]. {@macro pulumi_accesscontextmanager_v1beta_service_perimeter_accesscontextmanager_v1beta_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  ServicePerimeterAccesscontextmanagerV1beta(
    String name, {
    ServicePerimeterAccesscontextmanagerV1betaArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'google-native:accesscontextmanager/v1beta:ServicePerimeter',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    this.accessPolicyId = registerOutput<String>('accessPolicyId');
    this.description = registerOutput<String>('description');
    this.name = registerOutput<String>('name');
    this.perimeterType = registerOutput<String>('perimeterType');
    this.status =
        registerOutput<
          ServicePerimeterConfigResponseAccesscontextmanagerV1beta
        >('status');
    this.title = registerOutput<String>('title');
  }
}
