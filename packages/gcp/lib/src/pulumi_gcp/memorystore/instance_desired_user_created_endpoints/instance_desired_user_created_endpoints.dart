import 'package:pulumi/pulumi.dart';
import '../instance_desired_user_created_endpoints_desired_user_created_endpoint/instance_desired_user_created_endpoints_desired_user_created_endpoint.dart';
import 'instance_desired_user_created_endpoints_args.dart';

/// ## Example Usage
///
/// ### Memorystore Instance Desired User Created Endpoints
///
///
///
/// ### Memorystore Instance Desired User And Auto Created Endpoints
///
///
///
///
/// ## Import
///
/// InstanceDesiredUserCreatedEndpoints can be imported using any of these accepted formats:
///
/// * `projects/{{project}}/locations/{{region}}/instances/{{name}}`
///
/// * `{{project}}/{{region}}/{{name}}`
///
/// * `{{region}}/{{name}}`
///
/// * `{{name}}`
///
/// When using the `pulumi import` command, InstanceDesiredUserCreatedEndpoints can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:memorystore/instanceDesiredUserCreatedEndpoints:InstanceDesiredUserCreatedEndpoints default projects/{{project}}/locations/{{region}}/instances/{{name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:memorystore/instanceDesiredUserCreatedEndpoints:InstanceDesiredUserCreatedEndpoints default {{project}}/{{region}}/{{name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:memorystore/instanceDesiredUserCreatedEndpoints:InstanceDesiredUserCreatedEndpoints default {{region}}/{{name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:memorystore/instanceDesiredUserCreatedEndpoints:InstanceDesiredUserCreatedEndpoints default {{name}}
/// ```
class InstanceDesiredUserCreatedEndpoints extends CustomResource {
  /// A list of desired user endpoints
  /// Structure is documented below.
  late final Output<
          List<InstanceDesiredUserCreatedEndpointsDesiredUserCreatedEndpoint>?>
      desiredUserCreatedEndpoints;

  /// The name of the Memorystore instance these endpoints should be added to.
  late final Output<String> name;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final Output<String> project;

  /// The name of the region of the Memorystore instance these endpoints should be added to.
  late final Output<String> region;

  InstanceDesiredUserCreatedEndpoints(
    String name, {
    InstanceDesiredUserCreatedEndpointsArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'gcp:memorystore/instanceDesiredUserCreatedEndpoints:InstanceDesiredUserCreatedEndpoints',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.desiredUserCreatedEndpoints = registerOutput<
            List<
                InstanceDesiredUserCreatedEndpointsDesiredUserCreatedEndpoint>?>(
        'desiredUserCreatedEndpoints');
    this.name = registerOutput<String>('name');
    this.project = registerOutput<String>('project');
    this.region = registerOutput<String>('region');
  }
}
