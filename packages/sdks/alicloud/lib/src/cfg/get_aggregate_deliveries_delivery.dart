// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetAggregateDeliveriesDelivery {
  /// The Aliyun User Id.
  final pulumi.Input<String> accountId;
  /// The ID of the Aggregator.
  final pulumi.Input<String> aggregatorId;
  /// Open or close delivery configuration change history.
  final pulumi.Input<bool> configurationItemChangeNotification;
  /// Open or close timed snapshot of shipping resources.
  final pulumi.Input<bool> configurationSnapshot;
  /// The Alibaba Cloud Resource Name (ARN) of the role to be assumed by the delivery method.
  final pulumi.Input<String> deliveryChannelAssumeRoleArn;
  /// The rule attached to the delivery method.
  final pulumi.Input<String> deliveryChannelCondition;
  /// The ID of the delivery method.
  final pulumi.Input<String> deliveryChannelId;
  /// The name of the delivery method.
  final pulumi.Input<String> deliveryChannelName;
  /// The ARN of the delivery destination.
  final pulumi.Input<String> deliveryChannelTargetArn;
  /// The type of the delivery method.
  final pulumi.Input<String> deliveryChannelType;
  /// The description of the delivery method.
  final pulumi.Input<String> description;
  /// The ID of the Aggregate Delivery.
  final pulumi.Input<String> id;
  /// Open or close non-compliance events of delivery resources.
  final pulumi.Input<bool> nonCompliantNotification;
  /// The oss ARN of the delivery channel when the value data oversized limit.
  final pulumi.Input<String> oversizedDataOssTargetArn;
  /// The status of the delivery method. Valid values: `0`: The delivery method is disabled. `1`: The delivery destination is enabled.
  final pulumi.Input<int> status;

  /// Creates a new [GetAggregateDeliveriesDelivery].
  /// [accountId] The Aliyun User Id.
  /// [aggregatorId] The ID of the Aggregator.
  /// [configurationItemChangeNotification] Open or close delivery configuration change history.
  /// [configurationSnapshot] Open or close timed snapshot of shipping resources.
  /// [deliveryChannelAssumeRoleArn] The Alibaba Cloud Resource Name (ARN) of the role to be assumed by the delivery method.
  /// [deliveryChannelCondition] The rule attached to the delivery method.
  /// [deliveryChannelId] The ID of the delivery method.
  /// [deliveryChannelName] The name of the delivery method.
  /// [deliveryChannelTargetArn] The ARN of the delivery destination.
  /// [deliveryChannelType] The type of the delivery method.
  /// [description] The description of the delivery method.
  /// [id] The ID of the Aggregate Delivery.
  /// [nonCompliantNotification] Open or close non-compliance events of delivery resources.
  /// [oversizedDataOssTargetArn] The oss ARN of the delivery channel when the value data oversized limit.
  /// [status] The status of the delivery method. Valid values: `0`: The delivery method is disabled. `1`: The delivery destination is enabled.
  GetAggregateDeliveriesDelivery({
    required this.accountId,
    required this.aggregatorId,
    required this.configurationItemChangeNotification,
    required this.configurationSnapshot,
    required this.deliveryChannelAssumeRoleArn,
    required this.deliveryChannelCondition,
    required this.deliveryChannelId,
    required this.deliveryChannelName,
    required this.deliveryChannelTargetArn,
    required this.deliveryChannelType,
    required this.description,
    required this.id,
    required this.nonCompliantNotification,
    required this.oversizedDataOssTargetArn,
    required this.status,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountId': accountId,
      'aggregatorId': aggregatorId,
      'configurationItemChangeNotification': configurationItemChangeNotification,
      'configurationSnapshot': configurationSnapshot,
      'deliveryChannelAssumeRoleArn': deliveryChannelAssumeRoleArn,
      'deliveryChannelCondition': deliveryChannelCondition,
      'deliveryChannelId': deliveryChannelId,
      'deliveryChannelName': deliveryChannelName,
      'deliveryChannelTargetArn': deliveryChannelTargetArn,
      'deliveryChannelType': deliveryChannelType,
      'description': description,
      'id': id,
      'nonCompliantNotification': nonCompliantNotification,
      'oversizedDataOssTargetArn': oversizedDataOssTargetArn,
      'status': status,
    };
  }

  factory GetAggregateDeliveriesDelivery.fromMap(Map<String, dynamic> map) {
    return GetAggregateDeliveriesDelivery(
      accountId: (map['accountId'] as String).input(),
      aggregatorId: (map['aggregatorId'] as String).input(),
      configurationItemChangeNotification: (map['configurationItemChangeNotification'] as bool).input(),
      configurationSnapshot: (map['configurationSnapshot'] as bool).input(),
      deliveryChannelAssumeRoleArn: (map['deliveryChannelAssumeRoleArn'] as String).input(),
      deliveryChannelCondition: (map['deliveryChannelCondition'] as String).input(),
      deliveryChannelId: (map['deliveryChannelId'] as String).input(),
      deliveryChannelName: (map['deliveryChannelName'] as String).input(),
      deliveryChannelTargetArn: (map['deliveryChannelTargetArn'] as String).input(),
      deliveryChannelType: (map['deliveryChannelType'] as String).input(),
      description: (map['description'] as String).input(),
      id: (map['id'] as String).input(),
      nonCompliantNotification: (map['nonCompliantNotification'] as bool).input(),
      oversizedDataOssTargetArn: (map['oversizedDataOssTargetArn'] as String).input(),
      status: (map['status'] as int).input(),
    );
  }
}

