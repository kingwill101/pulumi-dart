// ignore_for_file: unused_element, unnecessary_cast

/// Contains Properties set for the reservation.
class AllocationResourceStatusSpecificSKUAllocationResponse3 {
  /// ID of the instance template used to populate reservation properties.
  final String sourceInstanceTemplateId;

  AllocationResourceStatusSpecificSKUAllocationResponse3({
    required this.sourceInstanceTemplateId,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['sourceInstanceTemplateId'] = sourceInstanceTemplateId;
    return map;
  }

  factory AllocationResourceStatusSpecificSKUAllocationResponse3.fromMap(
      Map<String, dynamic> map) {
    return AllocationResourceStatusSpecificSKUAllocationResponse3(
      sourceInstanceTemplateId: map['sourceInstanceTemplateId'] as String,
    );
  }
}
