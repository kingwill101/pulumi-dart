// ignore_for_file: unused_element, unnecessary_cast

import 'resource_set_resource_dns_target_resource_target_resource_nlb_resource.dart';
import 'resource_set_resource_dns_target_resource_target_resource_r53_resource.dart';

class ResourceSetResourceDnsTargetResourceTargetResource {
  /// NLB resource a DNS Target Resource points to. Required if `r53_resource` is not set.
  final ResourceSetResourceDnsTargetResourceTargetResourceNlbResource?
      nlbResource;

  /// Route53 resource a DNS Target Resource record points to.
  final ResourceSetResourceDnsTargetResourceTargetResourceR53Resource?
      r53Resource;

  /// Creates a new [ResourceSetResourceDnsTargetResourceTargetResource].
  /// [nlbResource] NLB resource a DNS Target Resource points to. Required if `r53_resource` is not set.
  /// [r53Resource] Route53 resource a DNS Target Resource record points to.
  ResourceSetResourceDnsTargetResourceTargetResource({
    this.nlbResource,
    this.r53Resource,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final nlbResourceValue = nlbResource;
    if (nlbResourceValue != null) {
      map['nlbResource'] = nlbResourceValue.toMap();
    }
    final r53ResourceValue = r53Resource;
    if (r53ResourceValue != null) {
      map['r53Resource'] = r53ResourceValue.toMap();
    }
    return map;
  }

  factory ResourceSetResourceDnsTargetResourceTargetResource.fromMap(
      Map<String, dynamic> map) {
    return ResourceSetResourceDnsTargetResourceTargetResource(
      nlbResource: map['nlbResource'] == null
          ? null
          : ResourceSetResourceDnsTargetResourceTargetResourceNlbResource
              .fromMap((map['nlbResource'] as Map).cast<String, dynamic>()),
      r53Resource: map['r53Resource'] == null
          ? null
          : ResourceSetResourceDnsTargetResourceTargetResourceR53Resource
              .fromMap((map['r53Resource'] as Map).cast<String, dynamic>()),
    );
  }
}
