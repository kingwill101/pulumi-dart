import 'package:pulumi/pulumi.dart' as pulumi;
import 'shared_vpchost_project_args.dart';

/// Enables the Google Compute Engine
/// [Shared VPC](https://cloud.google.com/compute/docs/shared-vpc)
/// feature for a project, assigning it as a Shared VPC host project.
///
/// For more information, see,
/// [the Project API documentation](https://cloud.google.com/compute/docs/reference/latest/projects),
/// where the Shared VPC feature is referred to by its former name "XPN".
///
/// ## Example Usage
///
///
///
/// ## Import
///
/// Google Compute Engine Shared VPC host project feature can be imported using `project`, e.g.
///
/// * `{{project_id}}`
///
/// When using the `pulumi import` command, Google Compute Engine Shared VPC host projects can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:compute/sharedVPCHostProject:SharedVPCHostProject default {{project_id}}
/// ```
class SharedVPCHostProject extends pulumi.CustomResource {
  /// The ID of the project that will serve as a Shared VPC host project
  late final pulumi.Output<String> project;

  SharedVPCHostProject(
    String name, {
    SharedVPCHostProjectArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:compute/sharedVPCHostProject:SharedVPCHostProject',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.project = registerOutput<String>('project');
  }
}
