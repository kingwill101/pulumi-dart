// ignore_for_file: unused_element, unnecessary_cast

/// The IAM conditions context.
class ConditionContext {
  /// The hypothetical access timestamp to evaluate IAM conditions. Note that this value must not be earlier than the current time; otherwise, an INVALID_ARGUMENT error will be returned.
  final String? accessTime;

  /// Creates a new [ConditionContext].
  /// [accessTime] The hypothetical access timestamp to evaluate IAM conditions. Note that this value must not be earlier than the current time; otherwise, an INVALID_ARGUMENT error will be returned.
  ConditionContext({
    this.accessTime,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final accessTimeValue = accessTime;
    if (accessTimeValue != null) {
      map['accessTime'] = accessTimeValue;
    }
    return map;
  }

  factory ConditionContext.fromMap(Map<String, dynamic> map) {
    return ConditionContext(
      accessTime:
          map['accessTime'] == null ? null : map['accessTime'] as String,
    );
  }
}
