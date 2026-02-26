// ignore_for_file: unused_element, unnecessary_cast

class ConnectorTaskRestartPolicy {
  /// The maximum amount of time to wait before retrying a failed task. This sets an upper bound for the backoff delay.
  /// A duration in seconds with up to nine fractional digits, terminated by 's'. Example: "3.5s".
  final String? maximumBackoff;

  /// The minimum amount of time to wait before retrying a failed task. This sets a lower bound for the backoff delay.
  /// A duration in seconds with up to nine fractional digits, terminated by 's'. Example: "3.5s".
  final String? minimumBackoff;

  ConnectorTaskRestartPolicy({
    this.maximumBackoff,
    this.minimumBackoff,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final maximumBackoffValue = maximumBackoff;
    if (maximumBackoffValue != null) {
      map['maximumBackoff'] = maximumBackoffValue;
    }
    final minimumBackoffValue = minimumBackoff;
    if (minimumBackoffValue != null) {
      map['minimumBackoff'] = minimumBackoffValue;
    }
    return map;
  }

  factory ConnectorTaskRestartPolicy.fromMap(Map<String, dynamic> map) {
    return ConnectorTaskRestartPolicy(
      maximumBackoff: map['maximumBackoff'] == null
          ? null
          : map['maximumBackoff'] as String,
      minimumBackoff: map['minimumBackoff'] == null
          ? null
          : map['minimumBackoff'] as String,
    );
  }
}
