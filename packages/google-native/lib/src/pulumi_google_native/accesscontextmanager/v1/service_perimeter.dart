import 'package:pulumi/pulumi.dart' as pulumi;
import 'service_perimeter_args.dart';
import 'service_perimeter_config_response.dart';

/// Creates a service perimeter. The long-running operation from this RPC has a successful status after the service perimeter propagates to long-lasting storage. If a service perimeter contains errors, an error response is returned for the first error encountered.
class ServicePerimeter extends pulumi.CustomResource {
  late final pulumi.Output<String> accessPolicyId;

  /// Description of the `ServicePerimeter` and its use. Does not affect behavior.
  late final pulumi.Output<String> description;

  /// Resource name for the `ServicePerimeter`. Format: `accessPolicies/{access_policy}/servicePerimeters/{service_perimeter}`. The `service_perimeter` component must begin with a letter, followed by alphanumeric characters or `_`. After you create a `ServicePerimeter`, you cannot change its `name`.
  late final pulumi.Output<String> name;

  /// Perimeter type indicator. A single project or VPC network is allowed to be a member of single regular perimeter, but multiple service perimeter bridges. A project cannot be a included in a perimeter bridge without being included in regular perimeter. For perimeter bridges, the restricted service list as well as access level lists must be empty.
  late final pulumi.Output<String> perimeterType;

  /// Proposed (or dry run) ServicePerimeter configuration. This configuration allows to specify and test ServicePerimeter configuration without enforcing actual access restrictions. Only allowed to be set when the "use_explicit_dry_run_spec" flag is set.
  late final pulumi.Output<ServicePerimeterConfigResponse> spec;

  /// Current ServicePerimeter configuration. Specifies sets of resources, restricted services and access levels that determine perimeter content and boundaries.
  late final pulumi.Output<ServicePerimeterConfigResponse> status;

  /// Human readable title. Must be unique within the Policy.
  late final pulumi.Output<String> title;

  /// Use explicit dry run spec flag. Ordinarily, a dry-run spec implicitly exists for all Service Perimeters, and that spec is identical to the status for those Service Perimeters. When this flag is set, it inhibits the generation of the implicit spec, thereby allowing the user to explicitly provide a configuration ("spec") to use in a dry-run version of the Service Perimeter. This allows the user to test changes to the enforced config ("status") without actually enforcing them. This testing is done through analyzing the differences between currently enforced and suggested restrictions. use_explicit_dry_run_spec must bet set to True if any of the fields in the spec are set to non-default values.
  late final pulumi.Output<bool> useExplicitDryRunSpec;

  ServicePerimeter(
    String name, {
    ServicePerimeterArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'google-native:accesscontextmanager/v1:ServicePerimeter',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.accessPolicyId = registerOutput<String>('accessPolicyId');
    this.description = registerOutput<String>('description');
    this.name = registerOutput<String>('name');
    this.perimeterType = registerOutput<String>('perimeterType');
    this.spec = registerOutput<ServicePerimeterConfigResponse>('spec');
    this.status = registerOutput<ServicePerimeterConfigResponse>('status');
    this.title = registerOutput<String>('title');
    this.useExplicitDryRunSpec = registerOutput<bool>('useExplicitDryRunSpec');
  }
}
