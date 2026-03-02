// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_sagemaker_model_package_group_policy_model_package_group_policy_args_doc}
/// The set of arguments for ModelPackageGroupPolicy.
/// {@endtemplate}
/// {@macro pulumi_sagemaker_model_package_group_policy_model_package_group_policy_args_doc}
class ModelPackageGroupPolicyArgs {
  /// The name of the model package group.
  final pulumi.Input<String> modelPackageGroupName;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  final pulumi.Input<String> resourcePolicy;

  /// Creates a new [ModelPackageGroupPolicyArgs].
  /// [modelPackageGroupName] The name of the model package group.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [resourcePolicy] Required.
  ModelPackageGroupPolicyArgs({
    required this.modelPackageGroupName,
    this.region,
    required this.resourcePolicy,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'modelPackageGroupName': modelPackageGroupName,
      'region': ?region,
      'resourcePolicy': resourcePolicy,
    };
  }

  factory ModelPackageGroupPolicyArgs.fromMap(Map<String, dynamic> map) {
    return ModelPackageGroupPolicyArgs(
      modelPackageGroupName: (map['modelPackageGroupName'] as String).input(),
      region: map['region'] == null ? null : (map['region'] as String).input(),
      resourcePolicy: (map['resourcePolicy'] as String).input(),
    );
  }
}

