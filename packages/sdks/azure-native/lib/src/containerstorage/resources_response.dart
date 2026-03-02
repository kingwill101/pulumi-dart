// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'requests_response.dart';

/// Resource Requests for the pool.
class ResourcesResponse {
  /// Requests for capacity for the pool.
  final pulumi.Input<RequestsResponse>? requests;

  /// Creates a new [ResourcesResponse].
  /// [requests] Requests for capacity for the pool.
  ResourcesResponse({
    this.requests,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'requests': ?pulumi.Input.mapOptionalInputValue<RequestsResponse, Map<String, dynamic>>(requests, (value) => value.toMap()),
    };
  }

  factory ResourcesResponse.fromMap(Map<String, dynamic> map) {
    return ResourcesResponse(
      requests: map['requests'] == null ? null : (RequestsResponse.fromMap((map['requests']! as Map).cast<String, dynamic>())).input(),
    );
  }
}

