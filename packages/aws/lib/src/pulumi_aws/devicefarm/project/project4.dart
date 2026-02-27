import 'package:pulumi/pulumi.dart';
import 'project_args4.dart';

/// Provides a resource to manage AWS Device Farm Projects.
///
/// For more information about Device Farm Projects, see the AWS Documentation on
/// [Device Farm Projects][aws-get-project].
///
/// > **NOTE:** AWS currently has limited regional support for Device Farm (e.g., `us-west-2`). See [AWS Device Farm endpoints and quotas](https://docs.aws.amazon.com/general/latest/gr/devicefarm.html) for information on supported regions.
///
/// ## Example Usage
///
///
///
/// ## Import
///
/// ### Identity Schema
///
/// #### Required
///
/// - `arn` (String) Amazon Resource Name (ARN) of the Device Farm project.
///
///
/// Using `pulumi import`, import DeviceFarm Projects using their ARN. For example:
///
/// ```sh
/// $ pulumi import aws:devicefarm/project:Project example arn:aws:devicefarm:us-west-2:123456789012:project:4fa784c7-ccb4-4dbf-ba4f-02198320daa1
/// ```
class Project4 extends CustomResource {
  /// The Amazon Resource Name of this project
  late final Output<String> arn;

  /// Sets the execution timeout value (in minutes) for a project. All test runs in this project use the specified execution timeout value unless overridden when scheduling a run.
  late final Output<int?> defaultJobTimeoutMinutes;

  /// The name of the project
  late final Output<String> name;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  /// A map of tags to assign to the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final Output<Map<String, String>?> tags;

  /// A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  late final Output<Map<String, String>> tagsAll;

  Project4(
    String name, {
    ProjectArgs4? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:devicefarm/project:Project',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.arn = registerOutput<String>('arn');
    this.defaultJobTimeoutMinutes =
        registerOutput<int?>('defaultJobTimeoutMinutes');
    this.name = registerOutput<String>('name');
    this.region = registerOutput<String>('region');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.tagsAll = registerOutput<Map<String, String>>('tagsAll');
  }
}
