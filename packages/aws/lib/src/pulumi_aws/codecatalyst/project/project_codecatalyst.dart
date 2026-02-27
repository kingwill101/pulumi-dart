import 'package:pulumi/pulumi.dart' as pulumi;
import 'project_codecatalyst_args.dart';

/// Resource for managing an AWS CodeCatalyst Project.
///
/// ## Example Usage
///
/// ### Basic Usage
///
///
///
/// ## Import
///
/// Using `pulumi import`, import CodeCatalyst Project using the `id`. For example:
///
/// ```sh
/// $ pulumi import aws:codecatalyst/project:Project example project-id-12345678
/// ```
class ProjectCodecatalyst extends pulumi.CustomResource {
  /// The description of the project. This description will be displayed to all users of the project. We recommend providing a brief description of the project and its intended purpose.
  late final pulumi.Output<String?> description;

  /// The friendly name of the project that will be displayed to users.
  ///
  /// The following arguments are optional:
  late final pulumi.Output<String> displayName;

  /// The name of the project in the space.
  late final pulumi.Output<String> name;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;

  /// The name of the space.
  late final pulumi.Output<String> spaceName;

  ProjectCodecatalyst(
    String name, {
    ProjectCodecatalystArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:codecatalyst/project:Project',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.description = registerOutput<String?>('description');
    this.displayName = registerOutput<String>('displayName');
    this.name = registerOutput<String>('name');
    this.region = registerOutput<String>('region');
    this.spaceName = registerOutput<String>('spaceName');
  }
}
