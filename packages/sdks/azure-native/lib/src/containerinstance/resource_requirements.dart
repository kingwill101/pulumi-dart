// ignore_for_file: unused_element, unnecessary_cast

import 'resource_limits.dart';
import 'resource_requests.dart';

/// The resource requirements.
class ResourceRequirements {
  /// The resource limits of this container instance.
  final ResourceLimits? limits;
  /// The resource requests of this container instance.
  final ResourceRequests requests;

  /// Creates a new [ResourceRequirements].
  /// [limits] The resource limits of this container instance.
  /// [requests] The resource requests of this container instance.
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

