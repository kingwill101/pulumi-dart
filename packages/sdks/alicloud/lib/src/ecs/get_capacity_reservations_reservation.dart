// ignore_for_file: unused_element, unnecessary_cast


class GetCapacityReservationsReservation {
  /// Capacity Reservation id
  final String capacityReservationId;
  /// Capacity reservation service name.
  final String capacityReservationName;
  /// description of the capacity reservation instance
  final String description;
  /// end time of the capacity reservation. the capacity reservation will be  released at the end time automatically if set. otherwise it will last until manually released
  final String endTime;
  /// Release mode of capacity reservation service. Value range:Limited: release at specified time. The EndTime parameter must be specified at the same time.Unlimited: manual release. No time limit.
  final String endTimeType;
  /// The ID of the Capacity Reservation.
  final String id;
  /// The total number of instances that need to be reserved within the capacity reservation
  final String instanceAmount;
  /// Instance type. Currently, you can only set the capacity reservation service for one instance type.
  final String instanceType;
  /// The type of private resource pool generated after the capacity reservation service takes effect. Value range:Open: Open mode.Target: dedicated mode.Default value: Open
  final String matchCriteria;
  /// The payment type of the resource. value range `PostPaid`, `PrePaid`.
  final String paymentType;
  /// platform of the capacity reservation , value range `windows`, `linux`, `all`.
  final String platform;
  /// The resource group id.
  final String resourceGroupId;
  /// time of the capacity reservation which become active
  final String startTime;
  /// The capacity is scheduled to take effect. Possible values:-Now: Effective immediately.-Later: the specified time takes effect.
  final String startTimeType;
  /// The status of the capacity reservation. value range `All`, `Pending`, `Preparing`, `Prepared`, `Active`, `Released`.
  final String status;
  /// The tag of the resource.
  final Map<String, String>? tags;
  /// This parameter is under test and is not yet open for use.
  final String timeSlot;
  /// The ID of the zone in the region to which the capacity reservation service belongs. Currently, it is only supported to create a capacity reservation service in one zone.
  final List<String> zoneIds;

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
      capacityReservationId: map['capacityReservationId'] as String,
      capacityReservationName: map['capacityReservationName'] as String,
      description: map['description'] as String,
      endTime: map['endTime'] as String,
      endTimeType: map['endTimeType'] as String,
      id: map['id'] as String,
      instanceAmount: map['instanceAmount'] as String,
      instanceType: map['instanceType'] as String,
      matchCriteria: map['matchCriteria'] as String,
      paymentType: map['paymentType'] as String,
      platform: map['platform'] as String,
      resourceGroupId: map['resourceGroupId'] as String,
      startTime: map['startTime'] as String,
      startTimeType: map['startTimeType'] as String,
      status: map['status'] as String,
      tags: map['tags'] == null ? null : (map['tags'] as Map).cast<String, String>(),
      timeSlot: map['timeSlot'] as String,
      zoneIds: (map['zoneIds'] as List).cast<String>(),
    );
  }
}

