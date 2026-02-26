import 'package:pulumi/pulumi.dart';
import 'container_image_response.dart';
import 'environment_args9.dart';
import 'vm_image_response.dart';

/// Creates a new Environment.
/// Auto-naming is currently not supported for this resource.
class Environment12 extends CustomResource {
  /// Use a container image to start the notebook instance.
  late final Output<ContainerImageResponse> containerImage;

  /// The time at which this environment was created.
  late final Output<String> createTime;

  /// A brief description of this environment.
  late final Output<String> description;

  /// Display name of this environment for the UI.
  late final Output<String> displayName;

  /// Required. User-defined unique ID of this environment. The `environment_id` must be 1 to 63 characters long and contain only lowercase letters, numeric characters, and dashes. The first character must be a lowercase letter and the last character cannot be a dash.
  late final Output<String> environmentId;
  late final Output<String> location;

  /// Name of this environment. Format: `projects/{project_id}/locations/{location}/environments/{environment_id}`
  late final Output<String> name;

  /// Path to a Bash script that automatically runs after a notebook instance fully boots up. The path must be a URL or Cloud Storage path. Example: `"gs://path-to-file/file-name"`
  late final Output<String> postStartupScript;
  late final Output<String> project;

  /// Use a Compute Engine VM image to start the notebook instance.
  late final Output<VmImageResponse> vmImage;

  Environment12(
    String name, {
    EnvironmentArgs9? args,
    CustomResourceOptions? options,
  }) : super(
          'google-native:notebooks/v1:Environment',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.containerImage = Output.createUnknown<ContainerImageResponse>();
    this.createTime = Output.createUnknown<String>();
    this.description = Output.createUnknown<String>();
    this.displayName = Output.createUnknown<String>();
    this.environmentId = Output.createUnknown<String>();
    this.location = Output.createUnknown<String>();
    this.name = Output.createUnknown<String>();
    this.postStartupScript = Output.createUnknown<String>();
    this.project = Output.createUnknown<String>();
    this.vmImage = Output.createUnknown<VmImageResponse>();
  }
}
