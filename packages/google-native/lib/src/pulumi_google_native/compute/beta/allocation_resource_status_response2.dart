// ignore_for_file: unused_element, unnecessary_cast

import 'allocation_resource_status_specific_skuallocation_response2.dart';

/// [Output Only] Contains output only fields.
class AllocationResourceStatusResponse2 {
  /// Allocation Properties of this reservation.
  final AllocationResourceStatusSpecificSKUAllocationResponse2
      specificSkuAllocation;

  AllocationResourceStatusResponse2({
    required this.specificSkuAllocation,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['specificSkuAllocation'] = specificSkuAllocation.toMap();
    return map;
  }

  factory AllocationResourceStatusResponse2.fromMap(Map<String, dynamic> map) {
    return AllocationResourceStatusResponse2(
      specificSkuAllocation:
          AllocationResourceStatusSpecificSKUAllocationResponse2.fromMap(
              (map['specificSkuAllocation'] as Map).cast<String, dynamic>()),
    );
  }
}
