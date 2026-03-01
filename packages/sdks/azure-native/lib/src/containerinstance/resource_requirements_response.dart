// ignore_for_file: unused_element, unnecessary_cast

import 'resource_limits_response.dart';
import 'resource_requests_response.dart';

/// The resource requirements.
class ResourceRequirementsResponse {
  /// The resource limits of this container instance.
  final ResourceLimitsResponse? limits;
  /// The resource requests of this container instance.
  final ResourceRequestsResponse requests;

  /// Creates a new [ResourceRequirementsResponse].
  /// [limits] The resource limits of this container instance.
  /// [requests] The resource requests of this container instance.
  ResourceRequirementsResponse({
    this.limits,
    required this.requests,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'limits': ?limits == null ? null : limits!.toMap(),
      'requests': requests.toMap(),
    };
  }

  factory ResourceRequirementsResponse.fromMap(Map<String, dynamic> map) {
    return ResourceRequirementsResponse(
      limits: map['limits'] == null ? null : ResourceLimitsResponse.fromMap((map['limits'] as Map).cast<String, dynamic>()),
      requests: ResourceRequestsResponse.fromMap((map['requests'] as Map).cast<String, dynamic>()),
    );
  }
}

