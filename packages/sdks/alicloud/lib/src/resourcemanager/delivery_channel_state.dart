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
    pulumi.Output<String>? deliveryChannelDescription,
    pulumi.Output<DeliveryChannelDeliveryChannelFilter>? deliveryChannelFilter,
    pulumi.Output<String>? deliveryChannelName,
    pulumi.Output<DeliveryChannelResourceChangeDelivery>? resourceChangeDelivery,
    pulumi.Output<DeliveryChannelResourceSnapshotDelivery>? resourceSnapshotDelivery,
  }) :
      deliveryChannelDescription = pulumi.Input.asOptionalInput<String>(deliveryChannelDescription),
      deliveryChannelFilter = pulumi.Input.asOptionalInput<DeliveryChannelDeliveryChannelFilter>(deliveryChannelFilter),
      deliveryChannelName = pulumi.Input.asOptionalInput<String>(deliveryChannelName),
      resourceChangeDelivery = pulumi.Input.asOptionalInput<DeliveryChannelResourceChangeDelivery>(resourceChangeDelivery),
      resourceSnapshotDelivery = pulumi.Input.asOptionalInput<DeliveryChannelResourceSnapshotDelivery>(resourceSnapshotDelivery);

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
      deliveryChannelDescription: map['deliveryChannelDescription'] == null ? null : pulumi.Output.create<String>(map['deliveryChannelDescription'] as String),
      deliveryChannelFilter: map['deliveryChannelFilter'] == null ? null : pulumi.Output.create<DeliveryChannelDeliveryChannelFilter>(DeliveryChannelDeliveryChannelFilter.fromMap((map['deliveryChannelFilter'] as Map).cast<String, dynamic>())),
      deliveryChannelName: map['deliveryChannelName'] == null ? null : pulumi.Output.create<String>(map['deliveryChannelName'] as String),
      resourceChangeDelivery: map['resourceChangeDelivery'] == null ? null : pulumi.Output.create<DeliveryChannelResourceChangeDelivery>(DeliveryChannelResourceChangeDelivery.fromMap((map['resourceChangeDelivery'] as Map).cast<String, dynamic>())),
      resourceSnapshotDelivery: map['resourceSnapshotDelivery'] == null ? null : pulumi.Output.create<DeliveryChannelResourceSnapshotDelivery>(DeliveryChannelResourceSnapshotDelivery.fromMap((map['resourceSnapshotDelivery'] as Map).cast<String, dynamic>())),
    );
  }
}

