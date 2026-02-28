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
    required bool acceptanceRequired,
    List<String>? allowedPrincipals,
    List<String>? gatewayLoadBalancerArns,
    List<String>? networkLoadBalancerArns,
    String? privateDnsName,
    String? region,
    List<String>? supportedIpAddressTypes,
    List<String>? supportedRegions,
    Map<String, String>? tags,
  })  : acceptanceRequired = pulumi.Input.asInput<bool>(acceptanceRequired),
        allowedPrincipals =
            pulumi.Input.asOptionalInput<List<String>>(allowedPrincipals),
        gatewayLoadBalancerArns =
            pulumi.Input.asOptionalInput<List<String>>(gatewayLoadBalancerArns),
        networkLoadBalancerArns =
            pulumi.Input.asOptionalInput<List<String>>(networkLoadBalancerArns),
        privateDnsName = pulumi.Input.asOptionalInput<String>(privateDnsName),
        region = pulumi.Input.asOptionalInput<String>(region),
        supportedIpAddressTypes =
            pulumi.Input.asOptionalInput<List<String>>(supportedIpAddressTypes),
        supportedRegions =
            pulumi.Input.asOptionalInput<List<String>>(supportedRegions),
        tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags);

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
      acceptanceRequired: map['acceptanceRequired'] as bool,
      allowedPrincipals: map['allowedPrincipals'] == null
          ? null
          : (map['allowedPrincipals'] as List).cast<String>(),
      gatewayLoadBalancerArns: map['gatewayLoadBalancerArns'] == null
          ? null
          : (map['gatewayLoadBalancerArns'] as List).cast<String>(),
      networkLoadBalancerArns: map['networkLoadBalancerArns'] == null
          ? null
          : (map['networkLoadBalancerArns'] as List).cast<String>(),
      privateDnsName: map['privateDnsName'] == null
          ? null
          : map['privateDnsName'] as String,
      region: map['region'] == null ? null : map['region'] as String,
      supportedIpAddressTypes: map['supportedIpAddressTypes'] == null
          ? null
          : (map['supportedIpAddressTypes'] as List).cast<String>(),
      supportedRegions: map['supportedRegions'] == null
          ? null
          : (map['supportedRegions'] as List).cast<String>(),
      tags: map['tags'] == null
          ? null
          : (map['tags'] as Map).cast<String, String>(),
    );
  }
}
