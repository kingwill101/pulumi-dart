// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'multi_account_delivery_channel_resource_snapshot_delivery_sls_properties.dart';

class MultiAccountDeliveryChannelResourceSnapshotDelivery {
  /// The custom expression.
  final pulumi.Input<String>? customExpression;
  /// The delivery time.
  final pulumi.Input<String>? deliveryTime;
  /// Specifies whether to enable delivery of scheduled resource snapshots. Valid values:
  /// - true
  /// - false
  final pulumi.Input<bool>? enabled;
  /// The Simple Log Service configurations. See `sls_properties` below.
  final pulumi.Input<MultiAccountDeliveryChannelResourceSnapshotDeliverySlsProperties>? slsProperties;
  /// The Alibaba Cloud Resource Name (ARN) of the delivery destination.
  /// - If you set TargetType to`OSS`, you must set TargetArn to the ARN of a bucket whose name is prefixed with `resourcecenter-`.
  /// - If you set TargetType to `SLS`, you must set TargetArn to the ARN of a Logstore whose name is prefixed with `resourcecenter-`.
  final pulumi.Input<String>? targetArn;
  /// The type of the delivery destination.
  ///
  /// Valid values:
  /// - `OSS` for standard delivery
  /// - `OSS` or `SLS` for custom delivery
  final pulumi.Input<String>? targetType;

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
      'slsProperties': ?pulumi.Input.mapOptionalInputValue<MultiAccountDeliveryChannelResourceSnapshotDeliverySlsProperties, Map<String, dynamic>>(slsProperties, (value) => value.toMap()),
      'targetArn': ?targetArn,
      'targetType': ?targetType,
    };
  }

  factory MultiAccountDeliveryChannelResourceSnapshotDelivery.fromMap(Map<String, dynamic> map) {
    return MultiAccountDeliveryChannelResourceSnapshotDelivery(
      customExpression: map['customExpression'] == null ? null : (map['customExpression'] as String).input(),
      deliveryTime: map['deliveryTime'] == null ? null : (map['deliveryTime'] as String).input(),
      enabled: map['enabled'] == null ? null : (map['enabled'] as bool).input(),
      slsProperties: map['slsProperties'] == null ? null : (MultiAccountDeliveryChannelResourceSnapshotDeliverySlsProperties.fromMap((map['slsProperties'] as Map).cast<String, dynamic>())).input(),
      targetArn: map['targetArn'] == null ? null : (map['targetArn'] as String).input(),
      targetType: map['targetType'] == null ? null : (map['targetType'] as String).input(),
    );
  }
}

