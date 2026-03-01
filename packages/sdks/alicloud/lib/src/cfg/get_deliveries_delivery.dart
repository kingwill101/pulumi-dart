// ignore_for_file: unused_element, unnecessary_cast


class GetDeliveriesDelivery {
  /// The Aliyun User Id.
  final String accountId;
  /// Open or close delivery configuration change history.
  final bool configurationItemChangeNotification;
  /// Open or close timed snapshot of shipping resources.
  final bool configurationSnapshot;
  /// The Alibaba Cloud Resource Name (ARN) of the role to be assumed by the delivery method.
  final String deliveryChannelAssumeRoleArn;
  /// The rule attached to the delivery method.
  final String deliveryChannelCondition;
  /// The ID of the delivery method.
  final String deliveryChannelId;
  /// The name of the delivery method.
  final String deliveryChannelName;
  /// The ARN of the delivery destination.
  final String deliveryChannelTargetArn;
  /// The type of the delivery method.
  final String deliveryChannelType;
  /// The description of the delivery method.
  final String description;
  /// The ID of the Delivery.
  final String id;
  /// Open or close non-compliance events of delivery resources.
  final bool nonCompliantNotification;
  /// The oss ARN of the delivery channel when the value data oversized limit.
  final String oversizedDataOssTargetArn;
  /// The status of the delivery method. Valid values: `0`: The delivery method is disabled. `1`: The delivery destination is enabled.
  final int status;

  /// Creates a new [GetDeliveriesDelivery].
  /// [accountId] The Aliyun User Id.
  /// [configurationItemChangeNotification] Open or close delivery configuration change history.
  /// [configurationSnapshot] Open or close timed snapshot of shipping resources.
  /// [deliveryChannelAssumeRoleArn] The Alibaba Cloud Resource Name (ARN) of the role to be assumed by the delivery method.
  /// [deliveryChannelCondition] The rule attached to the delivery method.
  /// [deliveryChannelId] The ID of the delivery method.
  /// [deliveryChannelName] The name of the delivery method.
  /// [deliveryChannelTargetArn] The ARN of the delivery destination.
  /// [deliveryChannelType] The type of the delivery method.
  /// [description] The description of the delivery method.
  /// [id] The ID of the Delivery.
  /// [nonCompliantNotification] Open or close non-compliance events of delivery resources.
  /// [oversizedDataOssTargetArn] The oss ARN of the delivery channel when the value data oversized limit.
  /// [status] The status of the delivery method. Valid values: `0`: The delivery method is disabled. `1`: The delivery destination is enabled.
  GetDeliveriesDelivery({
    required this.accountId,
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

  factory GetDeliveriesDelivery.fromMap(Map<String, dynamic> map) {
    return GetDeliveriesDelivery(
      accountId: map['accountId'] as String,
      configurationItemChangeNotification: map['configurationItemChangeNotification'] as bool,
      configurationSnapshot: map['configurationSnapshot'] as bool,
      deliveryChannelAssumeRoleArn: map['deliveryChannelAssumeRoleArn'] as String,
      deliveryChannelCondition: map['deliveryChannelCondition'] as String,
      deliveryChannelId: map['deliveryChannelId'] as String,
      deliveryChannelName: map['deliveryChannelName'] as String,
      deliveryChannelTargetArn: map['deliveryChannelTargetArn'] as String,
      deliveryChannelType: map['deliveryChannelType'] as String,
      description: map['description'] as String,
      id: map['id'] as String,
      nonCompliantNotification: map['nonCompliantNotification'] as bool,
      oversizedDataOssTargetArn: map['oversizedDataOssTargetArn'] as String,
      status: map['status'] as int,
    );
  }
}

