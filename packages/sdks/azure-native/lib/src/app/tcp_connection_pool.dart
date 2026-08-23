// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Defines parameters for tcp connection pooling
class TcpConnectionPool {
  /// Maximum number of tcp connections allowed
  final pulumi.Input<int>? maxConnections;

  /// Creates a new [TcpConnectionPool].
  /// [maxConnections] Maximum number of tcp connections allowed
  const TcpConnectionPool({
    this.maxConnections,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'maxConnections': ?maxConnections,
    };
  }

  factory TcpConnectionPool.fromMap(Map<String, dynamic> map) {
    return TcpConnectionPool(
      maxConnections: (() { final guardedValue = map['maxConnections']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
    );
  }
}
