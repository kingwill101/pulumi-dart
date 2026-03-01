// ignore_for_file: unused_element, unnecessary_cast


class AsyncTimeoutRuleResponse {
  final String? actionName;
  /// This is a TimeSpan property
  final String? timeout;

  /// Creates a new [AsyncTimeoutRuleResponse].
  /// [actionName] Optional.
  /// [timeout] This is a TimeSpan property
  AsyncTimeoutRuleResponse({
    this.actionName,
    this.timeout,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'actionName': ?actionName,
      'timeout': ?timeout,
    };
  }

  factory AsyncTimeoutRuleResponse.fromMap(Map<String, dynamic> map) {
    return AsyncTimeoutRuleResponse(
      actionName: map['actionName'] == null ? null : map['actionName'] as String,
      timeout: map['timeout'] == null ? null : map['timeout'] as String,
    );
  }
}

