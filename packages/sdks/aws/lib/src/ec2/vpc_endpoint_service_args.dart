// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_ec2_vpc_endpoint_service_vpc_endpoint_service_args_doc}
/// The set of arguments for VpcEndpointService.
/// {@endtemplate}
/// {@macro pulumi_ec2_vpc_endpoint_service_vpc_endpoint_service_args_doc}
class VpcEndpointServiceArgs {
  /// Whether or not VPC endpoint connection requests to the service must be accepted by the service owner - `true` or `false`.
  final pulumi.Input<bool> acceptanceRequired;
  /// The ARNs of one or more principals allowed to discover the endpoint service.
  final pulumi.Input<List<String>>? allowedPrincipals;
  /// Amazon Resource Names (ARNs) of one or more Gateway Load Balancers for the endpoint service.
  final pulumi.Input<List<String>>? gatewayLoadBalancerArns;
  /// Amazon Resource Names (ARNs) of one or more Network Load Balancers for the endpoint service.
  final pulumi.Input<List<String>>? networkLoadBalancerArns;
  /// The private DNS name for the service.
  final pulumi.Input<String>? privateDnsName;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// The supported IP address types. The possible values are `ipv4` and `ipv6`.
  final pulumi.Input<List<String>>? supportedIpAddressTypes;
  /// The set of regions from which service consumers can access the service.
  final pulumi.Input<List<String>>? supportedRegions;
  /// A map of tags to assign to the resource. .If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [VpcEndpointServiceArgs].
  /// [acceptanceRequired] Whether or not VPC endpoint connection requests to the service must be accepted by the service owner - `true` or `false`.
  /// [allowedPrincipals] The ARNs of one or more principals allowed to discover the endpoint service.
  /// [gatewayLoadBalancerArns] Amazon Resource Names (ARNs) of one or more Gateway Load Balancers for the endpoint service.
  /// [networkLoadBalancerArns] Amazon Resource Names (ARNs) of one or more Network Load Balancers for the endpoint service.
  /// [privateDnsName] The private DNS name for the service.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [supportedIpAddressTypes] The supported IP address types. The possible values are `ipv4` and `ipv6`.
  /// [supportedRegions] The set of regions from which service consumers can access the service.
  /// [tags] A map of tags to assign to the resource. .If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
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
    return <String, dynamic>{
      'acceptanceRequired': acceptanceRequired,
      'allowedPrincipals': ?allowedPrincipals,
      'gatewayLoadBalancerArns': ?gatewayLoadBalancerArns,
      'networkLoadBalancerArns': ?networkLoadBalancerArns,
      'privateDnsName': ?privateDnsName,
      'region': ?region,
      'supportedIpAddressTypes': ?supportedIpAddressTypes,
      'supportedRegions': ?supportedRegions,
      'tags': ?tags,
    };
  }

  factory VpcEndpointServiceArgs.fromMap(Map<String, dynamic> map) {
    return VpcEndpointServiceArgs(
      acceptanceRequired: (map['acceptanceRequired'] as bool).input(),
      allowedPrincipals: map['allowedPrincipals'] == null ? null : (((map['allowedPrincipals'] as List).cast<String>()).input()).input(),
      gatewayLoadBalancerArns: map['gatewayLoadBalancerArns'] == null ? null : (((map['gatewayLoadBalancerArns'] as List).cast<String>()).input()).input(),
      networkLoadBalancerArns: map['networkLoadBalancerArns'] == null ? null : (((map['networkLoadBalancerArns'] as List).cast<String>()).input()).input(),
      privateDnsName: map['privateDnsName'] == null ? null : ((map['privateDnsName'] as String).input()).input(),
      region: map['region'] == null ? null : ((map['region'] as String).input()).input(),
      supportedIpAddressTypes: map['supportedIpAddressTypes'] == null ? null : (((map['supportedIpAddressTypes'] as List).cast<String>()).input()).input(),
      supportedRegions: map['supportedRegions'] == null ? null : (((map['supportedRegions'] as List).cast<String>()).input()).input(),
      tags: map['tags'] == null ? null : (((map['tags'] as Map).cast<String, String>()).input()).input(),
    );
  }
}

