// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getCapacityBlockOffering.
class GetCapacityBlockOfferingResult {
  /// The Availability Zone in which to create the Capacity Reservation.
  final String? availabilityZone;
  /// The Capacity Block Reservation ID.
  final String? capacityBlockOfferingId;
  final int? capacityDurationHours;
  /// The currency of the payment for the Capacity Block.
  final String? currencyCode;
  final String? endDateRange;
  final int? instanceCount;
  final String? instanceType;
  final String? region;
  final String? startDateRange;
  /// Indicates the tenancy of the Capacity Reservation. Specify either `default` or `dedicated`.
  final String? tenancy;
  /// The total price to be paid up front.
  final String? upfrontFee;

  /// Creates a new [GetCapacityBlockOfferingResult].
  /// [availabilityZone] The Availability Zone in which to create the Capacity Reservation.
  /// [capacityBlockOfferingId] The Capacity Block Reservation ID.
  /// [capacityDurationHours] Optional.
  /// [currencyCode] The currency of the payment for the Capacity Block.
  /// [endDateRange] Optional.
  /// [instanceCount] Optional.
  /// [instanceType] Optional.
  /// [region] Optional.
  /// [startDateRange] Optional.
  /// [tenancy] Indicates the tenancy of the Capacity Reservation. Specify either `default` or `dedicated`.
  /// [upfrontFee] The total price to be paid up front.
  const GetCapacityBlockOfferingResult({
    this.availabilityZone,
    this.capacityBlockOfferingId,
    this.capacityDurationHours,
    this.currencyCode,
    this.endDateRange,
    this.instanceCount,
    this.instanceType,
    this.region,
    this.startDateRange,
    this.tenancy,
    this.upfrontFee,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'availabilityZone': ?availabilityZone,
      'capacityBlockOfferingId': ?capacityBlockOfferingId,
      'capacityDurationHours': ?capacityDurationHours,
      'currencyCode': ?currencyCode,
      'endDateRange': ?endDateRange,
      'instanceCount': ?instanceCount,
      'instanceType': ?instanceType,
      'region': ?region,
      'startDateRange': ?startDateRange,
      'tenancy': ?tenancy,
      'upfrontFee': ?upfrontFee,
    };
  }

  factory GetCapacityBlockOfferingResult.fromMap(Map<String, dynamic> map) {
    return GetCapacityBlockOfferingResult(
      availabilityZone: (() { final guardedValue = map['availabilityZone']; if (guardedValue == null) return null; return guardedValue as String; })(),
      capacityBlockOfferingId: (() { final guardedValue = map['capacityBlockOfferingId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      capacityDurationHours: (() { final guardedValue = map['capacityDurationHours']; if (guardedValue == null) return null; return (guardedValue as num).toInt(); })(),
      currencyCode: (() { final guardedValue = map['currencyCode']; if (guardedValue == null) return null; return guardedValue as String; })(),
      endDateRange: (() { final guardedValue = map['endDateRange']; if (guardedValue == null) return null; return guardedValue as String; })(),
      instanceCount: (() { final guardedValue = map['instanceCount']; if (guardedValue == null) return null; return (guardedValue as num).toInt(); })(),
      instanceType: (() { final guardedValue = map['instanceType']; if (guardedValue == null) return null; return guardedValue as String; })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return guardedValue as String; })(),
      startDateRange: (() { final guardedValue = map['startDateRange']; if (guardedValue == null) return null; return guardedValue as String; })(),
      tenancy: (() { final guardedValue = map['tenancy']; if (guardedValue == null) return null; return guardedValue as String; })(),
      upfrontFee: (() { final guardedValue = map['upfrontFee']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
