// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'resource_limits.dart';
import 'resource_requests.dart';

/// The resource requirements.
class ResourceRequirements {
  /// The resource limits of this container instance.
  final pulumi.Input<ResourceLimits>? limits;
  /// The resource requests of this container instance.
  final pulumi.Input<ResourceRequests> requests;

  /// Creates a new [ResourceRequirements].
  /// [limits] The resource limits of this container instance.
  /// [requests] The resource requests of this container instance.
  const ResourceRequirements({
    this.limits,
    required this.requests,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'limits': ?pulumi.Input.mapOptionalInputValue<ResourceLimits, Map<String, dynamic>>(limits, (value) => value.toMap()),
      'requests': pulumi.Input.mapInputValue<ResourceRequests, Map<String, dynamic>>(requests, (value) => value.toMap()),
    };
  }

  factory ResourceRequirements.fromMap(Map<String, dynamic> map) {
    return ResourceRequirements(
      limits: (() { final guardedValue = map['limits']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ResourceLimits.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      requests: pulumi.Input.fromValue(ResourceRequests.fromMap((map['requests']! as Map).cast<String, dynamic>())),
    );
  }
}

