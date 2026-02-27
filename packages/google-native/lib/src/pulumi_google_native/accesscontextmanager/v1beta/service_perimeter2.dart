import 'package:pulumi/pulumi.dart' hide Config;
import 'service_perimeter_args2.dart';
import 'service_perimeter_config_response2.dart';

/// Create a Service Perimeter. The longrunning operation from this RPC will have a successful status once the Service Perimeter has propagated to long-lasting storage. Service Perimeters containing errors will result in an error response for the first error encountered.
class ServicePerimeter2 extends CustomResource {
  late final Output<String> accessPolicyId;

  /// Description of the `ServicePerimeter` and its use. Does not affect behavior.
  late final Output<String> description;

  /// Resource name for the `ServicePerimeter`. Format: `accessPolicies/{access_policy}/servicePerimeters/{service_perimeter}`. The `service_perimeter` component must begin with a letter, followed by alphanumeric characters or `_`. After you create a `ServicePerimeter`, you cannot change its `name`.
  late final Output<String> name;

  /// Perimeter type indicator. A single project is allowed to be a member of single regular perimeter, but multiple service perimeter bridges. A project cannot be a included in a perimeter bridge without being included in regular perimeter. For perimeter bridges, restricted/unrestricted service lists as well as access lists must be empty.
  late final Output<String> perimeterType;

  /// Current ServicePerimeter configuration. Specifies sets of resources, restricted/unrestricted services and access levels that determine perimeter content and boundaries.
  late final Output<ServicePerimeterConfigResponse2> status;

  /// Human readable title. Must be unique within the Policy.
  late final Output<String> title;

  ServicePerimeter2(
    String name, {
    ServicePerimeterArgs2? args,
    CustomResourceOptions? options,
  }) : super(
          'google-native:accesscontextmanager/v1beta:ServicePerimeter',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.accessPolicyId = registerOutput<String>('accessPolicyId');
    this.description = registerOutput<String>('description');
    this.name = registerOutput<String>('name');
    this.perimeterType = registerOutput<String>('perimeterType');
    this.status = registerOutput<ServicePerimeterConfigResponse2>('status');
    this.title = registerOutput<String>('title');
  }
}
