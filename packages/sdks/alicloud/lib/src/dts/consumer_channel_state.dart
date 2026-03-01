// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering ConsumerChannel resources.
class ConsumerChannelState {
  /// The ID of the consumer group.
  final pulumi.Input<String>? consumerGroupId;
  /// The name of the consumer group.
  final pulumi.Input<String>? consumerGroupName;
  /// The password of the consumer group account. The length of the `consumer_group_password` is limited to `8` to `32` characters. It can contain two or more of the following characters: uppercase letters, lowercase letters, digits, and special characters.
  final pulumi.Input<String>? consumerGroupPassword;
  /// The username of the consumer group. The length of the `consumer_group_user_name` is limited to `1` to `16` characters. It can contain one or more of the following characters: uppercase letters, lowercase letters, digits, and underscores (_).
  final pulumi.Input<String>? consumerGroupUserName;
  /// The ID of the subscription instance.
  final pulumi.Input<String>? dtsInstanceId;

  /// Creates a new [ConsumerChannelState].
  /// [consumerGroupId] The ID of the consumer group.
  /// [consumerGroupName] The name of the consumer group.
  /// [consumerGroupPassword] The password of the consumer group account. The length of the `consumer_group_password` is limited to `8` to `32` characters. It can contain two or more of the following characters: uppercase letters, lowercase letters, digits, and special characters.
  /// [consumerGroupUserName] The username of the consumer group. The length of the `consumer_group_user_name` is limited to `1` to `16` characters. It can contain one or more of the following characters: uppercase letters, lowercase letters, digits, and underscores (_).
  /// [dtsInstanceId] The ID of the subscription instance.
  ConsumerChannelState({
    pulumi.Output<String>? consumerGroupId,
    pulumi.Output<String>? consumerGroupName,
    pulumi.Output<String>? consumerGroupPassword,
    pulumi.Output<String>? consumerGroupUserName,
    pulumi.Output<String>? dtsInstanceId,
  }) :
      consumerGroupId = pulumi.Input.asOptionalInput<String>(consumerGroupId),
      consumerGroupName = pulumi.Input.asOptionalInput<String>(consumerGroupName),
      consumerGroupPassword = pulumi.Input.asOptionalInput<String>(consumerGroupPassword),
      consumerGroupUserName = pulumi.Input.asOptionalInput<String>(consumerGroupUserName),
      dtsInstanceId = pulumi.Input.asOptionalInput<String>(dtsInstanceId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'consumerGroupId': ?consumerGroupId,
      'consumerGroupName': ?consumerGroupName,
      'consumerGroupPassword': ?consumerGroupPassword,
      'consumerGroupUserName': ?consumerGroupUserName,
      'dtsInstanceId': ?dtsInstanceId,
    };
  }

  factory ConsumerChannelState.fromMap(Map<String, dynamic> map) {
    return ConsumerChannelState(
      consumerGroupId: map['consumerGroupId'] == null ? null : pulumi.Output.create<String>(map['consumerGroupId'] as String),
      consumerGroupName: map['consumerGroupName'] == null ? null : pulumi.Output.create<String>(map['consumerGroupName'] as String),
      consumerGroupPassword: map['consumerGroupPassword'] == null ? null : pulumi.Output.create<String>(map['consumerGroupPassword'] as String),
      consumerGroupUserName: map['consumerGroupUserName'] == null ? null : pulumi.Output.create<String>(map['consumerGroupUserName'] as String),
      dtsInstanceId: map['dtsInstanceId'] == null ? null : pulumi.Output.create<String>(map['dtsInstanceId'] as String),
    );
  }
}

