// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'multi_account_delivery_channel_delivery_channel_filter.dart';
import 'multi_account_delivery_channel_resource_change_delivery.dart';
import 'multi_account_delivery_channel_resource_snapshot_delivery.dart';

/// {@template pulumi_resourcemanager_multi_account_delivery_channel_multi_account_delivery_channel_args_doc}
/// The set of arguments for MultiAccountDeliveryChannel.
/// {@endtemplate}
/// {@macro pulumi_resourcemanager_multi_account_delivery_channel_multi_account_delivery_channel_args_doc}
class MultiAccountDeliveryChannelArgs {
  /// The description of the delivery channel.
  final pulumi.Input<String> deliveryChannelDescription;
  /// The effective scope of the delivery channel. See `delivery_channel_filter` below.
  final pulumi.Input<MultiAccountDeliveryChannelDeliveryChannelFilter> deliveryChannelFilter;
  /// The name of the delivery channel.
  final pulumi.Input<String> multiAccountDeliveryChannelName;
  /// The configurations for delivery of resource configuration change events. See `resource_change_delivery` below.
  final pulumi.Input<MultiAccountDeliveryChannelResourceChangeDelivery>? resourceChangeDelivery;
  /// The configurations for delivery of scheduled resource snapshots. See `resource_snapshot_delivery` below.
  final pulumi.Input<MultiAccountDeliveryChannelResourceSnapshotDelivery>? resourceSnapshotDelivery;

  /// Creates a new [MultiAccountDeliveryChannelArgs].
  /// [deliveryChannelDescription] The description of the delivery channel.
  /// [deliveryChannelFilter] The effective scope of the delivery channel. See `delivery_channel_filter` below.
  /// [multiAccountDeliveryChannelName] The name of the delivery channel.
  /// [resourceChangeDelivery] The configurations for delivery of resource configuration change events. See `resource_change_delivery` below.
  /// [resourceSnapshotDelivery] The configurations for delivery of scheduled resource snapshots. See `resource_snapshot_delivery` below.
  const MultiAccountDeliveryChannelArgs({
    required this.deliveryChannelDescription,
    required this.deliveryChannelFilter,
    required this.multiAccountDeliveryChannelName,
    this.resourceChangeDelivery,
    this.resourceSnapshotDelivery,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'deliveryChannelDescription': deliveryChannelDescription,
      'deliveryChannelFilter': pulumi.Input.mapInputValue<MultiAccountDeliveryChannelDeliveryChannelFilter, Map<String, dynamic>>(deliveryChannelFilter, (value) => value.toMap()),
      'multiAccountDeliveryChannelName': multiAccountDeliveryChannelName,
      'resourceChangeDelivery': ?pulumi.Input.mapOptionalInputValue<MultiAccountDeliveryChannelResourceChangeDelivery, Map<String, dynamic>>(resourceChangeDelivery, (value) => value.toMap()),
      'resourceSnapshotDelivery': ?pulumi.Input.mapOptionalInputValue<MultiAccountDeliveryChannelResourceSnapshotDelivery, Map<String, dynamic>>(resourceSnapshotDelivery, (value) => value.toMap()),
    };
  }

  factory MultiAccountDeliveryChannelArgs.fromMap(Map<String, dynamic> map) {
    return MultiAccountDeliveryChannelArgs(
      deliveryChannelDescription: pulumi.Input.fromValue(map['deliveryChannelDescription'] as String),
      deliveryChannelFilter: pulumi.Input.fromValue(MultiAccountDeliveryChannelDeliveryChannelFilter.fromMap((map['deliveryChannelFilter']! as Map).cast<String, dynamic>())),
      multiAccountDeliveryChannelName: pulumi.Input.fromValue(map['multiAccountDeliveryChannelName'] as String),
      resourceChangeDelivery: (() { final guardedValue = map['resourceChangeDelivery']; if (guardedValue == null) return null; return pulumi.Input.fromValue(MultiAccountDeliveryChannelResourceChangeDelivery.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      resourceSnapshotDelivery: (() { final guardedValue = map['resourceSnapshotDelivery']; if (guardedValue == null) return null; return pulumi.Input.fromValue(MultiAccountDeliveryChannelResourceSnapshotDelivery.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}

