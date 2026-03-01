// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering CapacityReservation resources.
class CapacityReservationState {
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
  final pulumi.Input<int>? instanceAmount;
  /// Instance type. Currently, you can only set the capacity reservation service for one instance type.
  final pulumi.Input<String>? instanceType;
  /// The type of private resource pool generated after the capacity reservation service takes effect. Value range:Open: Open mode.Target: dedicated mode.Default value: Open
  final pulumi.Input<String>? matchCriteria;
  /// The payment type of the resource
  final pulumi.Input<String>? paymentType;
  /// platform of the capacity reservation, value range `windows`, `linux`.
  final pulumi.Input<String>? platform;
  /// The resource group id.
  final pulumi.Input<String>? resourceGroupId;
  /// time of the capacity reservation which become active.
  final pulumi.Input<String>? startTime;
  /// The capacity is scheduled to take effect. Possible values:-Now: Effective immediately.-Later: the specified time takes effect.
  final pulumi.Input<String>? startTimeType;
  /// The status of the capacity reservation.
  final pulumi.Input<String>? status;
  /// The tag of the resource.
  final pulumi.Input<Map<String, String>>? tags;
  /// This parameter is under test and is not yet open for use.
  final pulumi.Input<String>? timeSlot;
  /// The ID of the zone in the region to which the capacity reservation service belongs. Currently, it is only supported to create a capacity reservation service in one zone.
  final pulumi.Input<List<String>>? zoneIds;

  /// Creates a new [CapacityReservationState].
  /// [capacityReservationName] Capacity reservation service name.
  /// [description] description of the capacity reservation instance.
  /// [dryRun] Specifies whether to pre-check the API request. Valid values: `true` and `false`.
  /// [endTime] end time of the capacity reservation. the capacity reservation will be  released at the end time automatically if set. otherwise it will last until manually released
  /// [endTimeType] Release mode of capacity reservation service. Value range:Limited: release at specified time. The EndTime parameter must be specified at the same time.Unlimited: manual release. No time limit.
  /// [instanceAmount] The total number of instances that need to be reserved within the capacity reservation.
  /// [instanceType] Instance type. Currently, you can only set the capacity reservation service for one instance type.
  /// [matchCriteria] The type of private resource pool generated after the capacity reservation service takes effect. Value range:Open: Open mode.Target: dedicated mode.Default value: Open
  /// [paymentType] The payment type of the resource
  /// [platform] platform of the capacity reservation, value range `windows`, `linux`.
  /// [resourceGroupId] The resource group id.
  /// [startTime] time of the capacity reservation which become active.
  /// [startTimeType] The capacity is scheduled to take effect. Possible values:-Now: Effective immediately.-Later: the specified time takes effect.
  /// [status] The status of the capacity reservation.
  /// [tags] The tag of the resource.
  /// [timeSlot] This parameter is under test and is not yet open for use.
  /// [zoneIds] The ID of the zone in the region to which the capacity reservation service belongs. Currently, it is only supported to create a capacity reservation service in one zone.
  CapacityReservationState({
    pulumi.Output<String>? capacityReservationName,
    pulumi.Output<String>? description,
    pulumi.Output<bool>? dryRun,
    pulumi.Output<String>? endTime,
    pulumi.Output<String>? endTimeType,
    pulumi.Output<int>? instanceAmount,
    pulumi.Output<String>? instanceType,
    pulumi.Output<String>? matchCriteria,
    pulumi.Output<String>? paymentType,
    pulumi.Output<String>? platform,
    pulumi.Output<String>? resourceGroupId,
    pulumi.Output<String>? startTime,
    pulumi.Output<String>? startTimeType,
    pulumi.Output<String>? status,
    pulumi.Output<Map<String, String>>? tags,
    pulumi.Output<String>? timeSlot,
    pulumi.Output<List<String>>? zoneIds,
  }) :
      capacityReservationName = pulumi.Input.asOptionalInput<String>(capacityReservationName),
      description = pulumi.Input.asOptionalInput<String>(description),
      dryRun = pulumi.Input.asOptionalInput<bool>(dryRun),
      endTime = pulumi.Input.asOptionalInput<String>(endTime),
      endTimeType = pulumi.Input.asOptionalInput<String>(endTimeType),
      instanceAmount = pulumi.Input.asOptionalInput<int>(instanceAmount),
      instanceType = pulumi.Input.asOptionalInput<String>(instanceType),
      matchCriteria = pulumi.Input.asOptionalInput<String>(matchCriteria),
      paymentType = pulumi.Input.asOptionalInput<String>(paymentType),
      platform = pulumi.Input.asOptionalInput<String>(platform),
      resourceGroupId = pulumi.Input.asOptionalInput<String>(resourceGroupId),
      startTime = pulumi.Input.asOptionalInput<String>(startTime),
      startTimeType = pulumi.Input.asOptionalInput<String>(startTimeType),
      status = pulumi.Input.asOptionalInput<String>(status),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      timeSlot = pulumi.Input.asOptionalInput<String>(timeSlot),
      zoneIds = pulumi.Input.asOptionalInput<List<String>>(zoneIds);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'capacityReservationName': ?capacityReservationName,
      'description': ?description,
      'dryRun': ?dryRun,
      'endTime': ?endTime,
      'endTimeType': ?endTimeType,
      'instanceAmount': ?instanceAmount,
      'instanceType': ?instanceType,
      'matchCriteria': ?matchCriteria,
      'paymentType': ?paymentType,
      'platform': ?platform,
      'resourceGroupId': ?resourceGroupId,
      'startTime': ?startTime,
      'startTimeType': ?startTimeType,
      'status': ?status,
      'tags': ?tags,
      'timeSlot': ?timeSlot,
      'zoneIds': ?zoneIds,
    };
  }

  factory CapacityReservationState.fromMap(Map<String, dynamic> map) {
    return CapacityReservationState(
      capacityReservationName: map['capacityReservationName'] == null ? null : pulumi.Output.create<String>(map['capacityReservationName'] as String),
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      dryRun: map['dryRun'] == null ? null : pulumi.Output.create<bool>(map['dryRun'] as bool),
      endTime: map['endTime'] == null ? null : pulumi.Output.create<String>(map['endTime'] as String),
      endTimeType: map['endTimeType'] == null ? null : pulumi.Output.create<String>(map['endTimeType'] as String),
      instanceAmount: map['instanceAmount'] == null ? null : pulumi.Output.create<int>(map['instanceAmount'] as int),
      instanceType: map['instanceType'] == null ? null : pulumi.Output.create<String>(map['instanceType'] as String),
      matchCriteria: map['matchCriteria'] == null ? null : pulumi.Output.create<String>(map['matchCriteria'] as String),
      paymentType: map['paymentType'] == null ? null : pulumi.Output.create<String>(map['paymentType'] as String),
      platform: map['platform'] == null ? null : pulumi.Output.create<String>(map['platform'] as String),
      resourceGroupId: map['resourceGroupId'] == null ? null : pulumi.Output.create<String>(map['resourceGroupId'] as String),
      startTime: map['startTime'] == null ? null : pulumi.Output.create<String>(map['startTime'] as String),
      startTimeType: map['startTimeType'] == null ? null : pulumi.Output.create<String>(map['startTimeType'] as String),
      status: map['status'] == null ? null : pulumi.Output.create<String>(map['status'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
      timeSlot: map['timeSlot'] == null ? null : pulumi.Output.create<String>(map['timeSlot'] as String),
      zoneIds: map['zoneIds'] == null ? null : pulumi.Output.create<List<String>>((map['zoneIds'] as List).cast<String>()),
    );
  }
}

