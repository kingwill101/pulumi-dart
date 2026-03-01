// ignore_for_file: unused_element, unnecessary_cast

class FutureReservationSpecificSkuPropertiesInstancePropertiesGuestAccelerator {
  /// The number of the guest accelerator cards exposed to this instance.
  final int? acceleratorCount;

  /// Full or partial URL of the accelerator type resource to attach to this instance.
  final String? acceleratorType;

  /// Creates a new [FutureReservationSpecificSkuPropertiesInstancePropertiesGuestAccelerator].
  /// [acceleratorCount] The number of the guest accelerator cards exposed to this instance.
  /// [acceleratorType] Full or partial URL of the accelerator type resource to attach to this instance.
  FutureReservationSpecificSkuPropertiesInstancePropertiesGuestAccelerator({
    this.acceleratorCount,
    this.acceleratorType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'acceleratorCount': ?acceleratorCount,
      'acceleratorType': ?acceleratorType,
    };
  }

  factory FutureReservationSpecificSkuPropertiesInstancePropertiesGuestAccelerator.fromMap(
    Map<String, dynamic> map,
  ) {
    return FutureReservationSpecificSkuPropertiesInstancePropertiesGuestAccelerator(
      acceleratorCount: map['acceleratorCount'] == null
          ? null
          : map['acceleratorCount'] as int,
      acceleratorType: map['acceleratorType'] == null
          ? null
          : map['acceleratorType'] as String,
    );
  }
}
