// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_sagemaker_model_package_group_model_package_group_args_doc}
/// The set of arguments for ModelPackageGroup.
/// {@endtemplate}
/// {@macro pulumi_sagemaker_model_package_group_model_package_group_args_doc}
class ModelPackageGroupArgs {
  /// A description for the model group.
  final pulumi.Input<String>? modelPackageGroupDescription;
  /// The name of the model group.
  final pulumi.Input<String> modelPackageGroupName;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// A map of tags to assign to the resource. .If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [ModelPackageGroupArgs].
  /// [modelPackageGroupDescription] A description for the model group.
  /// [modelPackageGroupName] The name of the model group.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [tags] A map of tags to assign to the resource. .If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  ModelPackageGroupArgs({
    this.modelPackageGroupDescription,
    required this.modelPackageGroupName,
    this.region,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'modelPackageGroupDescription': ?modelPackageGroupDescription,
      'modelPackageGroupName': modelPackageGroupName,
      'region': ?region,
      'tags': ?tags,
    };
  }

  factory ModelPackageGroupArgs.fromMap(Map<String, dynamic> map) {
    return ModelPackageGroupArgs(
      modelPackageGroupDescription: (() { final guardedValue = map['modelPackageGroupDescription']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      modelPackageGroupName: pulumi.Input.fromValue(map['modelPackageGroupName'] as String),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
    );
  }
}

