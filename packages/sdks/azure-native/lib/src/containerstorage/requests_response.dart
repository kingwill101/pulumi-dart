// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Requests for capacity for the pool.
class RequestsResponse {
  /// Requested capacity of the pool in GiB.
  final pulumi.Input<double>? storage;

  /// Creates a new [RequestsResponse].
  /// [storage] Requested capacity of the pool in GiB.
  RequestsResponse({this.storage});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'storage': ?storage};
  }

  factory RequestsResponse.fromMap(Map<String, dynamic> map) {
    return RequestsResponse(
      storage: (() {
        final guardedValue = map['storage'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as double);
      })(),
    );
  }
}
