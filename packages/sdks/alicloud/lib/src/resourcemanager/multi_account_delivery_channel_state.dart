// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'multi_account_delivery_channel_delivery_channel_filter.dart';
import 'multi_account_delivery_channel_resource_change_delivery.dart';
import 'multi_account_delivery_channel_resource_snapshot_delivery.dart';

/// Input properties used for looking up and filtering MultiAccountDeliveryChannel resources.
class MultiAccountDeliveryChannelState {
  /// The description of the delivery channel.
  final pulumi.Input<String>? deliveryChannelDescription;
  /// The effective scope of the delivery channel. See `delivery_channel_filter` below.
  final pulumi.Input<MultiAccountDeliveryChannelDeliveryChannelFilter>? deliveryChannelFilter;
  /// The name of the delivery channel.
  final pulumi.Input<String>? multiAccountDeliveryChannelName;
  /// The configurations for delivery of resource configuration change events. See `resource_change_delivery` below.
  final pulumi.Input<MultiAccountDeliveryChannelResourceChangeDelivery>? resourceChangeDelivery;
  /// The configurations for delivery of scheduled resource snapshots. See `resource_snapshot_delivery` below.
  final pulumi.Input<MultiAccountDeliveryChannelResourceSnapshotDelivery>? resourceSnapshotDelivery;

  /// Creates a new [MultiAccountDeliveryChannelState].
  /// [deliveryChannelDescription] The description of the delivery channel.
  /// [deliveryChannelFilter] The effective scope of the delivery channel. See `delivery_channel_filter` below.
  /// [multiAccountDeliveryChannelName] The name of the delivery channel.
  /// [resourceChangeDelivery] The configurations for delivery of resource configuration change events. See `resource_change_delivery` below.
  /// [resourceSnapshotDelivery] The configurations for delivery of scheduled resource snapshots. See `resource_snapshot_delivery` below.
  MultiAccountDeliveryChannelState({
    this.deliveryChannelDescription,
    this.deliveryChannelFilter,
    this.multiAccountDeliveryChannelName,
    this.resourceChangeDelivery,
    this.resourceSnapshotDelivery,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'deliveryChannelDescription': ?deliveryChannelDescription,
      'deliveryChannelFilter': ?pulumi.Input.mapOptionalInputValue<MultiAccountDeliveryChannelDeliveryChannelFilter, Map<String, dynamic>>(deliveryChannelFilter, (value) => value.toMap()),
      'multiAccountDeliveryChannelName': ?multiAccountDeliveryChannelName,
      'resourceChangeDelivery': ?pulumi.Input.mapOptionalInputValue<MultiAccountDeliveryChannelResourceChangeDelivery, Map<String, dynamic>>(resourceChangeDelivery, (value) => value.toMap()),
      'resourceSnapshotDelivery': ?pulumi.Input.mapOptionalInputValue<MultiAccountDeliveryChannelResourceSnapshotDelivery, Map<String, dynamic>>(resourceSnapshotDelivery, (value) => value.toMap()),
    };
  }

  factory MultiAccountDeliveryChannelState.fromMap(Map<String, dynamic> map) {
    return MultiAccountDeliveryChannelState(
      deliveryChannelDescription: map['deliveryChannelDescription'] == null ? null : (map['deliveryChannelDescription']! as String).input(),
      deliveryChannelFilter: map['deliveryChannelFilter'] == null ? null : (MultiAccountDeliveryChannelDeliveryChannelFilter.fromMap((map['deliveryChannelFilter']! as Map).cast<String, dynamic>())).input(),
      multiAccountDeliveryChannelName: map['multiAccountDeliveryChannelName'] == null ? null : (map['multiAccountDeliveryChannelName']! as String).input(),
      resourceChangeDelivery: map['resourceChangeDelivery'] == null ? null : (MultiAccountDeliveryChannelResourceChangeDelivery.fromMap((map['resourceChangeDelivery']! as Map).cast<String, dynamic>())).input(),
      resourceSnapshotDelivery: map['resourceSnapshotDelivery'] == null ? null : (MultiAccountDeliveryChannelResourceSnapshotDelivery.fromMap((map['resourceSnapshotDelivery']! as Map).cast<String, dynamic>())).input(),
    );
  }
}

