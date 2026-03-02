// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering ModelPackageGroup resources.
class ModelPackageGroupState {
  /// The Amazon Resource Name (ARN) assigned by AWS to this Model Package Group.
  final pulumi.Input<String>? arn;
  /// A description for the model group.
  final pulumi.Input<String>? modelPackageGroupDescription;
  /// The name of the model group.
  final pulumi.Input<String>? modelPackageGroupName;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// A map of tags to assign to the resource. .If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;
  /// A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  final pulumi.Input<Map<String, String>>? tagsAll;

  /// Creates a new [ModelPackageGroupState].
  /// [arn] The Amazon Resource Name (ARN) assigned by AWS to this Model Package Group.
  /// [modelPackageGroupDescription] A description for the model group.
  /// [modelPackageGroupName] The name of the model group.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [tags] A map of tags to assign to the resource. .If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [tagsAll] A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  ModelPackageGroupState({
    this.arn,
    this.modelPackageGroupDescription,
    this.modelPackageGroupName,
    this.region,
    this.tags,
    this.tagsAll,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'arn': ?arn,
      'modelPackageGroupDescription': ?modelPackageGroupDescription,
      'modelPackageGroupName': ?modelPackageGroupName,
      'region': ?region,
      'tags': ?tags,
      'tagsAll': ?tagsAll,
    };
  }

  factory ModelPackageGroupState.fromMap(Map<String, dynamic> map) {
    return ModelPackageGroupState(
      arn: map['arn'] == null ? null : (map['arn'] as String).input(),
      modelPackageGroupDescription: map['modelPackageGroupDescription'] == null ? null : (map['modelPackageGroupDescription'] as String).input(),
      modelPackageGroupName: map['modelPackageGroupName'] == null ? null : (map['modelPackageGroupName'] as String).input(),
      region: map['region'] == null ? null : (map['region'] as String).input(),
      tags: map['tags'] == null ? null : ((map['tags'] as Map).cast<String, String>()).input(),
      tagsAll: map['tagsAll'] == null ? null : ((map['tagsAll'] as Map).cast<String, String>()).input(),
    );
  }
}

