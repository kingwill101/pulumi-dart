// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Policy that defines tcp request retry conditions
class TcpRetryPolicy {
  /// Maximum number of attempts to connect to the tcp service
  final pulumi.Input<int>? maxConnectAttempts;

  /// Creates a new [TcpRetryPolicy].
  /// [maxConnectAttempts] Maximum number of attempts to connect to the tcp service
  const TcpRetryPolicy({
    this.maxConnectAttempts,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'maxConnectAttempts': ?maxConnectAttempts,
    };
  }

  factory TcpRetryPolicy.fromMap(Map<String, dynamic> map) {
    return TcpRetryPolicy(
      maxConnectAttempts: (() { final guardedValue = map['maxConnectAttempts']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
    );
  }
}

