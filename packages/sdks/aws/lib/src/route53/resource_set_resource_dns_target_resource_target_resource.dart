// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'resource_set_resource_dns_target_resource_target_resource_nlb_resource.dart';
import 'resource_set_resource_dns_target_resource_target_resource_r53_resource.dart';

class ResourceSetResourceDnsTargetResourceTargetResource {
  /// NLB resource a DNS Target Resource points to. Required if `r53_resource` is not set.
  final pulumi.Input<
    ResourceSetResourceDnsTargetResourceTargetResourceNlbResource
  >?
  nlbResource;

  /// Route53 resource a DNS Target Resource record points to.
  final pulumi.Input<
    ResourceSetResourceDnsTargetResourceTargetResourceR53Resource
  >?
  r53Resource;

  /// Creates a new [ResourceSetResourceDnsTargetResourceTargetResource].
  /// [nlbResource] NLB resource a DNS Target Resource points to. Required if `r53_resource` is not set.
  /// [r53Resource] Route53 resource a DNS Target Resource record points to.
  ResourceSetResourceDnsTargetResourceTargetResource({
    this.nlbResource,
    this.r53Resource,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'nlbResource':
          ?pulumi.Input.mapOptionalInputValue<
            ResourceSetResourceDnsTargetResourceTargetResourceNlbResource,
            Map<String, dynamic>
          >(nlbResource, (value) => value.toMap()),
      'r53Resource':
          ?pulumi.Input.mapOptionalInputValue<
            ResourceSetResourceDnsTargetResourceTargetResourceR53Resource,
            Map<String, dynamic>
          >(r53Resource, (value) => value.toMap()),
    };
  }

  factory ResourceSetResourceDnsTargetResourceTargetResource.fromMap(
    Map<String, dynamic> map,
  ) {
    return ResourceSetResourceDnsTargetResourceTargetResource(
      nlbResource: (() {
        final guardedValue = map['nlbResource'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          ResourceSetResourceDnsTargetResourceTargetResourceNlbResource.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      r53Resource: (() {
        final guardedValue = map['r53Resource'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          ResourceSetResourceDnsTargetResourceTargetResourceR53Resource.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
    );
  }
}
