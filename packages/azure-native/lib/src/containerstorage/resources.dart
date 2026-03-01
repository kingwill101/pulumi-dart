// ignore_for_file: unused_element, unnecessary_cast

import 'requests.dart';

/// Resource Requests for the pool.
class Resources {
  /// Requests for capacity for the pool.
  final Requests? requests;

  /// Creates a new [Resources].
  /// [requests] Requests for capacity for the pool.
  Resources({
    this.requests,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'requests': ?requests == null ? null : requests!.toMap(),
    };
  }

  factory Resources.fromMap(Map<String, dynamic> map) {
    return Resources(
      requests: map['requests'] == null ? null : Requests.fromMap((map['requests'] as Map).cast<String, dynamic>()),
    );
  }
}

