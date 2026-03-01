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
    pulumi.Output<String>? accessGroupId,
    pulumi.Output<String>? accessRuleId,
    pulumi.Output<String>? createTime,
    pulumi.Output<String>? description,
    pulumi.Output<String>? networkSegment,
    pulumi.Output<int>? priority,
    pulumi.Output<String>? rwAccessType,
  }) :
      accessGroupId = pulumi.Input.asOptionalInput<String>(accessGroupId),
      accessRuleId = pulumi.Input.asOptionalInput<String>(accessRuleId),
      createTime = pulumi.Input.asOptionalInput<String>(createTime),
      description = pulumi.Input.asOptionalInput<String>(description),
      networkSegment = pulumi.Input.asOptionalInput<String>(networkSegment),
      priority = pulumi.Input.asOptionalInput<int>(priority),
      rwAccessType = pulumi.Input.asOptionalInput<String>(rwAccessType);

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
      accessGroupId: map['accessGroupId'] == null ? null : pulumi.Output.create<String>(map['accessGroupId'] as String),
      accessRuleId: map['accessRuleId'] == null ? null : pulumi.Output.create<String>(map['accessRuleId'] as String),
      createTime: map['createTime'] == null ? null : pulumi.Output.create<String>(map['createTime'] as String),
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      networkSegment: map['networkSegment'] == null ? null : pulumi.Output.create<String>(map['networkSegment'] as String),
      priority: map['priority'] == null ? null : pulumi.Output.create<int>(map['priority'] as int),
      rwAccessType: map['rwAccessType'] == null ? null : pulumi.Output.create<String>(map['rwAccessType'] as String),
    );
  }
}

