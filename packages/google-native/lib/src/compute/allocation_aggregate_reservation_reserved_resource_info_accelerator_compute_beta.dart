// ignore_for_file: unused_element, unnecessary_cast

class AllocationAggregateReservationReservedResourceInfoAcceleratorComputeBeta {
  /// Number of accelerators of specified type.
  final int? acceleratorCount;

  /// Full or partial URL to accelerator type. e.g. "projects/{PROJECT}/zones/{ZONE}/acceleratorTypes/ct4l"
  final String? acceleratorType;

  /// Creates a new [AllocationAggregateReservationReservedResourceInfoAcceleratorComputeBeta].
  /// [acceleratorCount] Number of accelerators of specified type.
  /// [acceleratorType] Full or partial URL to accelerator type. e.g. "projects/{PROJECT}/zones/{ZONE}/acceleratorTypes/ct4l"
  AllocationAggregateReservationReservedResourceInfoAcceleratorComputeBeta({
    this.acceleratorCount,
    this.acceleratorType,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final acceleratorCountValue = acceleratorCount;
    if (acceleratorCountValue != null) {
      map['acceleratorCount'] = acceleratorCountValue;
    }
    final acceleratorTypeValue = acceleratorType;
    if (acceleratorTypeValue != null) {
      map['acceleratorType'] = acceleratorTypeValue;
    }
    return map;
  }

  factory AllocationAggregateReservationReservedResourceInfoAcceleratorComputeBeta.fromMap(
      Map<String, dynamic> map) {
    return AllocationAggregateReservationReservedResourceInfoAcceleratorComputeBeta(
      acceleratorCount: map['acceleratorCount'] == null
          ? null
          : map['acceleratorCount'] as int,
      acceleratorType: map['acceleratorType'] == null
          ? null
          : map['acceleratorType'] as String,
    );
  }
}
