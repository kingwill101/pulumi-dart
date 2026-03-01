// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_esa_custom_scene_policy_custom_scene_policy_args_doc}
/// The set of arguments for CustomScenePolicy.
/// {@endtemplate}
/// {@macro pulumi_esa_custom_scene_policy_custom_scene_policy_args_doc}
class CustomScenePolicyArgs {
  /// The time when the policy takes effect.
  /// The time follows the ISO 8601 standard in the yyyy-MM-ddTHH:mm:ssZ format. The time is displayed in UTC.
  final pulumi.Input<String> createTime;
  /// The policy name.
  final pulumi.Input<String> customScenePolicyName;
  /// The time when the policy expires.
  /// The time follows the ISO 8601 standard in the yyyy-MM-ddTHH:mm:ssZ format. The time is displayed in UTC.
  final pulumi.Input<String> endTime;
  /// The IDs of websites associated.
  final pulumi.Input<String> siteIds;
  /// Policy effective status. Valid values: `Disabled`, `Running`.
  final pulumi.Input<String>? status;
  /// The name of the policy template. Valid value:
  final pulumi.Input<String> template;

  /// Creates a new [CustomScenePolicyArgs].
  /// [createTime] The time when the policy takes effect.
  /// [customScenePolicyName] The policy name.
  /// [endTime] The time when the policy expires.
  /// [siteIds] The IDs of websites associated.
  /// [status] Policy effective status. Valid values: `Disabled`, `Running`.
  /// [template] The name of the policy template. Valid value:
  CustomScenePolicyArgs({
    required pulumi.Output<String> createTime,
    required pulumi.Output<String> customScenePolicyName,
    required pulumi.Output<String> endTime,
    required pulumi.Output<String> siteIds,
    pulumi.Output<String>? status,
    required pulumi.Output<String> template,
  }) :
      createTime = pulumi.Input.asInput<String>(createTime),
      customScenePolicyName = pulumi.Input.asInput<String>(customScenePolicyName),
      endTime = pulumi.Input.asInput<String>(endTime),
      siteIds = pulumi.Input.asInput<String>(siteIds),
      status = pulumi.Input.asOptionalInput<String>(status),
      template = pulumi.Input.asInput<String>(template);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'createTime': createTime,
      'customScenePolicyName': customScenePolicyName,
      'endTime': endTime,
      'siteIds': siteIds,
      'status': ?status,
      'template': template,
    };
  }

  factory CustomScenePolicyArgs.fromMap(Map<String, dynamic> map) {
    return CustomScenePolicyArgs(
      createTime: pulumi.Output.create<String>(map['createTime'] as String),
      customScenePolicyName: pulumi.Output.create<String>(map['customScenePolicyName'] as String),
      endTime: pulumi.Output.create<String>(map['endTime'] as String),
      siteIds: pulumi.Output.create<String>(map['siteIds'] as String),
      status: map['status'] == null ? null : pulumi.Output.create<String>(map['status'] as String),
      template: pulumi.Output.create<String>(map['template'] as String),
    );
  }
}

