// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_cognitiveservices_get_rai_topic_args_doc}
/// Arguments for getRaiTopic.
/// {@endtemplate}
/// {@macro pulumi_cognitiveservices_get_rai_topic_args_doc}
class GetRaiTopicArgs {
  /// The name of Cognitive Services account.
  final pulumi.Input<String> accountName;
  /// The name of the Rai Topic associated with the Cognitive Services Account
  final pulumi.Input<String> raiTopicName;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [GetRaiTopicArgs].
  /// [accountName] The name of Cognitive Services account.
  /// [raiTopicName] The name of the Rai Topic associated with the Cognitive Services Account
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  GetRaiTopicArgs({
    required String accountName,
    required String raiTopicName,
    required String resourceGroupName,
  }) :
      accountName = pulumi.Input.asInput<String>(accountName),
      raiTopicName = pulumi.Input.asInput<String>(raiTopicName),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountName': accountName,
      'raiTopicName': raiTopicName,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetRaiTopicArgs.fromMap(Map<String, dynamic> map) {
    return GetRaiTopicArgs(
      accountName: map['accountName'] as String,
      raiTopicName: map['raiTopicName'] as String,
      resourceGroupName: map['resourceGroupName'] as String,
    );
  }
}

