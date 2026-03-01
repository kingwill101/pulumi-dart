// ignore_for_file: unused_element, unnecessary_cast

import 'requests_response.dart';

/// Resource Requests for the pool.
class ResourcesResponse {
  /// Requests for capacity for the pool.
  final RequestsResponse? requests;

  /// Creates a new [ResourcesResponse].
  /// [requests] Requests for capacity for the pool.
  ResourcesResponse({
    this.requests,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'requests': ?requests == null ? null : requests!.toMap(),
    };
  }

  factory ResourcesResponse.fromMap(Map<String, dynamic> map) {
    return ResourcesResponse(
      requests: map['requests'] == null ? null : RequestsResponse.fromMap((map['requests'] as Map).cast<String, dynamic>()),
    );
  }
}

