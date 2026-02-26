// ignore_for_file: unused_element, unnecessary_cast

/// Each facet position adjustment consists of a single attribute name (i.e. facet key) along with a specified position.
class GoogleCloudRetailV2RuleForceReturnFacetActionFacetPositionAdjustment {
  /// The attribute name to force return as a facet. Each attribute name should be a valid attribute name, be non-empty and contain at most 80 characters long.
  final String? attributeName;

  /// This is the position in the request as explained above. It should be strictly positive be at most 100.
  final int? position;

  GoogleCloudRetailV2RuleForceReturnFacetActionFacetPositionAdjustment({
    this.attributeName,
    this.position,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final attributeNameValue = attributeName;
    if (attributeNameValue != null) {
      map['attributeName'] = attributeNameValue;
    }
    final positionValue = position;
    if (positionValue != null) {
      map['position'] = positionValue;
    }
    return map;
  }

  factory GoogleCloudRetailV2RuleForceReturnFacetActionFacetPositionAdjustment.fromMap(
      Map<String, dynamic> map) {
    return GoogleCloudRetailV2RuleForceReturnFacetActionFacetPositionAdjustment(
      attributeName:
          map['attributeName'] == null ? null : map['attributeName'] as String,
      position: map['position'] == null ? null : map['position'] as int,
    );
  }
}
