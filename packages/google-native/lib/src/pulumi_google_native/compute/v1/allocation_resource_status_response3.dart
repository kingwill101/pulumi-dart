// ignore_for_file: unused_element, unnecessary_cast

import 'allocation_resource_status_specific_skuallocation_response3.dart';

/// [Output Only] Contains output only fields.
class AllocationResourceStatusResponse3 {
  /// Allocation Properties of this reservation.
  final AllocationResourceStatusSpecificSKUAllocationResponse3
      specificSkuAllocation;

  AllocationResourceStatusResponse3({
    required this.specificSkuAllocation,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['specificSkuAllocation'] = specificSkuAllocation.toMap();
    return map;
  }

  factory AllocationResourceStatusResponse3.fromMap(Map<String, dynamic> map) {
    return AllocationResourceStatusResponse3(
      specificSkuAllocation:
          AllocationResourceStatusSpecificSKUAllocationResponse3.fromMap(
              (map['specificSkuAllocation'] as Map).cast<String, dynamic>()),
    );
  }
}
