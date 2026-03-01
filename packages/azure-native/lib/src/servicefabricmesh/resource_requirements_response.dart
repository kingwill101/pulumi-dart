// ignore_for_file: unused_element, unnecessary_cast

import 'resource_limits_response.dart';
import 'resource_requests_response.dart';

/// This type describes the resource requirements for a container or a service.
class ResourceRequirementsResponse {
  /// Describes the maximum limits on the resources for a given container.
  final ResourceLimitsResponse? limits;
  /// Describes the requested resources for a given container.
  final ResourceRequestsResponse requests;

  /// Creates a new [ResourceRequirementsResponse].
  /// [limits] Describes the maximum limits on the resources for a given container.
  /// [requests] Describes the requested resources for a given container.
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

