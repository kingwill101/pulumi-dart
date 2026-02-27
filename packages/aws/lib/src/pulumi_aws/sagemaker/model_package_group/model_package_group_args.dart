// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The set of arguments for ModelPackageGroup.
class ModelPackageGroupArgs {
  /// A description for the model group.
  final pulumi.Input<String>? modelPackageGroupDescription;

  /// The name of the model group.
  final pulumi.Input<String> modelPackageGroupName;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// A map of tags to assign to the resource. .If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;

  ModelPackageGroupArgs({
    this.modelPackageGroupDescription,
    required this.modelPackageGroupName,
    this.region,
    this.tags,
  });

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
      modelPackageGroupDescription: pulumi.Input.asOptionalInput<String>(
          map['modelPackageGroupDescription']),
      modelPackageGroupName:
          pulumi.Input.asInput<String>(map['modelPackageGroupName']),
      region: pulumi.Input.asOptionalInput<String>(map['region']),
      tags: pulumi.Input.asOptionalInput<Map<String, String>>(map['tags']),
    );
  }
}
