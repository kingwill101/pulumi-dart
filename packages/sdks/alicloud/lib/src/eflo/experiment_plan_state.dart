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
    this.createTime,
    this.externalParams,
    this.planName,
    this.resourceGroupId,
    this.resourceId,
    this.tags,
    this.templateId,
  });

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
      createTime: (() { final guardedValue = map['createTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      externalParams: (() { final guardedValue = map['externalParams']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      planName: (() { final guardedValue = map['planName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      resourceGroupId: (() { final guardedValue = map['resourceGroupId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      resourceId: (() { final guardedValue = map['resourceId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      templateId: (() { final guardedValue = map['templateId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
    );
  }
}

