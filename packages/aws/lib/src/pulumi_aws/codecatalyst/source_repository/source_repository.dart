import 'package:pulumi/pulumi.dart' as pulumi;
import 'source_repository_args.dart';

/// Resource for managing an AWS CodeCatalyst Source Repository.
///
/// ## Example Usage
///
/// ### Basic Usage
///
///
///
/// ## Import
///
/// Using `pulumi import`, import CodeCatalyst Source Repository using the `id`. For example:
///
/// ```sh
/// $ pulumi import aws:codecatalyst/sourceRepository:SourceRepository example example-repo
/// ```
class SourceRepository extends pulumi.CustomResource {
  /// The description of the project. This description will be displayed to all users of the project. We recommend providing a brief description of the project and its intended purpose.
  late final pulumi.Output<String?> description;

  /// The name of the source repository. For more information about name requirements, see [Quotas for source repositories](https://docs.aws.amazon.com/codecatalyst/latest/userguide/source-quotas.html).
  late final pulumi.Output<String> name;

  /// The name of the project in the CodeCatalyst space.
  ///
  /// The following arguments are optional:
  late final pulumi.Output<String> projectName;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;

  /// The name of the CodeCatalyst space.
  late final pulumi.Output<String> spaceName;

  SourceRepository(
    String name, {
    SourceRepositoryArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:codecatalyst/sourceRepository:SourceRepository',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.description = registerOutput<String?>('description');
    this.name = registerOutput<String>('name');
    this.projectName = registerOutput<String>('projectName');
    this.region = registerOutput<String>('region');
    this.spaceName = registerOutput<String>('spaceName');
  }
}
