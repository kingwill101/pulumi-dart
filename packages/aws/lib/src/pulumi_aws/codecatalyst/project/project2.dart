import 'package:pulumi/pulumi.dart';
import 'project_args2.dart';

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
class Project2 extends CustomResource {
  /// The description of the project. This description will be displayed to all users of the project. We recommend providing a brief description of the project and its intended purpose.
  late final Output<String?> description;

  /// The friendly name of the project that will be displayed to users.
  ///
  /// The following arguments are optional:
  late final Output<String> displayName;

  /// The name of the project in the space.
  late final Output<String> name;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  /// The name of the space.
  late final Output<String> spaceName;

  Project2(
    String name, {
    ProjectArgs2? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:codecatalyst/project:Project',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.description = registerOutput<String?>('description');
    this.displayName = registerOutput<String>('displayName');
    this.name = registerOutput<String>('name');
    this.region = registerOutput<String>('region');
    this.spaceName = registerOutput<String>('spaceName');
  }
}
