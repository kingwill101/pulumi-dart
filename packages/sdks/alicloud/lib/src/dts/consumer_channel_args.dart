// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_dts_consumer_channel_consumer_channel_args_doc}
/// The set of arguments for ConsumerChannel.
/// {@endtemplate}
/// {@macro pulumi_dts_consumer_channel_consumer_channel_args_doc}
class ConsumerChannelArgs {
  /// The name of the consumer group.
  final pulumi.Input<String> consumerGroupName;
  /// The password of the consumer group account. The length of the `consumer_group_password` is limited to `8` to `32` characters. It can contain two or more of the following characters: uppercase letters, lowercase letters, digits, and special characters.
  final pulumi.Input<String> consumerGroupPassword;
  /// The username of the consumer group. The length of the `consumer_group_user_name` is limited to `1` to `16` characters. It can contain one or more of the following characters: uppercase letters, lowercase letters, digits, and underscores (_).
  final pulumi.Input<String> consumerGroupUserName;
  /// The ID of the subscription instance.
  final pulumi.Input<String> dtsInstanceId;

  /// Creates a new [ConsumerChannelArgs].
  /// [consumerGroupName] The name of the consumer group.
  /// [consumerGroupPassword] The password of the consumer group account. The length of the `consumer_group_password` is limited to `8` to `32` characters. It can contain two or more of the following characters: uppercase letters, lowercase letters, digits, and special characters.
  /// [consumerGroupUserName] The username of the consumer group. The length of the `consumer_group_user_name` is limited to `1` to `16` characters. It can contain one or more of the following characters: uppercase letters, lowercase letters, digits, and underscores (_).
  /// [dtsInstanceId] The ID of the subscription instance.
  ConsumerChannelArgs({
    required pulumi.Output<String> consumerGroupName,
    required pulumi.Output<String> consumerGroupPassword,
    required pulumi.Output<String> consumerGroupUserName,
    required pulumi.Output<String> dtsInstanceId,
  }) :
      consumerGroupName = pulumi.Input.asInput<String>(consumerGroupName),
      consumerGroupPassword = pulumi.Input.asInput<String>(consumerGroupPassword),
      consumerGroupUserName = pulumi.Input.asInput<String>(consumerGroupUserName),
      dtsInstanceId = pulumi.Input.asInput<String>(dtsInstanceId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'consumerGroupName': consumerGroupName,
      'consumerGroupPassword': consumerGroupPassword,
      'consumerGroupUserName': consumerGroupUserName,
      'dtsInstanceId': dtsInstanceId,
    };
  }

  factory ConsumerChannelArgs.fromMap(Map<String, dynamic> map) {
    return ConsumerChannelArgs(
      consumerGroupName: pulumi.Output.create<String>(map['consumerGroupName'] as String),
      consumerGroupPassword: pulumi.Output.create<String>(map['consumerGroupPassword'] as String),
      consumerGroupUserName: pulumi.Output.create<String>(map['consumerGroupUserName'] as String),
      dtsInstanceId: pulumi.Output.create<String>(map['dtsInstanceId'] as String),
    );
  }
}

