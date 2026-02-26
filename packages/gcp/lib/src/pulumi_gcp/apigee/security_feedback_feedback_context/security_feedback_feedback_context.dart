// ignore_for_file: unused_element, unnecessary_cast

class SecurityFeedbackFeedbackContext {
  /// The attribute the user is providing feedback about.
  /// Possible values are: `ATTRIBUTE_ENVIRONMENTS`, `ATTRIBUTE_IP_ADDRESS_RANGES`.
  final String attribute;

  /// The values of the attribute the user is providing feedback about, separated by commas.
  final List<String> values;

  SecurityFeedbackFeedbackContext({
    required this.attribute,
    required this.values,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['attribute'] = attribute;
    map['values'] = values;
    return map;
  }

  factory SecurityFeedbackFeedbackContext.fromMap(Map<String, dynamic> map) {
    return SecurityFeedbackFeedbackContext(
      attribute: map['attribute'] as String,
      values: (map['values'] as List).cast<String>(),
    );
  }
}
