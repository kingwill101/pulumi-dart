// ignore_for_file: unused_element, unnecessary_cast


/// Policy that defines tcp request retry conditions
class TcpRetryPolicy {
  /// Maximum number of attempts to connect to the tcp service
  final int? maxConnectAttempts;

  /// Creates a new [TcpRetryPolicy].
  /// [maxConnectAttempts] Maximum number of attempts to connect to the tcp service
  TcpRetryPolicy({
    this.maxConnectAttempts,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'maxConnectAttempts': ?maxConnectAttempts,
    };
  }

  factory TcpRetryPolicy.fromMap(Map<String, dynamic> map) {
    return TcpRetryPolicy(
      maxConnectAttempts: map['maxConnectAttempts'] == null ? null : map['maxConnectAttempts'] as int,
    );
  }
}

