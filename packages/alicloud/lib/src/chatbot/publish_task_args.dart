// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_chatbot_publish_task_publish_task_args_doc}
/// The set of arguments for PublishTask.
/// {@endtemplate}
/// {@macro pulumi_chatbot_publish_task_publish_task_args_doc}
class PublishTaskArgs {
  /// The business space key. If you do not set it, the default business space is accessed. The key value is obtained on the business management page of the primary account.
  final pulumi.Input<String>? agentKey;
  /// The type of the publishing unit. Please use the CreateInstancePublishTask API to publish the robot.
  final pulumi.Input<String> bizType;
  /// Additional release information. Currently supported: If the BizType is faq, enter the category Id in this field to indicate that only the knowledge under these categories is published.
  final pulumi.Input<List<String>>? dataIdLists;

  /// Creates a new [PublishTaskArgs].
  /// [agentKey] The business space key. If you do not set it, the default business space is accessed. The key value is obtained on the business management page of the primary account.
  /// [bizType] The type of the publishing unit. Please use the CreateInstancePublishTask API to publish the robot.
  /// [dataIdLists] Additional release information. Currently supported: If the BizType is faq, enter the category Id in this field to indicate that only the knowledge under these categories is published.
  PublishTaskArgs({
    String? agentKey,
    required String bizType,
    List<String>? dataIdLists,
  }) :
      agentKey = pulumi.Input.asOptionalInput<String>(agentKey),
      bizType = pulumi.Input.asInput<String>(bizType),
      dataIdLists = pulumi.Input.asOptionalInput<List<String>>(dataIdLists);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'agentKey': ?agentKey,
      'bizType': bizType,
      'dataIdLists': ?dataIdLists,
    };
  }

  factory PublishTaskArgs.fromMap(Map<String, dynamic> map) {
    return PublishTaskArgs(
      agentKey: map['agentKey'] == null ? null : map['agentKey'] as String,
      bizType: map['bizType'] as String,
      dataIdLists: map['dataIdLists'] == null ? null : (map['dataIdLists'] as List).cast<String>(),
    );
  }
}

