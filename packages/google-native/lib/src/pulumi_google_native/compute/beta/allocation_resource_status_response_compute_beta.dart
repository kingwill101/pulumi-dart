// ignore_for_file: unused_element, unnecessary_cast

import 'allocation_resource_status_specific_skuallocation_response_compute_beta.dart';

/// [Output Only] Contains output only fields.
class AllocationResourceStatusResponseComputeBeta {
  /// Allocation Properties of this reservation.
  final AllocationResourceStatusSpecificSKUAllocationResponseComputeBeta
      specificSkuAllocation;

  AllocationResourceStatusResponseComputeBeta({
    required this.specificSkuAllocation,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['specificSkuAllocation'] = specificSkuAllocation.toMap();
    return map;
  }

  factory AllocationResourceStatusResponseComputeBeta.fromMap(
      Map<String, dynamic> map) {
    return AllocationResourceStatusResponseComputeBeta(
      specificSkuAllocation:
          AllocationResourceStatusSpecificSKUAllocationResponseComputeBeta
              .fromMap((map['specificSkuAllocation'] as Map)
                  .cast<String, dynamic>()),
    );
  }
}
