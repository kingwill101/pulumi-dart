// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Defines parameters for tcp connection pooling
class TcpConnectionPoolResponse {
  /// Maximum number of tcp connections allowed
  final pulumi.Input<int>? maxConnections;

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
      maxConnections: (() { final guardedValue = map['maxConnections']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
    );
  }
}

