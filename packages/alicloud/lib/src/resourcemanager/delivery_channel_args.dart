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
  final pulumi.Input<DeliveryChannelDeliveryChannelFilter> deliveryChannelFilter;
  /// The name of the delivery channel.
  final pulumi.Input<String> deliveryChannelName;
  /// The configurations for delivery of resource configuration change events. See `resource_change_delivery` below.
  final pulumi.Input<DeliveryChannelResourceChangeDelivery>? resourceChangeDelivery;
  /// The configurations for delivery of scheduled resource snapshots. See `resource_snapshot_delivery` below.
  final pulumi.Input<DeliveryChannelResourceSnapshotDelivery>? resourceSnapshotDelivery;

  /// Creates a new [DeliveryChannelArgs].
  /// [deliveryChannelDescription] The description of the delivery channel.
  /// [deliveryChannelFilter] The effective scope of the delivery channel. See `delivery_channel_filter` below.
  /// [deliveryChannelName] The name of the delivery channel.
  /// [resourceChangeDelivery] The configurations for delivery of resource configuration change events. See `resource_change_delivery` below.
  /// [resourceSnapshotDelivery] The configurations for delivery of scheduled resource snapshots. See `resource_snapshot_delivery` below.
  DeliveryChannelArgs({
    String? deliveryChannelDescription,
    required DeliveryChannelDeliveryChannelFilter deliveryChannelFilter,
    required String deliveryChannelName,
    DeliveryChannelResourceChangeDelivery? resourceChangeDelivery,
    DeliveryChannelResourceSnapshotDelivery? resourceSnapshotDelivery,
  }) :
      deliveryChannelDescription = pulumi.Input.asOptionalInput<String>(deliveryChannelDescription),
      deliveryChannelFilter = pulumi.Input.asInput<DeliveryChannelDeliveryChannelFilter>(deliveryChannelFilter),
      deliveryChannelName = pulumi.Input.asInput<String>(deliveryChannelName),
      resourceChangeDelivery = pulumi.Input.asOptionalInput<DeliveryChannelResourceChangeDelivery>(resourceChangeDelivery),
      resourceSnapshotDelivery = pulumi.Input.asOptionalInput<DeliveryChannelResourceSnapshotDelivery>(resourceSnapshotDelivery);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'deliveryChannelDescription': ?deliveryChannelDescription,
      'deliveryChannelFilter': pulumi.Input.mapInputValue<DeliveryChannelDeliveryChannelFilter, Map<String, dynamic>>(deliveryChannelFilter, (value) => value.toMap()),
      'deliveryChannelName': deliveryChannelName,
      'resourceChangeDelivery': ?pulumi.Input.mapOptionalInputValue<DeliveryChannelResourceChangeDelivery, Map<String, dynamic>>(resourceChangeDelivery, (value) => value.toMap()),
      'resourceSnapshotDelivery': ?pulumi.Input.mapOptionalInputValue<DeliveryChannelResourceSnapshotDelivery, Map<String, dynamic>>(resourceSnapshotDelivery, (value) => value.toMap()),
    };
  }

  factory DeliveryChannelArgs.fromMap(Map<String, dynamic> map) {
    return DeliveryChannelArgs(
      deliveryChannelDescription: map['deliveryChannelDescription'] == null ? null : map['deliveryChannelDescription'] as String,
      deliveryChannelFilter: DeliveryChannelDeliveryChannelFilter.fromMap((map['deliveryChannelFilter'] as Map).cast<String, dynamic>()),
      deliveryChannelName: map['deliveryChannelName'] as String,
      resourceChangeDelivery: map['resourceChangeDelivery'] == null ? null : DeliveryChannelResourceChangeDelivery.fromMap((map['resourceChangeDelivery'] as Map).cast<String, dynamic>()),
      resourceSnapshotDelivery: map['resourceSnapshotDelivery'] == null ? null : DeliveryChannelResourceSnapshotDelivery.fromMap((map['resourceSnapshotDelivery'] as Map).cast<String, dynamic>()),
    );
  }
}

