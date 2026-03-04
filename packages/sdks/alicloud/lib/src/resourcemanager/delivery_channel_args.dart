// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'delivery_channel_delivery_channel_filter.dart';
import 'delivery_channel_resource_change_delivery.dart';
import 'delivery_channel_resource_snapshot_delivery.dart';

/// {@template pulumi_resourcemanager_delivery_channel_delivery_channel_args_doc}
/// The set of arguments for DeliveryChannel.
/// {@endtemplate}
/// {@macro pulumi_resourcemanager_delivery_channel_delivery_channel_args_doc}
class DeliveryChannelArgs {
  /// The description of the delivery channel.
  final pulumi.Input<String>? deliveryChannelDescription;

  /// The effective scope of the delivery channel. See `delivery_channel_filter` below.
  final pulumi.Input<DeliveryChannelDeliveryChannelFilter>
  deliveryChannelFilter;

  /// The name of the delivery channel.
  final pulumi.Input<String> deliveryChannelName;

  /// The configurations for delivery of resource configuration change events. See `resource_change_delivery` below.
  final pulumi.Input<DeliveryChannelResourceChangeDelivery>?
  resourceChangeDelivery;

  /// The configurations for delivery of scheduled resource snapshots. See `resource_snapshot_delivery` below.
  final pulumi.Input<DeliveryChannelResourceSnapshotDelivery>?
  resourceSnapshotDelivery;

  /// Creates a new [DeliveryChannelArgs].
  /// [deliveryChannelDescription] The description of the delivery channel.
  /// [deliveryChannelFilter] The effective scope of the delivery channel. See `delivery_channel_filter` below.
  /// [deliveryChannelName] The name of the delivery channel.
  /// [resourceChangeDelivery] The configurations for delivery of resource configuration change events. See `resource_change_delivery` below.
  /// [resourceSnapshotDelivery] The configurations for delivery of scheduled resource snapshots. See `resource_snapshot_delivery` below.
  DeliveryChannelArgs({
    this.deliveryChannelDescription,
    required this.deliveryChannelFilter,
    required this.deliveryChannelName,
    this.resourceChangeDelivery,
    this.resourceSnapshotDelivery,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'deliveryChannelDescription': ?deliveryChannelDescription,
      'deliveryChannelFilter':
          pulumi.Input.mapInputValue<
            DeliveryChannelDeliveryChannelFilter,
            Map<String, dynamic>
          >(deliveryChannelFilter, (value) => value.toMap()),
      'deliveryChannelName': deliveryChannelName,
      'resourceChangeDelivery':
          ?pulumi.Input.mapOptionalInputValue<
            DeliveryChannelResourceChangeDelivery,
            Map<String, dynamic>
          >(resourceChangeDelivery, (value) => value.toMap()),
      'resourceSnapshotDelivery':
          ?pulumi.Input.mapOptionalInputValue<
            DeliveryChannelResourceSnapshotDelivery,
            Map<String, dynamic>
          >(resourceSnapshotDelivery, (value) => value.toMap()),
    };
  }

  factory DeliveryChannelArgs.fromMap(Map<String, dynamic> map) {
    return DeliveryChannelArgs(
      deliveryChannelDescription: (() {
        final guardedValue = map['deliveryChannelDescription'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      deliveryChannelFilter: pulumi.Input.fromValue(
        DeliveryChannelDeliveryChannelFilter.fromMap(
          (map['deliveryChannelFilter']! as Map).cast<String, dynamic>(),
        ),
      ),
      deliveryChannelName: pulumi.Input.fromValue(
        map['deliveryChannelName'] as String,
      ),
      resourceChangeDelivery: (() {
        final guardedValue = map['resourceChangeDelivery'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          DeliveryChannelResourceChangeDelivery.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      resourceSnapshotDelivery: (() {
        final guardedValue = map['resourceSnapshotDelivery'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          DeliveryChannelResourceSnapshotDelivery.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
    );
  }
}
