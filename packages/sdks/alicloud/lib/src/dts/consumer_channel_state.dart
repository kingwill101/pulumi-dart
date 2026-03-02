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
    this.consumerGroupId,
    this.consumerGroupName,
    this.consumerGroupPassword,
    this.consumerGroupUserName,
    this.dtsInstanceId,
  });

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
      consumerGroupId: map['consumerGroupId'] == null ? null : (map['consumerGroupId'] as String).input(),
      consumerGroupName: map['consumerGroupName'] == null ? null : (map['consumerGroupName'] as String).input(),
      consumerGroupPassword: map['consumerGroupPassword'] == null ? null : (map['consumerGroupPassword'] as String).input(),
      consumerGroupUserName: map['consumerGroupUserName'] == null ? null : (map['consumerGroupUserName'] as String).input(),
      dtsInstanceId: map['dtsInstanceId'] == null ? null : (map['dtsInstanceId'] as String).input(),
    );
  }
}

