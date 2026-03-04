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
      acceptanceRequired: pulumi.Input.fromValue(
        map['acceptanceRequired'] as bool,
      ),
      allowedPrincipals: (() {
        final guardedValue = map['allowedPrincipals'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue((guardedValue as List).cast<String>());
      })(),
      gatewayLoadBalancerArns: (() {
        final guardedValue = map['gatewayLoadBalancerArns'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue((guardedValue as List).cast<String>());
      })(),
      networkLoadBalancerArns: (() {
        final guardedValue = map['networkLoadBalancerArns'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue((guardedValue as List).cast<String>());
      })(),
      privateDnsName: (() {
        final guardedValue = map['privateDnsName'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      region: (() {
        final guardedValue = map['region'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      supportedIpAddressTypes: (() {
        final guardedValue = map['supportedIpAddressTypes'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue((guardedValue as List).cast<String>());
      })(),
      supportedRegions: (() {
        final guardedValue = map['supportedRegions'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue((guardedValue as List).cast<String>());
      })(),
      tags: (() {
        final guardedValue = map['tags'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          (guardedValue as Map).cast<String, String>(),
        );
      })(),
    );
  }
}
