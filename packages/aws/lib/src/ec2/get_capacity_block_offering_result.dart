// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getCapacityBlockOffering.
class GetCapacityBlockOfferingResult {
  /// The Availability Zone in which to create the Capacity Reservation.
  final String availabilityZone;
  /// The Capacity Block Reservation ID.
  final String capacityBlockOfferingId;
  final int capacityDurationHours;
  /// The currency of the payment for the Capacity Block.
  final String currencyCode;
  final String endDateRange;
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  final int instanceCount;
  final String instanceType;
  final String region;
  final String startDateRange;
  /// Indicates the tenancy of the Capacity Reservation. Specify either `default` or `dedicated`.
  final String tenancy;
  /// The total price to be paid up front.
  final String upfrontFee;

  /// Creates a new [GetCapacityBlockOfferingResult].
  /// [availabilityZone] The Availability Zone in which to create the Capacity Reservation.
  /// [capacityBlockOfferingId] The Capacity Block Reservation ID.
  /// [capacityDurationHours] Required.
  /// [currencyCode] The currency of the payment for the Capacity Block.
  /// [endDateRange] Required.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [instanceCount] Required.
  /// [instanceType] Required.
  /// [region] Required.
  /// [startDateRange] Required.
  /// [tenancy] Indicates the tenancy of the Capacity Reservation. Specify either `default` or `dedicated`.
  /// [upfrontFee] The total price to be paid up front.
  GetCapacityBlockOfferingResult({
    required this.availabilityZone,
    required this.capacityBlockOfferingId,
    required this.capacityDurationHours,
    required this.currencyCode,
    required this.endDateRange,
    required this.id,
    required this.instanceCount,
    required this.instanceType,
    required this.region,
    required this.startDateRange,
    required this.tenancy,
    required this.upfrontFee,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'availabilityZone': availabilityZone,
      'capacityBlockOfferingId': capacityBlockOfferingId,
      'capacityDurationHours': capacityDurationHours,
      'currencyCode': currencyCode,
      'endDateRange': endDateRange,
      'id': id,
      'instanceCount': instanceCount,
      'instanceType': instanceType,
      'region': region,
      'startDateRange': startDateRange,
      'tenancy': tenancy,
      'upfrontFee': upfrontFee,
    };
  }

  factory GetCapacityBlockOfferingResult.fromMap(Map<String, dynamic> map) {
    return GetCapacityBlockOfferingResult(
      availabilityZone: map['availabilityZone'] as String,
      capacityBlockOfferingId: map['capacityBlockOfferingId'] as String,
      capacityDurationHours: map['capacityDurationHours'] as int,
      currencyCode: map['currencyCode'] as String,
      endDateRange: map['endDateRange'] as String,
      id: map['id'] as String,
      instanceCount: map['instanceCount'] as int,
      instanceType: map['instanceType'] as String,
      region: map['region'] as String,
      startDateRange: map['startDateRange'] as String,
      tenancy: map['tenancy'] as String,
      upfrontFee: map['upfrontFee'] as String,
    );
  }
}

