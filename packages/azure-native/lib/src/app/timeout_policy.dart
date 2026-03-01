// ignore_for_file: unused_element, unnecessary_cast


/// Policy to set request timeouts
class TimeoutPolicy {
  /// Timeout, in seconds, for a request to initiate a connection
  final int? connectionTimeoutInSeconds;
  /// Timeout, in seconds, for a request to respond
  final int? responseTimeoutInSeconds;

  /// Creates a new [TimeoutPolicy].
  /// [connectionTimeoutInSeconds] Timeout, in seconds, for a request to initiate a connection
  /// [responseTimeoutInSeconds] Timeout, in seconds, for a request to respond
  TimeoutPolicy({
    this.connectionTimeoutInSeconds,
    this.responseTimeoutInSeconds,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'connectionTimeoutInSeconds': ?connectionTimeoutInSeconds,
      'responseTimeoutInSeconds': ?responseTimeoutInSeconds,
    };
  }

  factory TimeoutPolicy.fromMap(Map<String, dynamic> map) {
    return TimeoutPolicy(
      connectionTimeoutInSeconds: map['connectionTimeoutInSeconds'] == null ? null : map['connectionTimeoutInSeconds'] as int,
      responseTimeoutInSeconds: map['responseTimeoutInSeconds'] == null ? null : map['responseTimeoutInSeconds'] as int,
    );
  }
}

