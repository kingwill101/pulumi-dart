// ignore_for_file: unused_element, unnecessary_cast


/// Defines parameters for tcp connection pooling
class TcpConnectionPool {
  /// Maximum number of tcp connections allowed
  final int? maxConnections;

  /// Creates a new [TcpConnectionPool].
  /// [maxConnections] Maximum number of tcp connections allowed
  TcpConnectionPool({
    this.maxConnections,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'maxConnections': ?maxConnections,
    };
  }

  factory TcpConnectionPool.fromMap(Map<String, dynamic> map) {
    return TcpConnectionPool(
      maxConnections: map['maxConnections'] == null ? null : map['maxConnections'] as int,
    );
  }
}

