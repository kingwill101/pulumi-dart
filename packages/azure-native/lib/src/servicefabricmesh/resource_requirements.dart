// ignore_for_file: unused_element, unnecessary_cast

import 'resource_limits.dart';
import 'resource_requests.dart';

/// This type describes the resource requirements for a container or a service.
class ResourceRequirements {
  /// Describes the maximum limits on the resources for a given container.
  final ResourceLimits? limits;
  /// Describes the requested resources for a given container.
  final ResourceRequests requests;

  /// Creates a new [ResourceRequirements].
  /// [limits] Describes the maximum limits on the resources for a given container.
  /// [requests] Describes the requested resources for a given container.
  ResourceRequirements({
    this.limits,
    required this.requests,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'limits': ?limits == null ? null : limits!.toMap(),
      'requests': requests.toMap(),
    };
  }

  factory ResourceRequirements.fromMap(Map<String, dynamic> map) {
    return ResourceRequirements(
      limits: map['limits'] == null ? null : ResourceLimits.fromMap((map['limits'] as Map).cast<String, dynamic>()),
      requests: ResourceRequests.fromMap((map['requests'] as Map).cast<String, dynamic>()),
    );
  }
}

