// ignore_for_file: unused_element, unnecessary_cast

class FutureReservationAggregateReservationReservedResourceAccelerator {
  /// Number of accelerators of specified type.
  final int? acceleratorCount;

  /// Full or partial URL to accelerator type. e.g. "projects/{PROJECT}/zones/{ZONE}/acceleratorTypes/ct4l"
  final String? acceleratorType;

  /// Creates a new [FutureReservationAggregateReservationReservedResourceAccelerator].
  /// [acceleratorCount] Number of accelerators of specified type.
  /// [acceleratorType] Full or partial URL to accelerator type. e.g. "projects/{PROJECT}/zones/{ZONE}/acceleratorTypes/ct4l"
  FutureReservationAggregateReservationReservedResourceAccelerator({
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

  factory FutureReservationAggregateReservationReservedResourceAccelerator.fromMap(
      Map<String, dynamic> map) {
    return FutureReservationAggregateReservationReservedResourceAccelerator(
      acceleratorCount: map['acceleratorCount'] == null
          ? null
          : map['acceleratorCount'] as int,
      acceleratorType: map['acceleratorType'] == null
          ? null
          : map['acceleratorType'] as String,
    );
  }
}
