// ignore_for_file: unused_element, unnecessary_cast

/// The IAM conditions context.
class ConditionContextResponse {
  /// The hypothetical access timestamp to evaluate IAM conditions. Note that this value must not be earlier than the current time; otherwise, an INVALID_ARGUMENT error will be returned.
  final String accessTime;

  ConditionContextResponse({
    required this.accessTime,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['accessTime'] = accessTime;
    return map;
  }

  factory ConditionContextResponse.fromMap(Map<String, dynamic> map) {
    return ConditionContextResponse(
      accessTime: map['accessTime'] as String,
    );
  }
}
