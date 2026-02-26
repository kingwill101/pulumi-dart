// ignore_for_file: unused_element, unnecessary_cast

import '../resource_set_resource_dns_target_resource_target_resource_nlb_resource/resource_set_resource_dns_target_resource_target_resource_nlb_resource.dart';
import '../resource_set_resource_dns_target_resource_target_resource_r53_resource/resource_set_resource_dns_target_resource_target_resource_r53_resource.dart';

class ResourceSetResourceDnsTargetResourceTargetResource {
  /// NLB resource a DNS Target Resource points to. Required if <span pulumi-lang-nodejs="`r53Resource`" pulumi-lang-dotnet="`R53Resource`" pulumi-lang-go="`r53Resource`" pulumi-lang-python="`r53_resource`" pulumi-lang-yaml="`r53Resource`" pulumi-lang-java="`r53Resource`">`r53_resource`</span> is not set.
  final ResourceSetResourceDnsTargetResourceTargetResourceNlbResource?
      nlbResource;

  /// Route53 resource a DNS Target Resource record points to.
  final ResourceSetResourceDnsTargetResourceTargetResourceR53Resource?
      r53Resource;

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
