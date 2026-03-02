// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetCapacityReservationsReservation {
  /// Capacity Reservation id
  final pulumi.Input<String> capacityReservationId;
  /// Capacity reservation service name.
  final pulumi.Input<String> capacityReservationName;
  /// description of the capacity reservation instance
  final pulumi.Input<String> description;
  /// end time of the capacity reservation. the capacity reservation will be  released at the end time automatically if set. otherwise it will last until manually released
  final pulumi.Input<String> endTime;
  /// Release mode of capacity reservation service. Value range:Limited: release at specified time. The EndTime parameter must be specified at the same time.Unlimited: manual release. No time limit.
  final pulumi.Input<String> endTimeType;
  /// The ID of the Capacity Reservation.
  final pulumi.Input<String> id;
  /// The total number of instances that need to be reserved within the capacity reservation
  final pulumi.Input<String> instanceAmount;
  /// Instance type. Currently, you can only set the capacity reservation service for one instance type.
  final pulumi.Input<String> instanceType;
  /// The type of private resource pool generated after the capacity reservation service takes effect. Value range:Open: Open mode.Target: dedicated mode.Default value: Open
  final pulumi.Input<String> matchCriteria;
  /// The payment type of the resource. value range `PostPaid`, `PrePaid`.
  final pulumi.Input<String> paymentType;
  /// platform of the capacity reservation , value range `windows`, `linux`, `all`.
  final pulumi.Input<String> platform;
  /// The resource group id.
  final pulumi.Input<String> resourceGroupId;
  /// time of the capacity reservation which become active
  final pulumi.Input<String> startTime;
  /// The capacity is scheduled to take effect. Possible values:-Now: Effective immediately.-Later: the specified time takes effect.
  final pulumi.Input<String> startTimeType;
  /// The status of the capacity reservation. value range `All`, `Pending`, `Preparing`, `Prepared`, `Active`, `Released`.
  final pulumi.Input<String> status;
  /// The tag of the resource.
  final pulumi.Input<Map<String, String>>? tags;
  /// This parameter is under test and is not yet open for use.
  final pulumi.Input<String> timeSlot;
  /// The ID of the zone in the region to which the capacity reservation service belongs. Currently, it is only supported to create a capacity reservation service in one zone.
  final pulumi.Input<List<String>> zoneIds;

  /// Creates a new [GetCapacityReservationsReservation].
  /// [capacityReservationId] Capacity Reservation id
  /// [capacityReservationName] Capacity reservation service name.
  /// [description] description of the capacity reservation instance
  /// [endTime] end time of the capacity reservation. the capacity reservation will be  released at the end time automatically if set. otherwise it will last until manually released
  /// [endTimeType] Release mode of capacity reservation service. Value range:Limited: release at specified time. The EndTime parameter must be specified at the same time.Unlimited: manual release. No time limit.
  /// [id] The ID of the Capacity Reservation.
  /// [instanceAmount] The total number of instances that need to be reserved within the capacity reservation
  /// [instanceType] Instance type. Currently, you can only set the capacity reservation service for one instance type.
  /// [matchCriteria] The type of private resource pool generated after the capacity reservation service takes effect. Value range:Open: Open mode.Target: dedicated mode.Default value: Open
  /// [paymentType] The payment type of the resource. value range `PostPaid`, `PrePaid`.
  /// [platform] platform of the capacity reservation , value range `windows`, `linux`, `all`.
  /// [resourceGroupId] The resource group id.
  /// [startTime] time of the capacity reservation which become active
  /// [startTimeType] The capacity is scheduled to take effect. Possible values:-Now: Effective immediately.-Later: the specified time takes effect.
  /// [status] The status of the capacity reservation. value range `All`, `Pending`, `Preparing`, `Prepared`, `Active`, `Released`.
  /// [tags] The tag of the resource.
  /// [timeSlot] This parameter is under test and is not yet open for use.
  /// [zoneIds] The ID of the zone in the region to which the capacity reservation service belongs. Currently, it is only supported to create a capacity reservation service in one zone.
  GetCapacityReservationsReservation({
    required this.capacityReservationId,
    required this.capacityReservationName,
    required this.description,
    required this.endTime,
    required this.endTimeType,
    required this.id,
    required this.instanceAmount,
    required this.instanceType,
    required this.matchCriteria,
    required this.paymentType,
    required this.platform,
    required this.resourceGroupId,
    required this.startTime,
    required this.startTimeType,
    required this.status,
    this.tags,
    required this.timeSlot,
    required this.zoneIds,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'capacityReservationId': capacityReservationId,
      'capacityReservationName': capacityReservationName,
      'description': description,
      'endTime': endTime,
      'endTimeType': endTimeType,
      'id': id,
      'instanceAmount': instanceAmount,
      'instanceType': instanceType,
      'matchCriteria': matchCriteria,
      'paymentType': paymentType,
      'platform': platform,
      'resourceGroupId': resourceGroupId,
      'startTime': startTime,
      'startTimeType': startTimeType,
      'status': status,
      'tags': ?tags,
      'timeSlot': timeSlot,
      'zoneIds': zoneIds,
    };
  }

  factory GetCapacityReservationsReservation.fromMap(Map<String, dynamic> map) {
    return GetCapacityReservationsReservation(
      capacityReservationId: (map['capacityReservationId'] as String).input(),
      capacityReservationName: (map['capacityReservationName'] as String).input(),
      description: (map['description'] as String).input(),
      endTime: (map['endTime'] as String).input(),
      endTimeType: (map['endTimeType'] as String).input(),
      id: (map['id'] as String).input(),
      instanceAmount: (map['instanceAmount'] as String).input(),
      instanceType: (map['instanceType'] as String).input(),
      matchCriteria: (map['matchCriteria'] as String).input(),
      paymentType: (map['paymentType'] as String).input(),
      platform: (map['platform'] as String).input(),
      resourceGroupId: (map['resourceGroupId'] as String).input(),
      startTime: (map['startTime'] as String).input(),
      startTimeType: (map['startTimeType'] as String).input(),
      status: (map['status'] as String).input(),
      tags: map['tags'] == null ? null : ((map['tags']! as Map).cast<String, String>()).input(),
      timeSlot: (map['timeSlot'] as String).input(),
      zoneIds: ((map['zoneIds'] as List).cast<String>()).input(),
    );
  }
}

