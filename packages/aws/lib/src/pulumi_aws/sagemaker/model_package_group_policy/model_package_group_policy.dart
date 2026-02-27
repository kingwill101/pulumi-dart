import 'package:pulumi/pulumi.dart';
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
class ModelPackageGroupPolicy extends CustomResource {
  /// The name of the model package group.
  late final Output<String> modelPackageGroupName;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;
  late final Output<String> resourcePolicy;

  ModelPackageGroupPolicy(
    String name, {
    ModelPackageGroupPolicyArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:sagemaker/modelPackageGroupPolicy:ModelPackageGroupPolicy',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.modelPackageGroupName =
        registerOutput<String>('modelPackageGroupName');
    this.region = registerOutput<String>('region');
    this.resourcePolicy = registerOutput<String>('resourcePolicy');
  }
}
