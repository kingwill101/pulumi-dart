// ignore_for_file: unused_element, unnecessary_cast

class AllocationAggregateReservationReservedResourceInfoAcceleratorResponse {
  /// Number of accelerators of specified type.
  final int acceleratorCount;

  /// Full or partial URL to accelerator type. e.g. "projects/{PROJECT}/zones/{ZONE}/acceleratorTypes/ct4l"
  final String acceleratorType;

  AllocationAggregateReservationReservedResourceInfoAcceleratorResponse({
    required this.acceleratorCount,
    required this.acceleratorType,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['acceleratorCount'] = acceleratorCount;
    map['acceleratorType'] = acceleratorType;
    return map;
  }

  factory AllocationAggregateReservationReservedResourceInfoAcceleratorResponse.fromMap(
      Map<String, dynamic> map) {
    return AllocationAggregateReservationReservedResourceInfoAcceleratorResponse(
      acceleratorCount: map['acceleratorCount'] as int,
      acceleratorType: map['acceleratorType'] as String,
    );
  }
}
