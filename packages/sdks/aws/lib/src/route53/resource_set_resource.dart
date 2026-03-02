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
  ResourceSetResource({
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
      componentId: map['componentId'] == null ? null : ((map['componentId'] as String).input()).input(),
      dnsTargetResource: map['dnsTargetResource'] == null ? null : ((ResourceSetResourceDnsTargetResource.fromMap((map['dnsTargetResource']! as Map).cast<String, dynamic>())).input()).input(),
      readinessScopes: map['readinessScopes'] == null ? null : (((map['readinessScopes'] as List).cast<String>()).input()).input(),
      resourceArn: map['resourceArn'] == null ? null : ((map['resourceArn'] as String).input()).input(),
    );
  }
}

