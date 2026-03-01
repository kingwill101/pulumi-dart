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
  MultiAccountDeliveryChannelArgs({
    required pulumi.Output<String> deliveryChannelDescription,
    required pulumi.Output<MultiAccountDeliveryChannelDeliveryChannelFilter> deliveryChannelFilter,
    required pulumi.Output<String> multiAccountDeliveryChannelName,
    pulumi.Output<MultiAccountDeliveryChannelResourceChangeDelivery>? resourceChangeDelivery,
    pulumi.Output<MultiAccountDeliveryChannelResourceSnapshotDelivery>? resourceSnapshotDelivery,
  }) :
      deliveryChannelDescription = pulumi.Input.asInput<String>(deliveryChannelDescription),
      deliveryChannelFilter = pulumi.Input.asInput<MultiAccountDeliveryChannelDeliveryChannelFilter>(deliveryChannelFilter),
      multiAccountDeliveryChannelName = pulumi.Input.asInput<String>(multiAccountDeliveryChannelName),
      resourceChangeDelivery = pulumi.Input.asOptionalInput<MultiAccountDeliveryChannelResourceChangeDelivery>(resourceChangeDelivery),
      resourceSnapshotDelivery = pulumi.Input.asOptionalInput<MultiAccountDeliveryChannelResourceSnapshotDelivery>(resourceSnapshotDelivery);

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
      deliveryChannelDescription: pulumi.Output.create<String>(map['deliveryChannelDescription'] as String),
      deliveryChannelFilter: pulumi.Output.create<MultiAccountDeliveryChannelDeliveryChannelFilter>(MultiAccountDeliveryChannelDeliveryChannelFilter.fromMap((map['deliveryChannelFilter'] as Map).cast<String, dynamic>())),
      multiAccountDeliveryChannelName: pulumi.Output.create<String>(map['multiAccountDeliveryChannelName'] as String),
      resourceChangeDelivery: map['resourceChangeDelivery'] == null ? null : pulumi.Output.create<MultiAccountDeliveryChannelResourceChangeDelivery>(MultiAccountDeliveryChannelResourceChangeDelivery.fromMap((map['resourceChangeDelivery'] as Map).cast<String, dynamic>())),
      resourceSnapshotDelivery: map['resourceSnapshotDelivery'] == null ? null : pulumi.Output.create<MultiAccountDeliveryChannelResourceSnapshotDelivery>(MultiAccountDeliveryChannelResourceSnapshotDelivery.fromMap((map['resourceSnapshotDelivery'] as Map).cast<String, dynamic>())),
    );
  }
}

