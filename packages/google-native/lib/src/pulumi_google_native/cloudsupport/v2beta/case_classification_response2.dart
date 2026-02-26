// ignore_for_file: unused_element, unnecessary_cast

/// A classification object with a product type and value.
class CaseClassificationResponse2 {
  /// A display name for the classification. The display name is not static and can change. To uniquely and consistently identify classifications, use the `CaseClassification.id` field.
  final String displayName;

  CaseClassificationResponse2({
    required this.displayName,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['displayName'] = displayName;
    return map;
  }

  factory CaseClassificationResponse2.fromMap(Map<String, dynamic> map) {
    return CaseClassificationResponse2(
      displayName: map['displayName'] as String,
    );
  }
}
