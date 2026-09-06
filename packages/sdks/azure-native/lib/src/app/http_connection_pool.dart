// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Defines parameters for http connection pooling
class HttpConnectionPool {
  /// Maximum number of pending http1 requests allowed
  final pulumi.Input<int?>? http1MaxPendingRequests;
  /// Maximum number of http2 requests allowed
  final pulumi.Input<int?>? http2MaxRequests;

  /// Creates a new [HttpConnectionPool].
  /// [http1MaxPendingRequests] Maximum number of pending http1 requests allowed
  /// [http2MaxRequests] Maximum number of http2 requests allowed
  const HttpConnectionPool({
    this.http1MaxPendingRequests,
    this.http2MaxRequests,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'http1MaxPendingRequests': ?http1MaxPendingRequests,
      'http2MaxRequests': ?http2MaxRequests,
    };
  }

  factory HttpConnectionPool.fromMap(Map<String, dynamic> map) {
    return HttpConnectionPool(
      http1MaxPendingRequests: (() { final guardedValue = map['http1MaxPendingRequests']; if (guardedValue == null) return null; return pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue)); })(),
      http2MaxRequests: (() { final guardedValue = map['http2MaxRequests']; if (guardedValue == null) return null; return pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue)); })(),
    );
  }
}
