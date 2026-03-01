// ignore_for_file: unused_element, unnecessary_cast


/// Policy that defines tcp request retry conditions
class TcpRetryPolicyResponse {
  /// Maximum number of attempts to connect to the tcp service
  final int? maxConnectAttempts;

  /// Creates a new [TcpRetryPolicyResponse].
  /// [maxConnectAttempts] Maximum number of attempts to connect to the tcp service
  TcpRetryPolicyResponse({
    this.maxConnectAttempts,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'maxConnectAttempts': ?maxConnectAttempts,
    };
  }

  factory TcpRetryPolicyResponse.fromMap(Map<String, dynamic> map) {
    return TcpRetryPolicyResponse(
      maxConnectAttempts: map['maxConnectAttempts'] == null ? null : map['maxConnectAttempts'] as int,
    );
  }
}

