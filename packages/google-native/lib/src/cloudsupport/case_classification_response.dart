// ignore_for_file: unused_element, unnecessary_cast

/// A classification object with a product type and value.
class CaseClassificationResponse {
  /// A display name for the classification. The display name is not static and can change. To uniquely and consistently identify classifications, use the `CaseClassification.id` field.
  final String displayName;

  /// Creates a new [CaseClassificationResponse].
  /// [displayName] A display name for the classification. The display name is not static and can change. To uniquely and consistently identify classifications, use the `CaseClassification.id` field.
  CaseClassificationResponse({required this.displayName});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'displayName': displayName};
  }

  factory CaseClassificationResponse.fromMap(Map<String, dynamic> map) {
    return CaseClassificationResponse(
      displayName: map['displayName'] as String,
    );
  }
}
