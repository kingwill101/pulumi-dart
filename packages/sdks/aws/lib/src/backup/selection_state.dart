// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'selection_condition.dart';
import 'selection_selection_tag.dart';

/// Input properties used for looking up and filtering Selection resources.
class SelectionState {
  /// Condition-based filters used to specify sets of resources for a backup plan. See below for details.
  final pulumi.Input<List<SelectionCondition>>? conditions;
  /// The ARN of the IAM role that AWS Backup uses to authenticate when restoring and backing up the target resource. See the [AWS Backup Developer Guide](https://docs.aws.amazon.com/aws-backup/latest/devguide/access-control.html#managed-policies) for additional information about using AWS managed policies or creating custom policies attached to the IAM role.
  final pulumi.Input<String>? iamRoleArn;
  /// The display name of a resource selection document.
  final pulumi.Input<String>? name;
  /// An array of strings that either contain Amazon Resource Names (ARNs) or match patterns of resources to exclude from a backup plan.
  final pulumi.Input<List<String>>? notResources;
  /// The backup plan ID to be associated with the selection of resources.
  final pulumi.Input<String>? planId;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// An array of strings that either contain Amazon Resource Names (ARNs) or match patterns of resources to assign to a backup plan.
  final pulumi.Input<List<String>>? resources;
  /// Tag-based conditions used to specify a set of resources to assign to a backup plan. See below for details.
  final pulumi.Input<List<SelectionSelectionTag>>? selectionTags;

  /// Creates a new [SelectionState].
  /// [conditions] Condition-based filters used to specify sets of resources for a backup plan. See below for details.
  /// [iamRoleArn] The ARN of the IAM role that AWS Backup uses to authenticate when restoring and backing up the target resource. See the [AWS Backup Developer Guide](https://docs.aws.amazon.com/aws-backup/latest/devguide/access-control.html#managed-policies) for additional information about using AWS managed policies or creating custom policies attached to the IAM role.
  /// [name] The display name of a resource selection document.
  /// [notResources] An array of strings that either contain Amazon Resource Names (ARNs) or match patterns of resources to exclude from a backup plan.
  /// [planId] The backup plan ID to be associated with the selection of resources.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [resources] An array of strings that either contain Amazon Resource Names (ARNs) or match patterns of resources to assign to a backup plan.
  /// [selectionTags] Tag-based conditions used to specify a set of resources to assign to a backup plan. See below for details.
  SelectionState({
    this.conditions,
    this.iamRoleArn,
    this.name,
    this.notResources,
    this.planId,
    this.region,
    this.resources,
    this.selectionTags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'conditions': ?pulumi.Input.mapOptionalInputValue<List<SelectionCondition>, List<Map<String, dynamic>>>(conditions, (value) => pulumi.Input.encodeList<SelectionCondition, Map<String, dynamic>>(value, (value) => value.toMap())),
      'iamRoleArn': ?iamRoleArn,
      'name': ?name,
      'notResources': ?notResources,
      'planId': ?planId,
      'region': ?region,
      'resources': ?resources,
      'selectionTags': ?pulumi.Input.mapOptionalInputValue<List<SelectionSelectionTag>, List<Map<String, dynamic>>>(selectionTags, (value) => pulumi.Input.encodeList<SelectionSelectionTag, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory SelectionState.fromMap(Map<String, dynamic> map) {
    return SelectionState(
      conditions: map['conditions'] == null ? null : ((pulumi.Input.decodeList<SelectionCondition>(map['conditions']!, (value) => SelectionCondition.fromMap((value as Map).cast<String, dynamic>()))).input()).input(),
      iamRoleArn: map['iamRoleArn'] == null ? null : ((map['iamRoleArn'] as String).input()).input(),
      name: map['name'] == null ? null : ((map['name'] as String).input()).input(),
      notResources: map['notResources'] == null ? null : (((map['notResources'] as List).cast<String>()).input()).input(),
      planId: map['planId'] == null ? null : ((map['planId'] as String).input()).input(),
      region: map['region'] == null ? null : ((map['region'] as String).input()).input(),
      resources: map['resources'] == null ? null : (((map['resources'] as List).cast<String>()).input()).input(),
      selectionTags: map['selectionTags'] == null ? null : ((pulumi.Input.decodeList<SelectionSelectionTag>(map['selectionTags']!, (value) => SelectionSelectionTag.fromMap((value as Map).cast<String, dynamic>()))).input()).input(),
    );
  }
}

