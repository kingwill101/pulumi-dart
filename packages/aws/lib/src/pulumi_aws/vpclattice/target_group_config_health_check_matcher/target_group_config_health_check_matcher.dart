// ignore_for_file: unused_element, unnecessary_cast

class TargetGroupConfigHealthCheckMatcher {
  /// The HTTP codes to use when checking for a successful response from a target.
  final String? value;

  TargetGroupConfigHealthCheckMatcher({
    this.value,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final valueValue = value;
    if (valueValue != null) {
      map['value'] = valueValue;
    }
    return map;
  }

  factory TargetGroupConfigHealthCheckMatcher.fromMap(
      Map<String, dynamic> map) {
    return TargetGroupConfigHealthCheckMatcher(
      value: map['value'] == null ? null : map['value'] as String,
    );
  }
}
