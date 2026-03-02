// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'delivery_channel_delivery_channel_filter.dart';
import 'delivery_channel_resource_change_delivery.dart';
import 'delivery_channel_resource_snapshot_delivery.dart';

/// Input properties used for looking up and filtering DeliveryChannel resources.
class DeliveryChannelState {
  /// The description of the delivery channel.
  final pulumi.Input<String>? deliveryChannelDescription;
  /// The effective scope of the delivery channel. See `delivery_channel_filter` below.
  final pulumi.Input<DeliveryChannelDeliveryChannelFilter>? deliveryChannelFilter;
  /// The name of the delivery channel.
  final pulumi.Input<String>? deliveryChannelName;
  /// The configurations for delivery of resource configuration change events. See `resource_change_delivery` below.
  final pulumi.Input<DeliveryChannelResourceChangeDelivery>? resourceChangeDelivery;
  /// The configurations for delivery of scheduled resource snapshots. See `resource_snapshot_delivery` below.
  final pulumi.Input<DeliveryChannelResourceSnapshotDelivery>? resourceSnapshotDelivery;

  /// Creates a new [DeliveryChannelState].
  /// [deliveryChannelDescription] The description of the delivery channel.
  /// [deliveryChannelFilter] The effective scope of the delivery channel. See `delivery_channel_filter` below.
  /// [deliveryChannelName] The name of the delivery channel.
  /// [resourceChangeDelivery] The configurations for delivery of resource configuration change events. See `resource_change_delivery` below.
  /// [resourceSnapshotDelivery] The configurations for delivery of scheduled resource snapshots. See `resource_snapshot_delivery` below.
  DeliveryChannelState({
    this.deliveryChannelDescription,
    this.deliveryChannelFilter,
    this.deliveryChannelName,
    this.resourceChangeDelivery,
    this.resourceSnapshotDelivery,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'deliveryChannelDescription': ?deliveryChannelDescription,
      'deliveryChannelFilter': ?pulumi.Input.mapOptionalInputValue<DeliveryChannelDeliveryChannelFilter, Map<String, dynamic>>(deliveryChannelFilter, (value) => value.toMap()),
      'deliveryChannelName': ?deliveryChannelName,
      'resourceChangeDelivery': ?pulumi.Input.mapOptionalInputValue<DeliveryChannelResourceChangeDelivery, Map<String, dynamic>>(resourceChangeDelivery, (value) => value.toMap()),
      'resourceSnapshotDelivery': ?pulumi.Input.mapOptionalInputValue<DeliveryChannelResourceSnapshotDelivery, Map<String, dynamic>>(resourceSnapshotDelivery, (value) => value.toMap()),
    };
  }

  factory DeliveryChannelState.fromMap(Map<String, dynamic> map) {
    return DeliveryChannelState(
      deliveryChannelDescription: map['deliveryChannelDescription'] == null ? null : (map['deliveryChannelDescription']! as String).input(),
      deliveryChannelFilter: map['deliveryChannelFilter'] == null ? null : (DeliveryChannelDeliveryChannelFilter.fromMap((map['deliveryChannelFilter']! as Map).cast<String, dynamic>())).input(),
      deliveryChannelName: map['deliveryChannelName'] == null ? null : (map['deliveryChannelName']! as String).input(),
      resourceChangeDelivery: map['resourceChangeDelivery'] == null ? null : (DeliveryChannelResourceChangeDelivery.fromMap((map['resourceChangeDelivery']! as Map).cast<String, dynamic>())).input(),
      resourceSnapshotDelivery: map['resourceSnapshotDelivery'] == null ? null : (DeliveryChannelResourceSnapshotDelivery.fromMap((map['resourceSnapshotDelivery']! as Map).cast<String, dynamic>())).input(),
    );
  }
}

