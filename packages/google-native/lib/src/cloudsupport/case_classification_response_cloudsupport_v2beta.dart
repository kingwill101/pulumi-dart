// ignore_for_file: unused_element, unnecessary_cast

/// A classification object with a product type and value.
class CaseClassificationResponseCloudsupportV2beta {
  /// A display name for the classification. The display name is not static and can change. To uniquely and consistently identify classifications, use the `CaseClassification.id` field.
  final String displayName;

  /// Creates a new [CaseClassificationResponseCloudsupportV2beta].
  /// [displayName] A display name for the classification. The display name is not static and can change. To uniquely and consistently identify classifications, use the `CaseClassification.id` field.
  CaseClassificationResponseCloudsupportV2beta({
    required this.displayName,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['displayName'] = displayName;
    return map;
  }

  factory CaseClassificationResponseCloudsupportV2beta.fromMap(
      Map<String, dynamic> map) {
    return CaseClassificationResponseCloudsupportV2beta(
      displayName: map['displayName'] as String,
    );
  }
}
