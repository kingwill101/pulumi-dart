// ignore_for_file: unused_element, unnecessary_cast


class AsyncTimeoutRule {
  final String? actionName;
  /// This is a TimeSpan property
  final String? timeout;

  /// Creates a new [AsyncTimeoutRule].
  /// [actionName] Optional.
  /// [timeout] This is a TimeSpan property
  AsyncTimeoutRule({
    this.actionName,
    this.timeout,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'actionName': ?actionName,
      'timeout': ?timeout,
    };
  }

  factory AsyncTimeoutRule.fromMap(Map<String, dynamic> map) {
    return AsyncTimeoutRule(
      actionName: map['actionName'] == null ? null : map['actionName'] as String,
      timeout: map['timeout'] == null ? null : map['timeout'] as String,
    );
  }
}

