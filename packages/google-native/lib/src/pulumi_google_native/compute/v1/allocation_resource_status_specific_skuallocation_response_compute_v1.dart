// ignore_for_file: unused_element, unnecessary_cast

/// Contains Properties set for the reservation.
class AllocationResourceStatusSpecificSKUAllocationResponseComputeV1 {
  /// ID of the instance template used to populate reservation properties.
  final String sourceInstanceTemplateId;

  AllocationResourceStatusSpecificSKUAllocationResponseComputeV1({
    required this.sourceInstanceTemplateId,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['sourceInstanceTemplateId'] = sourceInstanceTemplateId;
    return map;
  }

  factory AllocationResourceStatusSpecificSKUAllocationResponseComputeV1.fromMap(
      Map<String, dynamic> map) {
    return AllocationResourceStatusSpecificSKUAllocationResponseComputeV1(
      sourceInstanceTemplateId: map['sourceInstanceTemplateId'] as String,
    );
  }
}
