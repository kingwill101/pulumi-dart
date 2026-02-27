// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../selection_condition/selection_condition.dart';
import '../selection_selection_tag/selection_selection_tag.dart';

/// The set of arguments for Selection.
class SelectionArgs {
  /// Condition-based filters used to specify sets of resources for a backup plan. See below for details.
  final pulumi.Input<List<SelectionCondition>>? conditions;

  /// The ARN of the IAM role that AWS Backup uses to authenticate when restoring and backing up the target resource. See the [AWS Backup Developer Guide](https://docs.aws.amazon.com/aws-backup/latest/devguide/access-control.html#managed-policies) for additional information about using AWS managed policies or creating custom policies attached to the IAM role.
  final pulumi.Input<String> iamRoleArn;

  /// The display name of a resource selection document.
  final pulumi.Input<String>? name;

  /// An array of strings that either contain Amazon Resource Names (ARNs) or match patterns of resources to exclude from a backup plan.
  final pulumi.Input<List<String>>? notResources;

  /// The backup plan ID to be associated with the selection of resources.
  final pulumi.Input<String> planId;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// An array of strings that either contain Amazon Resource Names (ARNs) or match patterns of resources to assign to a backup plan.
  final pulumi.Input<List<String>>? resources;

  /// Tag-based conditions used to specify a set of resources to assign to a backup plan. See below for details.
  final pulumi.Input<List<SelectionSelectionTag>>? selectionTags;

  SelectionArgs({
    this.conditions,
    required this.iamRoleArn,
    this.name,
    this.notResources,
    required this.planId,
    this.region,
    this.resources,
    this.selectionTags,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final conditionsValue = conditions;
    if (conditionsValue != null) {
      map['conditions'] = pulumi.Input.mapOptionalInputValue<
              List<SelectionCondition>, List<Map<String, dynamic>>>(
          conditionsValue,
          (value) =>
              pulumi.Input.encodeList<SelectionCondition, Map<String, dynamic>>(
                  value, (value) => value.toMap()));
    }
    map['iamRoleArn'] = iamRoleArn;
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    final notResourcesValue = notResources;
    if (notResourcesValue != null) {
      map['notResources'] = notResourcesValue;
    }
    map['planId'] = planId;
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    final resourcesValue = resources;
    if (resourcesValue != null) {
      map['resources'] = resourcesValue;
    }
    final selectionTagsValue = selectionTags;
    if (selectionTagsValue != null) {
      map['selectionTags'] = pulumi.Input.mapOptionalInputValue<
              List<SelectionSelectionTag>, List<Map<String, dynamic>>>(
          selectionTagsValue,
          (value) => pulumi.Input.encodeList<SelectionSelectionTag,
              Map<String, dynamic>>(value, (value) => value.toMap()));
    }
    return map;
  }

  factory SelectionArgs.fromMap(Map<String, dynamic> map) {
    return SelectionArgs(
      conditions: pulumi.Input.asOptionalInput<List<SelectionCondition>>(
          map['conditions']),
      iamRoleArn: pulumi.Input.asInput<String>(map['iamRoleArn']),
      name: pulumi.Input.asOptionalInput<String>(map['name']),
      notResources:
          pulumi.Input.asOptionalInput<List<String>>(map['notResources']),
      planId: pulumi.Input.asInput<String>(map['planId']),
      region: pulumi.Input.asOptionalInput<String>(map['region']),
      resources: pulumi.Input.asOptionalInput<List<String>>(map['resources']),
      selectionTags: pulumi.Input.asOptionalInput<List<SelectionSelectionTag>>(
          map['selectionTags']),
    );
  }
}
