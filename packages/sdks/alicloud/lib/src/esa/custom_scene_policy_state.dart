// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering CustomScenePolicy resources.
class CustomScenePolicyState {
  /// The time when the policy takes effect.
  /// The time follows the ISO 8601 standard in the yyyy-MM-ddTHH:mm:ssZ format. The time is displayed in UTC.
  final pulumi.Input<String>? createTime;
  /// The policy name.
  final pulumi.Input<String>? customScenePolicyName;
  /// The time when the policy expires.
  /// The time follows the ISO 8601 standard in the yyyy-MM-ddTHH:mm:ssZ format. The time is displayed in UTC.
  final pulumi.Input<String>? endTime;
  /// The IDs of websites associated.
  final pulumi.Input<String>? siteIds;
  /// Policy effective status. Valid values: `Disabled`, `Running`.
  final pulumi.Input<String>? status;
  /// The name of the policy template. Valid value:
  final pulumi.Input<String>? template;

  /// Creates a new [CustomScenePolicyState].
  /// [createTime] The time when the policy takes effect.
  /// [customScenePolicyName] The policy name.
  /// [endTime] The time when the policy expires.
  /// [siteIds] The IDs of websites associated.
  /// [status] Policy effective status. Valid values: `Disabled`, `Running`.
  /// [template] The name of the policy template. Valid value:
  CustomScenePolicyState({
    pulumi.Output<String>? createTime,
    pulumi.Output<String>? customScenePolicyName,
    pulumi.Output<String>? endTime,
    pulumi.Output<String>? siteIds,
    pulumi.Output<String>? status,
    pulumi.Output<String>? template,
  }) :
      createTime = pulumi.Input.asOptionalInput<String>(createTime),
      customScenePolicyName = pulumi.Input.asOptionalInput<String>(customScenePolicyName),
      endTime = pulumi.Input.asOptionalInput<String>(endTime),
      siteIds = pulumi.Input.asOptionalInput<String>(siteIds),
      status = pulumi.Input.asOptionalInput<String>(status),
      template = pulumi.Input.asOptionalInput<String>(template);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'createTime': ?createTime,
      'customScenePolicyName': ?customScenePolicyName,
      'endTime': ?endTime,
      'siteIds': ?siteIds,
      'status': ?status,
      'template': ?template,
    };
  }

  factory CustomScenePolicyState.fromMap(Map<String, dynamic> map) {
    return CustomScenePolicyState(
      createTime: map['createTime'] == null ? null : pulumi.Output.create<String>(map['createTime'] as String),
      customScenePolicyName: map['customScenePolicyName'] == null ? null : pulumi.Output.create<String>(map['customScenePolicyName'] as String),
      endTime: map['endTime'] == null ? null : pulumi.Output.create<String>(map['endTime'] as String),
      siteIds: map['siteIds'] == null ? null : pulumi.Output.create<String>(map['siteIds'] as String),
      status: map['status'] == null ? null : pulumi.Output.create<String>(map['status'] as String),
      template: map['template'] == null ? null : pulumi.Output.create<String>(map['template'] as String),
    );
  }
}

