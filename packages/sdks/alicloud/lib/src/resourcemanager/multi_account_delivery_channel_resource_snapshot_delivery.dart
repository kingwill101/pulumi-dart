// ignore_for_file: unused_element, unnecessary_cast

import 'multi_account_delivery_channel_resource_snapshot_delivery_sls_properties.dart';

class MultiAccountDeliveryChannelResourceSnapshotDelivery {
  /// The custom expression.
  final String? customExpression;
  /// The delivery time.
  final String? deliveryTime;
  /// Specifies whether to enable delivery of scheduled resource snapshots. Valid values:
  /// - true
  /// - false
  final bool? enabled;
  /// The Simple Log Service configurations. See `sls_properties` below.
  final MultiAccountDeliveryChannelResourceSnapshotDeliverySlsProperties? slsProperties;
  /// The Alibaba Cloud Resource Name (ARN) of the delivery destination.
  /// - If you set TargetType to`OSS`, you must set TargetArn to the ARN of a bucket whose name is prefixed with `resourcecenter-`.
  /// - If you set TargetType to `SLS`, you must set TargetArn to the ARN of a Logstore whose name is prefixed with `resourcecenter-`.
  final String? targetArn;
  /// The type of the delivery destination.
  ///
  /// Valid values:
  /// - `OSS` for standard delivery
  /// - `OSS` or `SLS` for custom delivery
  final String? targetType;

  /// Creates a new [MultiAccountDeliveryChannelResourceSnapshotDelivery].
  /// [customExpression] The custom expression.
  /// [deliveryTime] The delivery time.
  /// [enabled] Specifies whether to enable delivery of scheduled resource snapshots. Valid values:
  /// [slsProperties] The Simple Log Service configurations. See `sls_properties` below.
  /// [targetArn] The Alibaba Cloud Resource Name (ARN) of the delivery destination.
  /// [targetType] The type of the delivery destination.
  MultiAccountDeliveryChannelResourceSnapshotDelivery({
    this.customExpression,
    this.deliveryTime,
    this.enabled,
    this.slsProperties,
    this.targetArn,
    this.targetType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'customExpression': ?customExpression,
      'deliveryTime': ?deliveryTime,
      'enabled': ?enabled,
      'slsProperties': ?slsProperties == null ? null : slsProperties!.toMap(),
      'targetArn': ?targetArn,
      'targetType': ?targetType,
    };
  }

  factory MultiAccountDeliveryChannelResourceSnapshotDelivery.fromMap(Map<String, dynamic> map) {
    return MultiAccountDeliveryChannelResourceSnapshotDelivery(
      customExpression: map['customExpression'] == null ? null : map['customExpression'] as String,
      deliveryTime: map['deliveryTime'] == null ? null : map['deliveryTime'] as String,
      enabled: map['enabled'] == null ? null : map['enabled'] as bool,
      slsProperties: map['slsProperties'] == null ? null : MultiAccountDeliveryChannelResourceSnapshotDeliverySlsProperties.fromMap((map['slsProperties'] as Map).cast<String, dynamic>()),
      targetArn: map['targetArn'] == null ? null : map['targetArn'] as String,
      targetType: map['targetType'] == null ? null : map['targetType'] as String,
    );
  }
}

