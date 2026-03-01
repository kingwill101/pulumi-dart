// ignore_for_file: unused_element, unnecessary_cast


/// Additional data about the assignment
class AssignmentPropertiesResponseAdditionalData {
  /// Exemption category of this assignment
  final String? exemptionCategory;

  /// Creates a new [AssignmentPropertiesResponseAdditionalData].
  /// [exemptionCategory] Exemption category of this assignment
  AssignmentPropertiesResponseAdditionalData({
    this.exemptionCategory,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'exemptionCategory': ?exemptionCategory,
    };
  }

  factory AssignmentPropertiesResponseAdditionalData.fromMap(Map<String, dynamic> map) {
    return AssignmentPropertiesResponseAdditionalData(
      exemptionCategory: map['exemptionCategory'] == null ? null : map['exemptionCategory'] as String,
    );
  }
}

