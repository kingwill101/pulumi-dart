// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_eflo_experiment_plan_experiment_plan_args_doc}
/// The set of arguments for ExperimentPlan.
/// {@endtemplate}
/// {@macro pulumi_eflo_experiment_plan_experiment_plan_args_doc}
class ExperimentPlanArgs {
  /// Additional operating parameters. You can include information about the specified node.
  final pulumi.Input<Map<String, String>>? externalParams;
  /// Indicates the name of the experiment plan, which is used to distinguish different experiment plans.
  final pulumi.Input<String>? planName;
  /// The ID of the resource group.
  final pulumi.Input<String>? resourceGroupId;
  /// The ID of the resource.
  final pulumi.Input<int> resourceId;
  /// The tag of the resource.
  final pulumi.Input<Map<String, String>>? tags;
  /// The ID of the template.
  final pulumi.Input<int> templateId;

  /// Creates a new [ExperimentPlanArgs].
  /// [externalParams] Additional operating parameters. You can include information about the specified node.
  /// [planName] Indicates the name of the experiment plan, which is used to distinguish different experiment plans.
  /// [resourceGroupId] The ID of the resource group.
  /// [resourceId] The ID of the resource.
  /// [tags] The tag of the resource.
  /// [templateId] The ID of the template.
  ExperimentPlanArgs({
    this.externalParams,
    this.planName,
    this.resourceGroupId,
    required this.resourceId,
    this.tags,
    required this.templateId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'externalParams': ?externalParams,
      'planName': ?planName,
      'resourceGroupId': ?resourceGroupId,
      'resourceId': resourceId,
      'tags': ?tags,
      'templateId': templateId,
    };
  }

  factory ExperimentPlanArgs.fromMap(Map<String, dynamic> map) {
    return ExperimentPlanArgs(
      externalParams: map['externalParams'] == null ? null : ((map['externalParams']! as Map).cast<String, String>()).input(),
      planName: map['planName'] == null ? null : (map['planName']! as String).input(),
      resourceGroupId: map['resourceGroupId'] == null ? null : (map['resourceGroupId']! as String).input(),
      resourceId: (map['resourceId'] as int).input(),
      tags: map['tags'] == null ? null : ((map['tags']! as Map).cast<String, String>()).input(),
      templateId: (map['templateId'] as int).input(),
    );
  }
}

