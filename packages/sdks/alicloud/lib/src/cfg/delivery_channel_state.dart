// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering DeliveryChannel resources.
class DeliveryChannelState {
  /// The Alibaba Cloud Resource Name (ARN) of the role to be assumed by the delivery method.
  final pulumi.Input<String>? deliveryChannelAssumeRoleArn;

  /// The rule attached to the delivery method. This parameter is applicable only to delivery methods of the MNS type. Please refer to api [PutDeliveryChannel](https://www.alibabacloud.com/help/en/doc-detail/174253.htm) for example format.
  final pulumi.Input<String>? deliveryChannelCondition;

  /// The name of the delivery channel.
  final pulumi.Input<String>? deliveryChannelName;

  /// The ARN of the delivery destination. This parameter is required when you create a delivery method. The value must be in one of the following formats:
  /// - `acs:oss:{RegionId}:{Aliuid}:{bucketName}`: if your delivery destination is an Object Storage Service (OSS) bucket.
  /// - `acs:mns:{RegionId}:{Aliuid}:/topics/{topicName}`: if your delivery destination is a Message Service (MNS) topic.
  /// - `acs:log:{RegionId}:{Aliuid}:project/{projectName}/logstore/{logstoreName}`: if your delivery destination is a Log Service Logstore.
  final pulumi.Input<String>? deliveryChannelTargetArn;

  /// The type of the delivery method. This parameter is required when you create a delivery method. Valid values: `OSS`: Object Storage, `MNS`: Message Service, `SLS`: Log Service.
  final pulumi.Input<String>? deliveryChannelType;

  /// The description of the delivery method.
  final pulumi.Input<String>? description;

  /// The status of the delivery method. Valid values: `0`: The delivery method is disabled., `1`: The delivery destination is enabled. This is the default value.
  final pulumi.Input<int>? status;

  /// Creates a new [DeliveryChannelState].
  /// [deliveryChannelAssumeRoleArn] The Alibaba Cloud Resource Name (ARN) of the role to be assumed by the delivery method.
  /// [deliveryChannelCondition] The rule attached to the delivery method. This parameter is applicable only to delivery methods of the MNS type. Please refer to api [PutDeliveryChannel](https://www.alibabacloud.com/help/en/doc-detail/174253.htm) for example format.
  /// [deliveryChannelName] The name of the delivery channel.
  /// [deliveryChannelTargetArn] The ARN of the delivery destination. This parameter is required when you create a delivery method. The value must be in one of the following formats:
  /// [deliveryChannelType] The type of the delivery method. This parameter is required when you create a delivery method. Valid values: `OSS`: Object Storage, `MNS`: Message Service, `SLS`: Log Service.
  /// [description] The description of the delivery method.
  /// [status] The status of the delivery method. Valid values: `0`: The delivery method is disabled., `1`: The delivery destination is enabled. This is the default value.
  DeliveryChannelState({
    this.deliveryChannelAssumeRoleArn,
    this.deliveryChannelCondition,
    this.deliveryChannelName,
    this.deliveryChannelTargetArn,
    this.deliveryChannelType,
    this.description,
    this.status,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'deliveryChannelAssumeRoleArn': ?deliveryChannelAssumeRoleArn,
      'deliveryChannelCondition': ?deliveryChannelCondition,
      'deliveryChannelName': ?deliveryChannelName,
      'deliveryChannelTargetArn': ?deliveryChannelTargetArn,
      'deliveryChannelType': ?deliveryChannelType,
      'description': ?description,
      'status': ?status,
    };
  }

  factory DeliveryChannelState.fromMap(Map<String, dynamic> map) {
    return DeliveryChannelState(
      deliveryChannelAssumeRoleArn: (() {
        final guardedValue = map['deliveryChannelAssumeRoleArn'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      deliveryChannelCondition: (() {
        final guardedValue = map['deliveryChannelCondition'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      deliveryChannelName: (() {
        final guardedValue = map['deliveryChannelName'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      deliveryChannelTargetArn: (() {
        final guardedValue = map['deliveryChannelTargetArn'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      deliveryChannelType: (() {
        final guardedValue = map['deliveryChannelType'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      description: (() {
        final guardedValue = map['description'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      status: (() {
        final guardedValue = map['status'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
    );
  }
}
