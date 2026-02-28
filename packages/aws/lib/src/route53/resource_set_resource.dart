// ignore_for_file: unused_element, unnecessary_cast

import 'resource_set_resource_dns_target_resource.dart';

class ResourceSetResource {
  final String? componentId;

  /// Component for DNS/Routing Control Readiness Checks.
  final ResourceSetResourceDnsTargetResource? dnsTargetResource;

  /// Recovery group ARN or cell ARN that contains this resource set.
  final List<String>? readinessScopes;

  /// ARN of the resource.
  final String? resourceArn;

  /// Creates a new [ResourceSetResource].
  /// [componentId] Optional.
  /// [dnsTargetResource] Component for DNS/Routing Control Readiness Checks.
  /// [readinessScopes] Recovery group ARN or cell ARN that contains this resource set.
  /// [resourceArn] ARN of the resource.
  ResourceSetResource({
    this.componentId,
    this.dnsTargetResource,
    this.readinessScopes,
    this.resourceArn,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final componentIdValue = componentId;
    if (componentIdValue != null) {
      map['componentId'] = componentIdValue;
    }
    final dnsTargetResourceValue = dnsTargetResource;
    if (dnsTargetResourceValue != null) {
      map['dnsTargetResource'] = dnsTargetResourceValue.toMap();
    }
    final readinessScopesValue = readinessScopes;
    if (readinessScopesValue != null) {
      map['readinessScopes'] = readinessScopesValue;
    }
    final resourceArnValue = resourceArn;
    if (resourceArnValue != null) {
      map['resourceArn'] = resourceArnValue;
    }
    return map;
  }

  factory ResourceSetResource.fromMap(Map<String, dynamic> map) {
    return ResourceSetResource(
      componentId:
          map['componentId'] == null ? null : map['componentId'] as String,
      dnsTargetResource: map['dnsTargetResource'] == null
          ? null
          : ResourceSetResourceDnsTargetResource.fromMap(
              (map['dnsTargetResource'] as Map).cast<String, dynamic>()),
      readinessScopes: map['readinessScopes'] == null
          ? null
          : (map['readinessScopes'] as List).cast<String>(),
      resourceArn:
          map['resourceArn'] == null ? null : map['resourceArn'] as String,
    );
  }
}
