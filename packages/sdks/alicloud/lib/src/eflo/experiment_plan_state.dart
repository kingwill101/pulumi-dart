// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering ExperimentPlan resources.
class ExperimentPlanState {
  /// The creation time of the resource.
  final pulumi.Input<String>? createTime;
  /// Additional operating parameters. You can include information about the specified node.
  final pulumi.Input<Map<String, String>>? externalParams;
  /// Indicates the name of the experiment plan, which is used to distinguish different experiment plans.
  final pulumi.Input<String>? planName;
  /// The ID of the resource group.
  final pulumi.Input<String>? resourceGroupId;
  /// The ID of the resource.
  final pulumi.Input<int>? resourceId;
  /// The tag of the resource.
  final pulumi.Input<Map<String, String>>? tags;
  /// The ID of the template.
  final pulumi.Input<int>? templateId;

  /// Creates a new [ExperimentPlanState].
  /// [createTime] The creation time of the resource.
  /// [externalParams] Additional operating parameters. You can include information about the specified node.
  /// [planName] Indicates the name of the experiment plan, which is used to distinguish different experiment plans.
  /// [resourceGroupId] The ID of the resource group.
  /// [resourceId] The ID of the resource.
  /// [tags] The tag of the resource.
  /// [templateId] The ID of the template.
  ExperimentPlanState({
    pulumi.Output<String>? createTime,
    pulumi.Output<Map<String, String>>? externalParams,
    pulumi.Output<String>? planName,
    pulumi.Output<String>? resourceGroupId,
    pulumi.Output<int>? resourceId,
    pulumi.Output<Map<String, String>>? tags,
    pulumi.Output<int>? templateId,
  }) :
      createTime = pulumi.Input.asOptionalInput<String>(createTime),
      externalParams = pulumi.Input.asOptionalInput<Map<String, String>>(externalParams),
      planName = pulumi.Input.asOptionalInput<String>(planName),
      resourceGroupId = pulumi.Input.asOptionalInput<String>(resourceGroupId),
      resourceId = pulumi.Input.asOptionalInput<int>(resourceId),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      templateId = pulumi.Input.asOptionalInput<int>(templateId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'createTime': ?createTime,
      'externalParams': ?externalParams,
      'planName': ?planName,
      'resourceGroupId': ?resourceGroupId,
      'resourceId': ?resourceId,
      'tags': ?tags,
      'templateId': ?templateId,
    };
  }

  factory ExperimentPlanState.fromMap(Map<String, dynamic> map) {
    return ExperimentPlanState(
      createTime: map['createTime'] == null ? null : pulumi.Output.create<String>(map['createTime'] as String),
      externalParams: map['externalParams'] == null ? null : pulumi.Output.create<Map<String, String>>((map['externalParams'] as Map).cast<String, String>()),
      planName: map['planName'] == null ? null : pulumi.Output.create<String>(map['planName'] as String),
      resourceGroupId: map['resourceGroupId'] == null ? null : pulumi.Output.create<String>(map['resourceGroupId'] as String),
      resourceId: map['resourceId'] == null ? null : pulumi.Output.create<int>(map['resourceId'] as int),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
      templateId: map['templateId'] == null ? null : pulumi.Output.create<int>(map['templateId'] as int),
    );
  }
}

