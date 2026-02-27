// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// The set of arguments for VpcEndpointService.
class VpcEndpointServiceArgs {
  /// Whether or not VPC endpoint connection requests to the service must be accepted by the service owner - `true` or `false`.
  final Input<bool> acceptanceRequired;

  /// The ARNs of one or more principals allowed to discover the endpoint service.
  final Input<List<String>>? allowedPrincipals;

  /// Amazon Resource Names (ARNs) of one or more Gateway Load Balancers for the endpoint service.
  final Input<List<String>>? gatewayLoadBalancerArns;

  /// Amazon Resource Names (ARNs) of one or more Network Load Balancers for the endpoint service.
  final Input<List<String>>? networkLoadBalancerArns;

  /// The private DNS name for the service.
  final Input<String>? privateDnsName;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final Input<String>? region;

  /// The supported IP address types. The possible values are `ipv4` and `ipv6`.
  final Input<List<String>>? supportedIpAddressTypes;

  /// The set of regions from which service consumers can access the service.
  final Input<List<String>>? supportedRegions;

  /// A map of tags to assign to the resource. .If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final Input<Map<String, String>>? tags;

  VpcEndpointServiceArgs({
    required this.acceptanceRequired,
    this.allowedPrincipals,
    this.gatewayLoadBalancerArns,
    this.networkLoadBalancerArns,
    this.privateDnsName,
    this.region,
    this.supportedIpAddressTypes,
    this.supportedRegions,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['acceptanceRequired'] = acceptanceRequired;
    final allowedPrincipalsValue = allowedPrincipals;
    if (allowedPrincipalsValue != null) {
      map['allowedPrincipals'] = allowedPrincipalsValue;
    }
    final gatewayLoadBalancerArnsValue = gatewayLoadBalancerArns;
    if (gatewayLoadBalancerArnsValue != null) {
      map['gatewayLoadBalancerArns'] = gatewayLoadBalancerArnsValue;
    }
    final networkLoadBalancerArnsValue = networkLoadBalancerArns;
    if (networkLoadBalancerArnsValue != null) {
      map['networkLoadBalancerArns'] = networkLoadBalancerArnsValue;
    }
    final privateDnsNameValue = privateDnsName;
    if (privateDnsNameValue != null) {
      map['privateDnsName'] = privateDnsNameValue;
    }
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    final supportedIpAddressTypesValue = supportedIpAddressTypes;
    if (supportedIpAddressTypesValue != null) {
      map['supportedIpAddressTypes'] = supportedIpAddressTypesValue;
    }
    final supportedRegionsValue = supportedRegions;
    if (supportedRegionsValue != null) {
      map['supportedRegions'] = supportedRegionsValue;
    }
    final tagsValue = tags;
    if (tagsValue != null) {
      map['tags'] = tagsValue;
    }
    return map;
  }

  factory VpcEndpointServiceArgs.fromMap(Map<String, dynamic> map) {
    return VpcEndpointServiceArgs(
      acceptanceRequired: Input.asInput<bool>(map['acceptanceRequired']),
      allowedPrincipals:
          Input.asOptionalInput<List<String>>(map['allowedPrincipals']),
      gatewayLoadBalancerArns:
          Input.asOptionalInput<List<String>>(map['gatewayLoadBalancerArns']),
      networkLoadBalancerArns:
          Input.asOptionalInput<List<String>>(map['networkLoadBalancerArns']),
      privateDnsName: Input.asOptionalInput<String>(map['privateDnsName']),
      region: Input.asOptionalInput<String>(map['region']),
      supportedIpAddressTypes:
          Input.asOptionalInput<List<String>>(map['supportedIpAddressTypes']),
      supportedRegions:
          Input.asOptionalInput<List<String>>(map['supportedRegions']),
      tags: Input.asOptionalInput<Map<String, String>>(map['tags']),
    );
  }
}
