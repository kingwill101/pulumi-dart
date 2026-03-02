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
      deliveryChannelAssumeRoleArn: (map['deliveryChannelAssumeRoleArn'] as String).input(),
      deliveryChannelCondition: (map['deliveryChannelCondition'] as String).input(),
      deliveryChannelId: (map['deliveryChannelId'] as String).input(),
      deliveryChannelName: (map['deliveryChannelName'] as String).input(),
      deliveryChannelTargetArn: (map['deliveryChannelTargetArn'] as String).input(),
      deliveryChannelType: (map['deliveryChannelType'] as String).input(),
      description: (map['description'] as String).input(),
      id: (map['id'] as String).input(),
      status: (map['status'] as int).input(),
    );
  }
}

