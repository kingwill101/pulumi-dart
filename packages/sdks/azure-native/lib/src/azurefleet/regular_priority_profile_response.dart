// ignore_for_file: unused_element, unnecessary_cast


/// Configuration Options for Regular instances in Compute Fleet.
class RegularPriorityProfileResponse {
  /// Allocation strategy to follow when determining the VM sizes distribution for Regular VMs.
  final String? allocationStrategy;
  /// Total capacity to achieve. It is currently in terms of number of VMs.
  final int? capacity;
  /// Minimum capacity to achieve which cannot be updated. If we will not be able to "guarantee" minimum capacity, we will reject the request in the sync path itself.
  final int? minCapacity;

  /// Creates a new [RegularPriorityProfileResponse].
  /// [allocationStrategy] Allocation strategy to follow when determining the VM sizes distribution for Regular VMs.
  /// [capacity] Total capacity to achieve. It is currently in terms of number of VMs.
  /// [minCapacity] Minimum capacity to achieve which cannot be updated. If we will not be able to "guarantee" minimum capacity, we will reject the request in the sync path itself.
  RegularPriorityProfileResponse({
    this.allocationStrategy,
    this.capacity,
    this.minCapacity,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'allocationStrategy': ?allocationStrategy,
      'capacity': ?capacity,
      'minCapacity': ?minCapacity,
    };
  }

  factory RegularPriorityProfileResponse.fromMap(Map<String, dynamic> map) {
    return RegularPriorityProfileResponse(
      allocationStrategy: map['allocationStrategy'] == null ? null : map['allocationStrategy'] as String,
      capacity: map['capacity'] == null ? null : map['capacity'] as int,
      minCapacity: map['minCapacity'] == null ? null : map['minCapacity'] as int,
    );
  }
}

