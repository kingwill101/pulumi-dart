// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'vpc_endpoint_service_private_dns_name_configuration.dart';

/// Input properties used for looking up and filtering VpcEndpointService resources.
class VpcEndpointServiceState {
  /// Whether or not VPC endpoint connection requests to the service must be accepted by the service owner - `true` or `false`.
  final pulumi.Input<bool>? acceptanceRequired;
  /// The ARNs of one or more principals allowed to discover the endpoint service.
  final pulumi.Input<List<String>>? allowedPrincipals;
  /// The Amazon Resource Name (ARN) of the VPC endpoint service.
  final pulumi.Input<String>? arn;
  /// A set of Availability Zones in which the service is available.
  final pulumi.Input<List<String>>? availabilityZones;
  /// A set of DNS names for the service.
  final pulumi.Input<List<String>>? baseEndpointDnsNames;
  /// Amazon Resource Names (ARNs) of one or more Gateway Load Balancers for the endpoint service.
  final pulumi.Input<List<String>>? gatewayLoadBalancerArns;
  /// Whether or not the service manages its VPC endpoints - `true` or `false`.
  final pulumi.Input<bool>? managesVpcEndpoints;
  /// Amazon Resource Names (ARNs) of one or more Network Load Balancers for the endpoint service.
  final pulumi.Input<List<String>>? networkLoadBalancerArns;
  /// The private DNS name for the service.
  final pulumi.Input<String>? privateDnsName;
  /// List of objects containing information about the endpoint service private DNS name configuration.
  final pulumi.Input<List<VpcEndpointServicePrivateDnsNameConfiguration>>? privateDnsNameConfigurations;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// The service name.
  final pulumi.Input<String>? serviceName;
  /// The service type, `Gateway` or `Interface`.
  final pulumi.Input<String>? serviceType;
  /// Verification state of the VPC endpoint service. Consumers of the endpoint service can use the private name only when the state is `verified`.
  final pulumi.Input<String>? state;
  /// The supported IP address types. The possible values are `ipv4` and `ipv6`.
  final pulumi.Input<List<String>>? supportedIpAddressTypes;
  /// The set of regions from which service consumers can access the service.
  final pulumi.Input<List<String>>? supportedRegions;
  /// A map of tags to assign to the resource. .If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;
  /// A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  final pulumi.Input<Map<String, String>>? tagsAll;

