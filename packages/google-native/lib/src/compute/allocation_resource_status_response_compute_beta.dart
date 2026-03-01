// ignore_for_file: unused_element, unnecessary_cast

import 'allocation_resource_status_specific_skuallocation_response_compute_beta.dart';

/// [Output Only] Contains output only fields.
class AllocationResourceStatusResponseComputeBeta {
  /// Allocation Properties of this reservation.
  final AllocationResourceStatusSpecificSKUAllocationResponseComputeBeta
  specificSkuAllocation;

  /// Creates a new [AllocationResourceStatusResponseComputeBeta].
  /// [specificSkuAllocation] Allocation Properties of this reservation.
  AllocationResourceStatusResponseComputeBeta({
    required this.specificSkuAllocation,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'specificSkuAllocation': specificSkuAllocation.toMap(),
    };
  }

  factory AllocationResourceStatusResponseComputeBeta.fromMap(
    Map<String, dynamic> map,
  ) {
    return AllocationResourceStatusResponseComputeBeta(
      specificSkuAllocation:
          AllocationResourceStatusSpecificSKUAllocationResponseComputeBeta.fromMap(
            (map['specificSkuAllocation'] as Map).cast<String, dynamic>(),
          ),
    );
  }
}
