// ignore_for_file: unused_element, unnecessary_cast

import 'allocation_resource_status_specific_skuallocation_response_compute_v1.dart';

/// [Output Only] Contains output only fields.
class AllocationResourceStatusResponseComputeV1 {
  /// Allocation Properties of this reservation.
  final AllocationResourceStatusSpecificSKUAllocationResponseComputeV1
      specificSkuAllocation;

  AllocationResourceStatusResponseComputeV1({
    required this.specificSkuAllocation,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['specificSkuAllocation'] = specificSkuAllocation.toMap();
    return map;
  }

  factory AllocationResourceStatusResponseComputeV1.fromMap(
      Map<String, dynamic> map) {
    return AllocationResourceStatusResponseComputeV1(
      specificSkuAllocation:
          AllocationResourceStatusSpecificSKUAllocationResponseComputeV1
              .fromMap((map['specificSkuAllocation'] as Map)
                  .cast<String, dynamic>()),
    );
  }
}
