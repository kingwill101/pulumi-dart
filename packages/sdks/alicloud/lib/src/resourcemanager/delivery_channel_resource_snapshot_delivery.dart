// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'delivery_channel_resource_snapshot_delivery_sls_properties.dart';

class DeliveryChannelResourceSnapshotDelivery {
  /// The custom expression.
  final pulumi.Input<String>? customExpression;

  /// The delivery time.
  final pulumi.Input<String>? deliveryTime;

  /// Specifies whether to enable delivery of scheduled resource snapshots. Valid values:
  /// - true
  /// - false
  final pulumi.Input<bool>? enabled;

  /// The Simple Log Service configurations. See `sls_properties` below.
  final pulumi.Input<DeliveryChannelResourceSnapshotDeliverySlsProperties>?
  slsProperties;

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

  /// Creates a new [DeliveryChannelResourceSnapshotDelivery].
  /// [customExpression] The custom expression.
  /// [deliveryTime] The delivery time.
  /// [enabled] Specifies whether to enable delivery of scheduled resource snapshots. Valid values:
  /// [slsProperties] The Simple Log Service configurations. See `sls_properties` below.
  /// [targetArn] The Alibaba Cloud Resource Name (ARN) of the delivery destination.
  /// [targetType] The type of the delivery destination.
  DeliveryChannelResourceSnapshotDelivery({
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
      'slsProperties':
          ?pulumi.Input.mapOptionalInputValue<
            DeliveryChannelResourceSnapshotDeliverySlsProperties,
            Map<String, dynamic>
          >(slsProperties, (value) => value.toMap()),
      'targetArn': ?targetArn,
      'targetType': ?targetType,
    };
  }

  factory DeliveryChannelResourceSnapshotDelivery.fromMap(
    Map<String, dynamic> map,
  ) {
    return DeliveryChannelResourceSnapshotDelivery(
      customExpression: (() {
        final guardedValue = map['customExpression'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      deliveryTime: (() {
        final guardedValue = map['deliveryTime'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      enabled: (() {
        final guardedValue = map['enabled'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      slsProperties: (() {
        final guardedValue = map['slsProperties'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          DeliveryChannelResourceSnapshotDeliverySlsProperties.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      targetArn: (() {
        final guardedValue = map['targetArn'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      targetType: (() {
        final guardedValue = map['targetType'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
