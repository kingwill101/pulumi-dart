// ignore_for_file: unused_element, unnecessary_cast


class GetDeliveryChannelsChannel {
  /// The Alibaba Cloud Resource Name (ARN) of the role assumed by delivery method.
  final String deliveryChannelAssumeRoleArn;
  /// The rule attached to the delivery method. This parameter is applicable only to delivery methods of the Message Service (MNS) type.
  final String deliveryChannelCondition;
  /// The ID of the delivery channel.
  final String deliveryChannelId;
  /// The name of the delivery channel.
  final String deliveryChannelName;
  /// The ARN of the delivery destination.
  final String deliveryChannelTargetArn;
  /// The type of the delivery channel.
  final String deliveryChannelType;
  /// The description of the delivery channel.
  final String description;
  /// The ID of the Config Delivery Channel.
  final String id;
  /// The status of the config delivery channel. Valid values `0`: Disable delivery channel, `1`: Enable delivery channel.
  final int status;

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
      deliveryChannelAssumeRoleArn: map['deliveryChannelAssumeRoleArn'] as String,
      deliveryChannelCondition: map['deliveryChannelCondition'] as String,
      deliveryChannelId: map['deliveryChannelId'] as String,
      deliveryChannelName: map['deliveryChannelName'] as String,
      deliveryChannelTargetArn: map['deliveryChannelTargetArn'] as String,
      deliveryChannelType: map['deliveryChannelType'] as String,
      description: map['description'] as String,
      id: map['id'] as String,
      status: map['status'] as int,
    );
  }
}

