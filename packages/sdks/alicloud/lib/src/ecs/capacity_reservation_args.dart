// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_ecs_capacity_reservation_capacity_reservation_args_doc}
/// The set of arguments for CapacityReservation.
/// {@endtemplate}
/// {@macro pulumi_ecs_capacity_reservation_capacity_reservation_args_doc}
class CapacityReservationArgs {
  /// Capacity reservation service name.
  final pulumi.Input<String>? capacityReservationName;
  /// description of the capacity reservation instance.
  final pulumi.Input<String>? description;
  /// Specifies whether to pre-check the API request. Valid values: `true` and `false`.
  final pulumi.Input<bool>? dryRun;
  /// end time of the capacity reservation. the capacity reservation will be  released at the end time automatically if set. otherwise it will last until manually released
  final pulumi.Input<String>? endTime;
  /// Release mode of capacity reservation service. Value range:Limited: release at specified time. The EndTime parameter must be specified at the same time.Unlimited: manual release. No time limit.
  final pulumi.Input<String>? endTimeType;
  /// The total number of instances that need to be reserved within the capacity reservation.
  final pulumi.Input<int> instanceAmount;
  /// Instance type. Currently, you can only set the capacity reservation service for one instance type.
  final pulumi.Input<String> instanceType;
  /// The type of private resource pool generated after the capacity reservation service takes effect. Value range:Open: Open mode.Target: dedicated mode.Default value: Open
  final pulumi.Input<String>? matchCriteria;
  /// platform of the capacity reservation, value range `windows`, `linux`.
  final pulumi.Input<String>? platform;
  /// The resource group id.
  final pulumi.Input<String>? resourceGroupId;
  /// The tag of the resource.
  final pulumi.Input<Map<String, String>>? tags;
  /// The ID of the zone in the region to which the capacity reservation service belongs. Currently, it is only supported to create a capacity reservation service in one zone.
  final pulumi.Input<List<String>> zoneIds;

  /// Creates a new [CapacityReservationArgs].
  /// [capacityReservationName] Capacity reservation service name.
  /// [description] description of the capacity reservation instance.
  /// [dryRun] Specifies whether to pre-check the API request. Valid values: `true` and `false`.
  /// [endTime] end time of the capacity reservation. the capacity reservation will be  released at the end time automatically if set. otherwise it will last until manually released
  /// [endTimeType] Release mode of capacity reservation service. Value range:Limited: release at specified time. The EndTime parameter must be specified at the same time.Unlimited: manual release. No time limit.
  /// [instanceAmount] The total number of instances that need to be reserved within the capacity reservation.
  /// [instanceType] Instance type. Currently, you can only set the capacity reservation service for one instance type.
  /// [matchCriteria] The type of private resource pool generated after the capacity reservation service takes effect. Value range:Open: Open mode.Target: dedicated mode.Default value: Open
  /// [platform] platform of the capacity reservation, value range `windows`, `linux`.
  /// [resourceGroupId] The resource group id.
  /// [tags] The tag of the resource.
  /// [zoneIds] The ID of the zone in the region to which the capacity reservation service belongs. Currently, it is only supported to create a capacity reservation service in one zone.
  const CapacityReservationArgs({
    this.capacityReservationName,
    this.description,
    this.dryRun,
    this.endTime,
    this.endTimeType,
    required this.instanceAmount,
    required this.instanceType,
    this.matchCriteria,
    this.platform,
    this.resourceGroupId,
    this.tags,
    required this.zoneIds,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'capacityReservationName': ?capacityReservationName,
      'description': ?description,
      'dryRun': ?dryRun,
      'endTime': ?endTime,
      'endTimeType': ?endTimeType,
      'instanceAmount': instanceAmount,
      'instanceType': instanceType,
      'matchCriteria': ?matchCriteria,
      'platform': ?platform,
      'resourceGroupId': ?resourceGroupId,
      'tags': ?tags,
      'zoneIds': zoneIds,
    };
  }

  factory CapacityReservationArgs.fromMap(Map<String, dynamic> map) {
    return CapacityReservationArgs(
      capacityReservationName: (() { final guardedValue = map['capacityReservationName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      dryRun: (() { final guardedValue = map['dryRun']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      endTime: (() { final guardedValue = map['endTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      endTimeType: (() { final guardedValue = map['endTimeType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      instanceAmount: pulumi.Input.fromValue(map['instanceAmount'] as int),
      instanceType: pulumi.Input.fromValue(map['instanceType'] as String),
      matchCriteria: (() { final guardedValue = map['matchCriteria']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      platform: (() { final guardedValue = map['platform']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      resourceGroupId: (() { final guardedValue = map['resourceGroupId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      zoneIds: pulumi.Input.fromValue((map['zoneIds'] as List).cast<String>()),
    );
  }
}

