// ignore_for_file: unused_element, unnecessary_cast


/// Additional data about the assignment
class AssignmentPropertiesAdditionalData {
  /// Exemption category of this assignment
  final String? exemptionCategory;

  /// Creates a new [AssignmentPropertiesAdditionalData].
  /// [exemptionCategory] Exemption category of this assignment
  AssignmentPropertiesAdditionalData({
    this.exemptionCategory,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'exemptionCategory': ?exemptionCategory,
    };
  }

  factory AssignmentPropertiesAdditionalData.fromMap(Map<String, dynamic> map) {
    return AssignmentPropertiesAdditionalData(
      exemptionCategory: map['exemptionCategory'] == null ? null : map['exemptionCategory'] as String,
    );
  }
}

