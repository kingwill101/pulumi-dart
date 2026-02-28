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
    String? modelPackageGroupDescription,
    required String modelPackageGroupName,
    String? region,
    Map<String, String>? tags,
  })  : modelPackageGroupDescription =
            pulumi.Input.asOptionalInput<String>(modelPackageGroupDescription),
        modelPackageGroupName =
            pulumi.Input.asInput<String>(modelPackageGroupName),
        region = pulumi.Input.asOptionalInput<String>(region),
        tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags);

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final modelPackageGroupDescriptionValue = modelPackageGroupDescription;
    if (modelPackageGroupDescriptionValue != null) {
      map['modelPackageGroupDescription'] = modelPackageGroupDescriptionValue;
    }
    map['modelPackageGroupName'] = modelPackageGroupName;
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    final tagsValue = tags;
    if (tagsValue != null) {
      map['tags'] = tagsValue;
    }
    return map;
  }

  factory ModelPackageGroupArgs.fromMap(Map<String, dynamic> map) {
    return ModelPackageGroupArgs(
      modelPackageGroupDescription: map['modelPackageGroupDescription'] == null
          ? null
          : map['modelPackageGroupDescription'] as String,
      modelPackageGroupName: map['modelPackageGroupName'] as String,
      region: map['region'] == null ? null : map['region'] as String,
      tags: map['tags'] == null
          ? null
          : (map['tags'] as Map).cast<String, String>(),
    );
  }
}
