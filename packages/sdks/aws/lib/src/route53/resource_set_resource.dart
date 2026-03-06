// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'resource_set_resource_dns_target_resource.dart';

class ResourceSetResource {
  final pulumi.Input<String>? componentId;
  /// Component for DNS/Routing Control Readiness Checks.
  final pulumi.Input<ResourceSetResourceDnsTargetResource>? dnsTargetResource;
  /// Recovery group ARN or cell ARN that contains this resource set.
  final pulumi.Input<List<String>>? readinessScopes;
  /// ARN of the resource.
  final pulumi.Input<String>? resourceArn;

  /// Creates a new [ResourceSetResource].
  /// [componentId] Optional.
  /// [dnsTargetResource] Component for DNS/Routing Control Readiness Checks.
  /// [readinessScopes] Recovery group ARN or cell ARN that contains this resource set.
  /// [resourceArn] ARN of the resource.
  const ResourceSetResource({
    this.componentId,
    this.dnsTargetResource,
    this.readinessScopes,
    this.resourceArn,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'componentId': ?componentId,
      'dnsTargetResource': ?pulumi.Input.mapOptionalInputValue<ResourceSetResourceDnsTargetResource, Map<String, dynamic>>(dnsTargetResource, (value) => value.toMap()),
      'readinessScopes': ?readinessScopes,
      'resourceArn': ?resourceArn,
    };
  }

  factory ResourceSetResource.fromMap(Map<String, dynamic> map) {
    return ResourceSetResource(
      componentId: (() { final guardedValue = map['componentId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      dnsTargetResource: (() { final guardedValue = map['dnsTargetResource']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ResourceSetResourceDnsTargetResource.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      readinessScopes: (() { final guardedValue = map['readinessScopes']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      resourceArn: (() { final guardedValue = map['resourceArn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

