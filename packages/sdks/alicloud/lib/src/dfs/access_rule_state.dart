// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering AccessRule resources.
class AccessRuleState {
  /// Permission group resource ID. You must specify the permission group ID when creating a permission rule.
  final pulumi.Input<String>? accessGroupId;
  /// The unique identity of the permission rule, which is used to retrieve the permission rule for a specific day in the permission group.
  final pulumi.Input<String>? accessRuleId;
  /// Permission rule resource creation time.
  final pulumi.Input<String>? createTime;
  /// Permission rule description.  No more than 32 characters in length.
  final pulumi.Input<String>? description;
  /// The IP address or network segment of the authorized object.
  final pulumi.Input<String>? networkSegment;
  /// Permission rule priority. When the same authorization object matches multiple rules, the high-priority rule takes effect. Value range: 1~100,1 is the highest priority.
  final pulumi.Input<int>? priority;
  /// The read and write permissions of the authorized object on the file system. Value: RDWR: readable and writable RDONLY: Read only.
  final pulumi.Input<String>? rwAccessType;

  /// Creates a new [AccessRuleState].
  /// [accessGroupId] Permission group resource ID. You must specify the permission group ID when creating a permission rule.
  /// [accessRuleId] The unique identity of the permission rule, which is used to retrieve the permission rule for a specific day in the permission group.
  /// [createTime] Permission rule resource creation time.
  /// [description] Permission rule description.  No more than 32 characters in length.
  /// [networkSegment] The IP address or network segment of the authorized object.
  /// [priority] Permission rule priority. When the same authorization object matches multiple rules, the high-priority rule takes effect. Value range: 1~100,1 is the highest priority.
  /// [rwAccessType] The read and write permissions of the authorized object on the file system. Value: RDWR: readable and writable RDONLY: Read only.
  AccessRuleState({
    this.accessGroupId,
    this.accessRuleId,
    this.createTime,
    this.description,
    this.networkSegment,
    this.priority,
    this.rwAccessType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accessGroupId': ?accessGroupId,
      'accessRuleId': ?accessRuleId,
      'createTime': ?createTime,
      'description': ?description,
      'networkSegment': ?networkSegment,
      'priority': ?priority,
      'rwAccessType': ?rwAccessType,
    };
  }

  factory AccessRuleState.fromMap(Map<String, dynamic> map) {
    return AccessRuleState(
      accessGroupId: (() { final guardedValue = map['accessGroupId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      accessRuleId: (() { final guardedValue = map['accessRuleId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      createTime: (() { final guardedValue = map['createTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      networkSegment: (() { final guardedValue = map['networkSegment']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      priority: (() { final guardedValue = map['priority']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      rwAccessType: (() { final guardedValue = map['rwAccessType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

