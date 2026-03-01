// ignore_for_file: unused_element, unnecessary_cast


class GetV3FunctionsFunctionInvocationRestriction {
  /// Whether invocation is disabled.
  final bool disable;
  /// Last time the function was Updated
  final String lastModifiedTime;
  /// Disable Reason.
  final String reason;

  /// Creates a new [GetV3FunctionsFunctionInvocationRestriction].
  /// [disable] Whether invocation is disabled.
  /// [lastModifiedTime] Last time the function was Updated
  /// [reason] Disable Reason.
  GetV3FunctionsFunctionInvocationRestriction({
    required this.disable,
    required this.lastModifiedTime,
    required this.reason,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'disable': disable,
      'lastModifiedTime': lastModifiedTime,
      'reason': reason,
    };
  }

  factory GetV3FunctionsFunctionInvocationRestriction.fromMap(Map<String, dynamic> map) {
    return GetV3FunctionsFunctionInvocationRestriction(
      disable: map['disable'] as bool,
      lastModifiedTime: map['lastModifiedTime'] as String,
      reason: map['reason'] as String,
    );
  }
}

