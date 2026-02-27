import 'package:pulumi/pulumi.dart' as pulumi;
import 'model_package_group_args.dart';

/// Provides a SageMaker AI Model Package Group resource.
///
/// ## Example Usage
///
/// ### Basic usage
///
///
///
/// ## Import
///
/// Using `pulumi import`, import SageMaker AI Model Package Groups using the `name`. For example:
///
/// ```sh
/// $ pulumi import aws:sagemaker/modelPackageGroup:ModelPackageGroup test_model_package_group my-code-repo
/// ```
class ModelPackageGroup extends pulumi.CustomResource {
  /// The Amazon Resource Name (ARN) assigned by AWS to this Model Package Group.
  late final pulumi.Output<String> arn;

  /// A description for the model group.
  late final pulumi.Output<String?> modelPackageGroupDescription;

  /// The name of the model group.
  late final pulumi.Output<String> modelPackageGroupName;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;

  /// A map of tags to assign to the resource. .If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final pulumi.Output<Map<String, String>?> tags;

  /// A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  late final pulumi.Output<Map<String, String>> tagsAll;

  ModelPackageGroup(
    String name, {
    ModelPackageGroupArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:sagemaker/modelPackageGroup:ModelPackageGroup',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.arn = registerOutput<String>('arn');
    this.modelPackageGroupDescription =
        registerOutput<String?>('modelPackageGroupDescription');
    this.modelPackageGroupName =
        registerOutput<String>('modelPackageGroupName');
    this.region = registerOutput<String>('region');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.tagsAll = registerOutput<Map<String, String>>('tagsAll');
  }
}
