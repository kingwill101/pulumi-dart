// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'requests.dart';

/// Resource Requests for the pool.
class Resources {
  /// Requests for capacity for the pool.
  final pulumi.Input<Requests>? requests;

  /// Creates a new [Resources].
  /// [requests] Requests for capacity for the pool.
  const Resources({
    this.requests,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'requests': ?pulumi.Input.mapOptionalInputValue<Requests, Map<String, dynamic>>(requests, (value) => value.toMap()),
    };
  }

  factory Resources.fromMap(Map<String, dynamic> map) {
    return Resources(
      requests: (() { final guardedValue = map['requests']; if (guardedValue == null) return null; return pulumi.Input.fromValue(Requests.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
