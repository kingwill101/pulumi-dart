// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering PublishTask resources.
class PublishTaskState {
  /// The business space key. If you do not set it, the default business space is accessed. The key value is obtained on the business management page of the primary account.
  final pulumi.Input<String>? agentKey;
  /// The type of the publishing unit. Please use the CreateInstancePublishTask API to publish the robot.
  final pulumi.Input<String>? bizType;
  /// UTC time of task creation
  final pulumi.Input<String>? createTime;
  /// Additional release information. Currently supported: If the BizType is faq, enter the category Id in this field to indicate that only the knowledge under these categories is published.
  final pulumi.Input<List<String>>? dataIdLists;
  /// UTC time for task modification
  final pulumi.Input<String>? modifyTime;
  /// The status of the task.
  final pulumi.Input<String>? status;

  /// Creates a new [PublishTaskState].
  /// [agentKey] The business space key. If you do not set it, the default business space is accessed. The key value is obtained on the business management page of the primary account.
  /// [bizType] The type of the publishing unit. Please use the CreateInstancePublishTask API to publish the robot.
  /// [createTime] UTC time of task creation
  /// [dataIdLists] Additional release information. Currently supported: If the BizType is faq, enter the category Id in this field to indicate that only the knowledge under these categories is published.
  /// [modifyTime] UTC time for task modification
  /// [status] The status of the task.
  PublishTaskState({
    pulumi.Output<String>? agentKey,
    pulumi.Output<String>? bizType,
    pulumi.Output<String>? createTime,
    pulumi.Output<List<String>>? dataIdLists,
    pulumi.Output<String>? modifyTime,
    pulumi.Output<String>? status,
  }) :
      agentKey = pulumi.Input.asOptionalInput<String>(agentKey),
      bizType = pulumi.Input.asOptionalInput<String>(bizType),
      createTime = pulumi.Input.asOptionalInput<String>(createTime),
      dataIdLists = pulumi.Input.asOptionalInput<List<String>>(dataIdLists),
      modifyTime = pulumi.Input.asOptionalInput<String>(modifyTime),
      status = pulumi.Input.asOptionalInput<String>(status);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'agentKey': ?agentKey,
      'bizType': ?bizType,
      'createTime': ?createTime,
      'dataIdLists': ?dataIdLists,
      'modifyTime': ?modifyTime,
      'status': ?status,
    };
  }

  factory PublishTaskState.fromMap(Map<String, dynamic> map) {
    return PublishTaskState(
      agentKey: map['agentKey'] == null ? null : pulumi.Output.create<String>(map['agentKey'] as String),
      bizType: map['bizType'] == null ? null : pulumi.Output.create<String>(map['bizType'] as String),
      createTime: map['createTime'] == null ? null : pulumi.Output.create<String>(map['createTime'] as String),
      dataIdLists: map['dataIdLists'] == null ? null : pulumi.Output.create<List<String>>((map['dataIdLists'] as List).cast<String>()),
      modifyTime: map['modifyTime'] == null ? null : pulumi.Output.create<String>(map['modifyTime'] as String),
      status: map['status'] == null ? null : pulumi.Output.create<String>(map['status'] as String),
    );
  }
}

