import 'package:pulumi/pulumi.dart' as pulumi;
import 'model_package_group_policy_args.dart';

/// Provides a SageMaker AI Model Package Group Policy resource.
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
/// $ pulumi import aws:sagemaker/modelPackageGroupPolicy:ModelPackageGroupPolicy example example
/// ```
class ModelPackageGroupPolicy extends pulumi.CustomResource {
  /// The name of the model package group.
  late final pulumi.Output<String> modelPackageGroupName;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;
  late final pulumi.Output<String> resourcePolicy;

  ModelPackageGroupPolicy(
    String name, {
    ModelPackageGroupPolicyArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:sagemaker/modelPackageGroupPolicy:ModelPackageGroupPolicy',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.modelPackageGroupName =
        registerOutput<String>('modelPackageGroupName');
    this.region = registerOutput<String>('region');
    this.resourcePolicy = registerOutput<String>('resourcePolicy');
  }
}
