// ignore_for_file: unused_element, unnecessary_cast


class TargetGroupConfigHealthCheckMatcher {
  /// The HTTP codes to use when checking for a successful response from a target.
  final String? value;

  /// Creates a new [TargetGroupConfigHealthCheckMatcher].
  /// [value] The HTTP codes to use when checking for a successful response from a target.
  TargetGroupConfigHealthCheckMatcher({
    this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'value': ?value,
    };
  }

  factory TargetGroupConfigHealthCheckMatcher.fromMap(Map<String, dynamic> map) {
    return TargetGroupConfigHealthCheckMatcher(
      value: map['value'] == null ? null : map['value'] as String,
    );
  }
}

