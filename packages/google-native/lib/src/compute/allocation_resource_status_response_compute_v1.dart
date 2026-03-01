// ignore_for_file: unused_element, unnecessary_cast

import 'allocation_resource_status_specific_skuallocation_response_compute_v1.dart';

/// [Output Only] Contains output only fields.
class AllocationResourceStatusResponseComputeV1 {
  /// Allocation Properties of this reservation.
  final AllocationResourceStatusSpecificSKUAllocationResponseComputeV1
  specificSkuAllocation;

  /// Creates a new [AllocationResourceStatusResponseComputeV1].
  /// [specificSkuAllocation] Allocation Properties of this reservation.
  AllocationResourceStatusResponseComputeV1({
    required this.specificSkuAllocation,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'specificSkuAllocation': specificSkuAllocation.toMap(),
    };
  }

  factory AllocationResourceStatusResponseComputeV1.fromMap(
    Map<String, dynamic> map,
  ) {
    return AllocationResourceStatusResponseComputeV1(
      specificSkuAllocation:
          AllocationResourceStatusSpecificSKUAllocationResponseComputeV1.fromMap(
            (map['specificSkuAllocation'] as Map).cast<String, dynamic>(),
          ),
    );
  }
}
