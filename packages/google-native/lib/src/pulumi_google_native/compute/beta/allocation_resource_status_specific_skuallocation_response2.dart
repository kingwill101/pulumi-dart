// ignore_for_file: unused_element, unnecessary_cast

/// Contains Properties set for the reservation.
class AllocationResourceStatusSpecificSKUAllocationResponse2 {
  /// ID of the instance template used to populate reservation properties.
  final String sourceInstanceTemplateId;

  AllocationResourceStatusSpecificSKUAllocationResponse2({
    required this.sourceInstanceTemplateId,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['sourceInstanceTemplateId'] = sourceInstanceTemplateId;
    return map;
  }

  factory AllocationResourceStatusSpecificSKUAllocationResponse2.fromMap(
      Map<String, dynamic> map) {
    return AllocationResourceStatusSpecificSKUAllocationResponse2(
      sourceInstanceTemplateId: map['sourceInstanceTemplateId'] as String,
    );
  }
}
