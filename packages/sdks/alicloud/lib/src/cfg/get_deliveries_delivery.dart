// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetDeliveriesDelivery {
  /// The Aliyun User Id.
  final pulumi.Input<String> accountId;

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

  /// The ID of the Delivery.
  final pulumi.Input<String> id;

  /// Open or close non-compliance events of delivery resources.
  final pulumi.Input<bool> nonCompliantNotification;

  /// The oss ARN of the delivery channel when the value data oversized limit.
  final pulumi.Input<String> oversizedDataOssTargetArn;

  /// The status of the delivery method. Valid values: `0`: The delivery method is disabled. `1`: The delivery destination is enabled.
  final pulumi.Input<int> status;

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
      'configurationItemChangeNotification':
          configurationItemChangeNotification,
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
      accountId: pulumi.Input.fromValue(map['accountId'] as String),
      configurationItemChangeNotification: pulumi.Input.fromValue(
        map['configurationItemChangeNotification'] as bool,
      ),
      configurationSnapshot: pulumi.Input.fromValue(
        map['configurationSnapshot'] as bool,
      ),
      deliveryChannelAssumeRoleArn: pulumi.Input.fromValue(
        map['deliveryChannelAssumeRoleArn'] as String,
      ),
      deliveryChannelCondition: pulumi.Input.fromValue(
        map['deliveryChannelCondition'] as String,
      ),
      deliveryChannelId: pulumi.Input.fromValue(
        map['deliveryChannelId'] as String,
      ),
      deliveryChannelName: pulumi.Input.fromValue(
        map['deliveryChannelName'] as String,
      ),
      deliveryChannelTargetArn: pulumi.Input.fromValue(
        map['deliveryChannelTargetArn'] as String,
      ),
      deliveryChannelType: pulumi.Input.fromValue(
        map['deliveryChannelType'] as String,
      ),
      description: pulumi.Input.fromValue(map['description'] as String),
      id: pulumi.Input.fromValue(map['id'] as String),
      nonCompliantNotification: pulumi.Input.fromValue(
        map['nonCompliantNotification'] as bool,
      ),
      oversizedDataOssTargetArn: pulumi.Input.fromValue(
        map['oversizedDataOssTargetArn'] as String,
      ),
      status: pulumi.Input.fromValue(map['status'] as int),
    );
  }
}
