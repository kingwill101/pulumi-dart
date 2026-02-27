// ignore_for_file: unused_element, unnecessary_cast

class InternalRangeAllocationOptions {
  /// Optional. Sets the strategy used to automatically find a free range of a size given by prefixLength. Can be set only when trying to create a reservation that automatically finds the free range to reserve.
  /// Possible values are: `RANDOM`, `FIRST_AVAILABLE`, `RANDOM_FIRST_N_AVAILABLE`, `FIRST_SMALLEST_FITTING`.
  final String? allocationStrategy;

  /// Must be set when allocation_strategy is RANDOM_FIRST_N_AVAILABLE, otherwise must remain unset. Defines the size of the set of free ranges from which RANDOM_FIRST_N_AVAILABLE strategy randomy selects one,
  /// in other words it sets the N in the RANDOM_FIRST_N_AVAILABLE.
  final int? firstAvailableRangesLookupSize;

  InternalRangeAllocationOptions({
    this.allocationStrategy,
    this.firstAvailableRangesLookupSize,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final allocationStrategyValue = allocationStrategy;
    if (allocationStrategyValue != null) {
      map['allocationStrategy'] = allocationStrategyValue;
    }
    final firstAvailableRangesLookupSizeValue = firstAvailableRangesLookupSize;
    if (firstAvailableRangesLookupSizeValue != null) {
      map['firstAvailableRangesLookupSize'] =
          firstAvailableRangesLookupSizeValue;
    }
    return map;
  }

  factory InternalRangeAllocationOptions.fromMap(Map<String, dynamic> map) {
    return InternalRangeAllocationOptions(
      allocationStrategy: map['allocationStrategy'] == null
          ? null
          : map['allocationStrategy'] as String,
      firstAvailableRangesLookupSize:
          map['firstAvailableRangesLookupSize'] == null
              ? null
              : map['firstAvailableRangesLookupSize'] as int,
    );
  }
}
