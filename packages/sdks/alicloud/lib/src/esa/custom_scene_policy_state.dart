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
    this.createTime,
    this.customScenePolicyName,
    this.endTime,
    this.siteIds,
    this.status,
    this.template,
  });

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
      createTime: (() { final guardedValue = map['createTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      customScenePolicyName: (() { final guardedValue = map['customScenePolicyName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      endTime: (() { final guardedValue = map['endTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      siteIds: (() { final guardedValue = map['siteIds']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      status: (() { final guardedValue = map['status']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      template: (() { final guardedValue = map['template']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

