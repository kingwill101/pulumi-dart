import 'package:pulumi/pulumi.dart';
import '../test_grid_project_vpc_config/test_grid_project_vpc_config.dart';
import 'test_grid_project_args.dart';

/// Provides a resource to manage AWS Device Farm Test Grid Projects.
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
/// - `arn` (String) Amazon Resource Name (ARN) of the Device Farm test grid project.
///
///
/// Using `pulumi import`, import DeviceFarm Test Grid Projects using their ARN. For example:
///
/// ```sh
/// $ pulumi import aws:devicefarm/testGridProject:TestGridProject example arn:aws:devicefarm:us-west-2:123456789012:testgrid-project:4fa784c7-ccb4-4dbf-ba4f-02198320daa1
/// ```
class TestGridProject extends CustomResource {
  /// The Amazon Resource Name of this Test Grid Project.
  late final Output<String> arn;

  /// Human-readable description of the project.
  late final Output<String?> description;

  /// The name of the Selenium testing project.
  late final Output<String> name;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  /// A map of tags to assign to the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final Output<Map<String, String>?> tags;

  /// A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  late final Output<Map<String, String>> tagsAll;

  /// The VPC security groups and subnets that are attached to a project. See VPC Config below.
  late final Output<TestGridProjectVpcConfig?> vpcConfig;

  TestGridProject(
    String name, {
    TestGridProjectArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:devicefarm/testGridProject:TestGridProject',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.arn = registerOutput<String>('arn');
    this.description = registerOutput<String?>('description');
    this.name = registerOutput<String>('name');
    this.region = registerOutput<String>('region');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.tagsAll = registerOutput<Map<String, String>>('tagsAll');
    this.vpcConfig = registerOutput<TestGridProjectVpcConfig?>('vpcConfig');
  }
}
