// ignore_for_file: unused_element, unnecessary_cast

/// Describes a selector for extracting and matching an MSH field to a value.
class VersionSourceResponseHealthcareV1beta1 {
  /// The field to extract from the MSH segment. For example, "3.1" or "18[1].1".
  final String mshField;

  /// The value to match with the field. For example, "My Application Name" or "2.3".
  final String value;

  VersionSourceResponseHealthcareV1beta1({
    required this.mshField,
    required this.value,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['mshField'] = mshField;
    map['value'] = value;
    return map;
  }

  factory VersionSourceResponseHealthcareV1beta1.fromMap(
      Map<String, dynamic> map) {
    return VersionSourceResponseHealthcareV1beta1(
      mshField: map['mshField'] as String,
      value: map['value'] as String,
    );
  }
}
