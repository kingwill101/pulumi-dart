// ignore_for_file: unused_element, unnecessary_cast

import 'allocation_resource_status_specific_skuallocation_response.dart';

/// [Output Only] Contains output only fields.
class AllocationResourceStatusResponse {
  /// Allocation Properties of this reservation.
  final AllocationResourceStatusSpecificSKUAllocationResponse
      specificSkuAllocation;

  AllocationResourceStatusResponse({
    required this.specificSkuAllocation,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['specificSkuAllocation'] = specificSkuAllocation.toMap();
    return map;
  }

  factory AllocationResourceStatusResponse.fromMap(Map<String, dynamic> map) {
    return AllocationResourceStatusResponse(
      specificSkuAllocation:
          AllocationResourceStatusSpecificSKUAllocationResponse.fromMap(
              (map['specificSkuAllocation'] as Map).cast<String, dynamic>()),
    );
  }
}
