import 'package:pulumi/pulumi.dart' as pulumi;
import 'environment_args.dart';

/// An ESC Environment.
class Environment extends pulumi.CustomResource {
  /// Environment name.
  late final pulumi.Output<String> name;
  /// Organization name.
  late final pulumi.Output<String> organization;
  /// Project name.
  late final pulumi.Output<String> project;
  /// Revision number of the latest version.
  late final pulumi.Output<int> revision;
  /// Environment's yaml file.
  late final pulumi.Output<dynamic> yaml;

  /// Creates a new [Environment].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Environment]. {@macro pulumi_index_environment_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Environment(
    String name, {
    EnvironmentArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'pulumiservice:index:Environment',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.name = registerOutput<String>('name');
    this.organization = registerOutput<String>('organization');
    this.project = registerOutput<String>('project');
    this.revision = registerOutput<int>('revision');
    this.yaml = registerOutput<dynamic>('yaml');
  }
}
