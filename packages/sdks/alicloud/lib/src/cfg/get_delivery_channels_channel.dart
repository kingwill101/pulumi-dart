// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetDeliveryChannelsChannel {
  /// The Alibaba Cloud Resource Name (ARN) of the role assumed by delivery method.
  final pulumi.Input<String> deliveryChannelAssumeRoleArn;
  /// The rule attached to the delivery method. This parameter is applicable only to delivery methods of the Message Service (MNS) type.
  final pulumi.Input<String> deliveryChannelCondition;
  /// The ID of the delivery channel.
  final pulumi.Input<String> deliveryChannelId;
  /// The name of the delivery channel.
  final pulumi.Input<String> deliveryChannelName;
  /// The ARN of the delivery destination.
  final pulumi.Input<String> deliveryChannelTargetArn;
  /// The type of the delivery channel.
  final pulumi.Input<String> deliveryChannelType;
  /// The description of the delivery channel.
  final pulumi.Input<String> description;
  /// The ID of the Config Delivery Channel.
  final pulumi.Input<String> id;
  /// The status of the config delivery channel. Valid values `0`: Disable delivery channel, `1`: Enable delivery channel.
  final pulumi.Input<int> status;

  /// Creates a new [GetDeliveryChannelsChannel].
  /// [deliveryChannelAssumeRoleArn] The Alibaba Cloud Resource Name (ARN) of the role assumed by delivery method.
  /// [deliveryChannelCondition] The rule attached to the delivery method. This parameter is applicable only to delivery methods of the Message Service (MNS) type.
  /// [deliveryChannelId] The ID of the delivery channel.
  /// [deliveryChannelName] The name of the delivery channel.
  /// [deliveryChannelTargetArn] The ARN of the delivery destination.
  /// [deliveryChannelType] The type of the delivery channel.
  /// [description] The description of the delivery channel.
  /// [id] The ID of the Config Delivery Channel.
  /// [status] The status of the config delivery channel. Valid values `0`: Disable delivery channel, `1`: Enable delivery channel.
  GetDeliveryChannelsChannel({
    required this.deliveryChannelAssumeRoleArn,
    required this.deliveryChannelCondition,
    required this.deliveryChannelId,
    required this.deliveryChannelName,
    required this.deliveryChannelTargetArn,
    required this.deliveryChannelType,
    required this.description,
    required this.id,
    required this.status,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'deliveryChannelAssumeRoleArn': deliveryChannelAssumeRoleArn,
      'deliveryChannelCondition': deliveryChannelCondition,
      'deliveryChannelId': deliveryChannelId,
      'deliveryChannelName': deliveryChannelName,
      'deliveryChannelTargetArn': deliveryChannelTargetArn,
      'deliveryChannelType': deliveryChannelType,
      'description': description,
      'id': id,
      'status': status,
    };
  }

  factory GetDeliveryChannelsChannel.fromMap(Map<String, dynamic> map) {
    return GetDeliveryChannelsChannel(
      deliveryChannelAssumeRoleArn: pulumi.Input.fromValue(map['deliveryChannelAssumeRoleArn'] as String),
      deliveryChannelCondition: pulumi.Input.fromValue(map['deliveryChannelCondition'] as String),
      deliveryChannelId: pulumi.Input.fromValue(map['deliveryChannelId'] as String),
      deliveryChannelName: pulumi.Input.fromValue(map['deliveryChannelName'] as String),
      deliveryChannelTargetArn: pulumi.Input.fromValue(map['deliveryChannelTargetArn'] as String),
      deliveryChannelType: pulumi.Input.fromValue(map['deliveryChannelType'] as String),
      description: pulumi.Input.fromValue(map['description'] as String),
      id: pulumi.Input.fromValue(map['id'] as String),
      status: pulumi.Input.fromValue(map['status'] as int),
    );
  }
}

