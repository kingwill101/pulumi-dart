// ignore_for_file: unused_element, unnecessary_cast


/// Defines parameters for tcp connection pooling
class TcpConnectionPoolResponse {
  /// Maximum number of tcp connections allowed
  final int? maxConnections;

  /// Creates a new [TcpConnectionPoolResponse].
  /// [maxConnections] Maximum number of tcp connections allowed
  TcpConnectionPoolResponse({
    this.maxConnections,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'maxConnections': ?maxConnections,
    };
  }

  factory TcpConnectionPoolResponse.fromMap(Map<String, dynamic> map) {
    return TcpConnectionPoolResponse(
      maxConnections: map['maxConnections'] == null ? null : map['maxConnections'] as int,
    );
  }
}

