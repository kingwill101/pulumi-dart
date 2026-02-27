import 'package:pulumi/pulumi.dart' as pulumi;
import '../environment_container_image/environment_container_image.dart';
import '../environment_vm_image/environment_vm_image.dart';
import 'environment_notebooks_args.dart';

/// A Cloud AI Platform Notebook environment.
///
///
/// To get more information about Environment, see:
///
/// * [API documentation](https://cloud.google.com/ai-platform/notebooks/docs/reference/rest)
/// * How-to Guides
/// * [Official Documentation](https://cloud.google.com/ai-platform-notebooks)
///
/// ## Example Usage
///
/// ### Notebook Environment Basic
///
///
///
///
/// ## Import
///
/// Environment can be imported using any of these accepted formats:
///
/// * `projects/{{project}}/locations/{{location}}/environments/{{name}}`
///
/// * `{{project}}/{{location}}/{{name}}`
///
/// * `{{location}}/{{name}}`
///
/// When using the `pulumi import` command, Environment can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:notebooks/environment:Environment default projects/{{project}}/locations/{{location}}/environments/{{name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:notebooks/environment:Environment default {{project}}/{{location}}/{{name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:notebooks/environment:Environment default {{location}}/{{name}}
/// ```
class EnvironmentNotebooks extends pulumi.CustomResource {
  /// Use a container image to start the notebook instance.
  /// Structure is documented below.
  late final pulumi.Output<EnvironmentContainerImage?> containerImage;

  /// Instance creation time
  late final pulumi.Output<String> createTime;

  /// A brief description of this environment.
  late final pulumi.Output<String?> description;

  /// Display name of this environment for the UI.
  late final pulumi.Output<String?> displayName;

  /// A reference to the zone where the machine resides.
  late final pulumi.Output<String> location;

  /// The name specified for the Environment instance.
  /// Format: projects/{project_id}/locations/{location}/environments/{environmentId}
  late final pulumi.Output<String> name;

  /// Path to a Bash script that automatically runs after a notebook instance fully boots up.
  /// The path must be a URL or Cloud Storage path. Example: "gs://path-to-file/file-name"
  late final pulumi.Output<String?> postStartupScript;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final pulumi.Output<String> project;

  /// Use a Compute Engine VM image to start the notebook instance.
  /// Structure is documented below.
  late final pulumi.Output<EnvironmentVmImage?> vmImage;

  EnvironmentNotebooks(
    String name, {
    EnvironmentNotebooksArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:notebooks/environment:Environment',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.containerImage =
        registerOutput<EnvironmentContainerImage?>('containerImage');
    this.createTime = registerOutput<String>('createTime');
    this.description = registerOutput<String?>('description');
    this.displayName = registerOutput<String?>('displayName');
    this.location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    this.postStartupScript = registerOutput<String?>('postStartupScript');
    this.project = registerOutput<String>('project');
    this.vmImage = registerOutput<EnvironmentVmImage?>('vmImage');
  }
}
