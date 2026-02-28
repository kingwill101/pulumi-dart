// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'selection_condition.dart';
import 'selection_selection_tag.dart';

/// {@template pulumi_backup_selection_selection_args_doc}
/// The set of arguments for Selection.
/// {@endtemplate}
/// {@macro pulumi_backup_selection_selection_args_doc}
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

  /// Creates a new [SelectionArgs].
  /// [conditions] Condition-based filters used to specify sets of resources for a backup plan. See below for details.
  /// [iamRoleArn] The ARN of the IAM role that AWS Backup uses to authenticate when restoring and backing up the target resource. See the [AWS Backup Developer Guide](https://docs.aws.amazon.com/aws-backup/latest/devguide/access-control.html#managed-policies) for additional information about using AWS managed policies or creating custom policies attached to the IAM role.
  /// [name] The display name of a resource selection document.
  /// [notResources] An array of strings that either contain Amazon Resource Names (ARNs) or match patterns of resources to exclude from a backup plan.
  /// [planId] The backup plan ID to be associated with the selection of resources.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [resources] An array of strings that either contain Amazon Resource Names (ARNs) or match patterns of resources to assign to a backup plan.
  /// [selectionTags] Tag-based conditions used to specify a set of resources to assign to a backup plan. See below for details.
  SelectionArgs({
    List<SelectionCondition>? conditions,
    required String iamRoleArn,
    String? name,
    List<String>? notResources,
    required String planId,
    String? region,
    List<String>? resources,
    List<SelectionSelectionTag>? selectionTags,
  })  : conditions =
            pulumi.Input.asOptionalInput<List<SelectionCondition>>(conditions),
        iamRoleArn = pulumi.Input.asInput<String>(iamRoleArn),
        name = pulumi.Input.asOptionalInput<String>(name),
        notResources = pulumi.Input.asOptionalInput<List<String>>(notResources),
        planId = pulumi.Input.asInput<String>(planId),
        region = pulumi.Input.asOptionalInput<String>(region),
        resources = pulumi.Input.asOptionalInput<List<String>>(resources),
        selectionTags =
            pulumi.Input.asOptionalInput<List<SelectionSelectionTag>>(
                selectionTags);

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
      conditions: map['conditions'] == null
          ? null
          : pulumi.Input.decodeList<SelectionCondition>(
              map['conditions'],
              (value) => SelectionCondition.fromMap(
                  (value as Map).cast<String, dynamic>())),
      iamRoleArn: map['iamRoleArn'] as String,
      name: map['name'] == null ? null : map['name'] as String,
      notResources: map['notResources'] == null
          ? null
          : (map['notResources'] as List).cast<String>(),
      planId: map['planId'] as String,
      region: map['region'] == null ? null : map['region'] as String,
      resources: map['resources'] == null
          ? null
          : (map['resources'] as List).cast<String>(),
      selectionTags: map['selectionTags'] == null
          ? null
          : pulumi.Input.decodeList<SelectionSelectionTag>(
              map['selectionTags'],
              (value) => SelectionSelectionTag.fromMap(
                  (value as Map).cast<String, dynamic>())),
    );
  }
}
