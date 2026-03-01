// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_cfg_delivery_channel_delivery_channel_args_doc}
/// The set of arguments for DeliveryChannel.
/// {@endtemplate}
/// {@macro pulumi_cfg_delivery_channel_delivery_channel_args_doc}
class DeliveryChannelArgs {
  /// The Alibaba Cloud Resource Name (ARN) of the role to be assumed by the delivery method.
  final pulumi.Input<String> deliveryChannelAssumeRoleArn;
  /// The rule attached to the delivery method. This parameter is applicable only to delivery methods of the MNS type. Please refer to api [PutDeliveryChannel](https://www.alibabacloud.com/help/en/doc-detail/174253.htm) for example format.
  final pulumi.Input<String>? deliveryChannelCondition;
  /// The name of the delivery channel.
  final pulumi.Input<String>? deliveryChannelName;
  /// The ARN of the delivery destination. This parameter is required when you create a delivery method. The value must be in one of the following formats:
  /// - `acs:oss:{RegionId}:{Aliuid}:{bucketName}`: if your delivery destination is an Object Storage Service (OSS) bucket.
  /// - `acs:mns:{RegionId}:{Aliuid}:/topics/{topicName}`: if your delivery destination is a Message Service (MNS) topic.
  /// - `acs:log:{RegionId}:{Aliuid}:project/{projectName}/logstore/{logstoreName}`: if your delivery destination is a Log Service Logstore.
  final pulumi.Input<String> deliveryChannelTargetArn;
  /// The type of the delivery method. This parameter is required when you create a delivery method. Valid values: `OSS`: Object Storage, `MNS`: Message Service, `SLS`: Log Service.
  final pulumi.Input<String> deliveryChannelType;
  /// The description of the delivery method.
  final pulumi.Input<String>? description;
  /// The status of the delivery method. Valid values: `0`: The delivery method is disabled., `1`: The delivery destination is enabled. This is the default value.
  final pulumi.Input<int>? status;

  /// Creates a new [DeliveryChannelArgs].
  /// [deliveryChannelAssumeRoleArn] The Alibaba Cloud Resource Name (ARN) of the role to be assumed by the delivery method.
  /// [deliveryChannelCondition] The rule attached to the delivery method. This parameter is applicable only to delivery methods of the MNS type. Please refer to api [PutDeliveryChannel](https://www.alibabacloud.com/help/en/doc-detail/174253.htm) for example format.
  /// [deliveryChannelName] The name of the delivery channel.
  /// [deliveryChannelTargetArn] The ARN of the delivery destination. This parameter is required when you create a delivery method. The value must be in one of the following formats:
  /// [deliveryChannelType] The type of the delivery method. This parameter is required when you create a delivery method. Valid values: `OSS`: Object Storage, `MNS`: Message Service, `SLS`: Log Service.
  /// [description] The description of the delivery method.
  /// [status] The status of the delivery method. Valid values: `0`: The delivery method is disabled., `1`: The delivery destination is enabled. This is the default value.
  DeliveryChannelArgs({
    required String deliveryChannelAssumeRoleArn,
    String? deliveryChannelCondition,
    String? deliveryChannelName,
    required String deliveryChannelTargetArn,
    required String deliveryChannelType,
    String? description,
    int? status,
  }) :
      deliveryChannelAssumeRoleArn = pulumi.Input.asInput<String>(deliveryChannelAssumeRoleArn),
      deliveryChannelCondition = pulumi.Input.asOptionalInput<String>(deliveryChannelCondition),
      deliveryChannelName = pulumi.Input.asOptionalInput<String>(deliveryChannelName),
      deliveryChannelTargetArn = pulumi.Input.asInput<String>(deliveryChannelTargetArn),
      deliveryChannelType = pulumi.Input.asInput<String>(deliveryChannelType),
      description = pulumi.Input.asOptionalInput<String>(description),
      status = pulumi.Input.asOptionalInput<int>(status);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'deliveryChannelAssumeRoleArn': deliveryChannelAssumeRoleArn,
      'deliveryChannelCondition': ?deliveryChannelCondition,
      'deliveryChannelName': ?deliveryChannelName,
      'deliveryChannelTargetArn': deliveryChannelTargetArn,
      'deliveryChannelType': deliveryChannelType,
      'description': ?description,
      'status': ?status,
    };
  }

  factory DeliveryChannelArgs.fromMap(Map<String, dynamic> map) {
    return DeliveryChannelArgs(
      deliveryChannelAssumeRoleArn: map['deliveryChannelAssumeRoleArn'] as String,
      deliveryChannelCondition: map['deliveryChannelCondition'] == null ? null : map['deliveryChannelCondition'] as String,
      deliveryChannelName: map['deliveryChannelName'] == null ? null : map['deliveryChannelName'] as String,
      deliveryChannelTargetArn: map['deliveryChannelTargetArn'] as String,
      deliveryChannelType: map['deliveryChannelType'] as String,
      description: map['description'] == null ? null : map['description'] as String,
      status: map['status'] == null ? null : map['status'] as int,
    );
  }
}