  /// Creates a new [VpcEndpointServiceState].
  /// [acceptanceRequired] Whether or not VPC endpoint connection requests to the service must be accepted by the service owner - `true` or `false`.
  /// [allowedPrincipals] The ARNs of one or more principals allowed to discover the endpoint service.
  /// [arn] The Amazon Resource Name (ARN) of the VPC endpoint service.
  /// [availabilityZones] A set of Availability Zones in which the service is available.
  /// [baseEndpointDnsNames] A set of DNS names for the service.
  /// [gatewayLoadBalancerArns] Amazon Resource Names (ARNs) of one or more Gateway Load Balancers for the endpoint service.
  /// [managesVpcEndpoints] Whether or not the service manages its VPC endpoints - `true` or `false`.
  /// [networkLoadBalancerArns] Amazon Resource Names (ARNs) of one or more Network Load Balancers for the endpoint service.
  /// [privateDnsName] The private DNS name for the service.
  /// [privateDnsNameConfigurations] List of objects containing information about the endpoint service private DNS name configuration.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [serviceName] The service name.
  /// [serviceType] The service type, `Gateway` or `Interface`.
  /// [state] Verification state of the VPC endpoint service. Consumers of the endpoint service can use the private name only when the state is `verified`.
  /// [supportedIpAddressTypes] The supported IP address types. The possible values are `ipv4` and `ipv6`.
  /// [supportedRegions] The set of regions from which service consumers can access the service.
  /// [tags] A map of tags to assign to the resource. .If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [tagsAll] A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  VpcEndpointServiceState({
    this.acceptanceRequired,
    this.allowedPrincipals,
    this.arn,
    this.availabilityZones,
    this.baseEndpointDnsNames,
    this.gatewayLoadBalancerArns,
    this.managesVpcEndpoints,
    this.networkLoadBalancerArns,
    this.privateDnsName,
    this.privateDnsNameConfigurations,
    this.region,
    this.serviceName,
    this.serviceType,
    this.state,
    this.supportedIpAddressTypes,
    this.supportedRegions,
    this.tags,
    this.tagsAll,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'acceptanceRequired': ?acceptanceRequired,
      'allowedPrincipals': ?allowedPrincipals,
      'arn': ?arn,
      'availabilityZones': ?availabilityZones,
      'baseEndpointDnsNames': ?baseEndpointDnsNames,
      'gatewayLoadBalancerArns': ?gatewayLoadBalancerArns,
      'managesVpcEndpoints': ?managesVpcEndpoints,
      'networkLoadBalancerArns': ?networkLoadBalancerArns,
      'privateDnsName': ?privateDnsName,
      'privateDnsNameConfigurations': ?pulumi.Input.mapOptionalInputValue<List<VpcEndpointServicePrivateDnsNameConfiguration>, List<Map<String, dynamic>>>(privateDnsNameConfigurations, (value) => pulumi.Input.encodeList<VpcEndpointServicePrivateDnsNameConfiguration, Map<String, dynamic>>(value, (value) => value.toMap())),
      'region': ?region,
      'serviceName': ?serviceName,
      'serviceType': ?serviceType,
      'state': ?state,
      'supportedIpAddressTypes': ?supportedIpAddressTypes,
      'supportedRegions': ?supportedRegions,
      'tags': ?tags,
      'tagsAll': ?tagsAll,
    };
  }

  factory VpcEndpointServiceState.fromMap(Map<String, dynamic> map) {
    return VpcEndpointServiceState(
      acceptanceRequired: map['acceptanceRequired'] == null ? null : (map['acceptanceRequired'] as bool).input(),
      allowedPrincipals: map['allowedPrincipals'] == null ? null : ((map['allowedPrincipals'] as List).cast<String>()).input(),
      arn: map['arn'] == null ? null : (map['arn'] as String).input(),
      availabilityZones: map['availabilityZones'] == null ? null : ((map['availabilityZones'] as List).cast<String>()).input(),
      baseEndpointDnsNames: map['baseEndpointDnsNames'] == null ? null : ((map['baseEndpointDnsNames'] as List).cast<String>()).input(),
      gatewayLoadBalancerArns: map['gatewayLoadBalancerArns'] == null ? null : ((map['gatewayLoadBalancerArns'] as List).cast<String>()).input(),
      managesVpcEndpoints: map['managesVpcEndpoints'] == null ? null : (map['managesVpcEndpoints'] as bool).input(),
      networkLoadBalancerArns: map['networkLoadBalancerArns'] == null ? null : ((map['networkLoadBalancerArns'] as List).cast<String>()).input(),
      privateDnsName: map['privateDnsName'] == null ? null : (map['privateDnsName'] as String).input(),
      privateDnsNameConfigurations: map['privateDnsNameConfigurations'] == null ? null : (pulumi.Input.decodeList<VpcEndpointServicePrivateDnsNameConfiguration>(map['privateDnsNameConfigurations'], (value) => VpcEndpointServicePrivateDnsNameConfiguration.fromMap((value as Map).cast<String, dynamic>()))).input(),
      region: map['region'] == null ? null : (map['region'] as String).input(),
      serviceName: map['serviceName'] == null ? null : (map['serviceName'] as String).input(),
      serviceType: map['serviceType'] == null ? null : (map['serviceType'] as String).input(),
      state: map['state'] == null ? null : (map['state'] as String).input(),
      supportedIpAddressTypes: map['supportedIpAddressTypes'] == null ? null : ((map['supportedIpAddressTypes'] as List).cast<String>()).input(),
      supportedRegions: map['supportedRegions'] == null ? null : ((map['supportedRegions'] as List).cast<String>()).input(),
      tags: map['tags'] == null ? null : ((map['tags'] as Map).cast<String, String>()).input(),
      tagsAll: map['tagsAll'] == null ? null : ((map['tagsAll'] as Map).cast<String, String>()).input(),
    );
  }
}

