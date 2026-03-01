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
    pulumi.Output<bool>? acceptanceRequired,
    pulumi.Output<List<String>>? allowedPrincipals,
    pulumi.Output<String>? arn,
    pulumi.Output<List<String>>? availabilityZones,
    pulumi.Output<List<String>>? baseEndpointDnsNames,
    pulumi.Output<List<String>>? gatewayLoadBalancerArns,
    pulumi.Output<bool>? managesVpcEndpoints,
    pulumi.Output<List<String>>? networkLoadBalancerArns,
    pulumi.Output<String>? privateDnsName,
    pulumi.Output<List<VpcEndpointServicePrivateDnsNameConfiguration>>? privateDnsNameConfigurations,
    pulumi.Output<String>? region,
    pulumi.Output<String>? serviceName,
    pulumi.Output<String>? serviceType,
    pulumi.Output<String>? state,
    pulumi.Output<List<String>>? supportedIpAddressTypes,
    pulumi.Output<List<String>>? supportedRegions,
    pulumi.Output<Map<String, String>>? tags,
    pulumi.Output<Map<String, String>>? tagsAll,
  }) :
      acceptanceRequired = pulumi.Input.asOptionalInput<bool>(acceptanceRequired),
      allowedPrincipals = pulumi.Input.asOptionalInput<List<String>>(allowedPrincipals),
      arn = pulumi.Input.asOptionalInput<String>(arn),
      availabilityZones = pulumi.Input.asOptionalInput<List<String>>(availabilityZones),
      baseEndpointDnsNames = pulumi.Input.asOptionalInput<List<String>>(baseEndpointDnsNames),
      gatewayLoadBalancerArns = pulumi.Input.asOptionalInput<List<String>>(gatewayLoadBalancerArns),
      managesVpcEndpoints = pulumi.Input.asOptionalInput<bool>(managesVpcEndpoints),
      networkLoadBalancerArns = pulumi.Input.asOptionalInput<List<String>>(networkLoadBalancerArns),
      privateDnsName = pulumi.Input.asOptionalInput<String>(privateDnsName),
      privateDnsNameConfigurations = pulumi.Input.asOptionalInput<List<VpcEndpointServicePrivateDnsNameConfiguration>>(privateDnsNameConfigurations),
      region = pulumi.Input.asOptionalInput<String>(region),
      serviceName = pulumi.Input.asOptionalInput<String>(serviceName),
      serviceType = pulumi.Input.asOptionalInput<String>(serviceType),
      state = pulumi.Input.asOptionalInput<String>(state),
      supportedIpAddressTypes = pulumi.Input.asOptionalInput<List<String>>(supportedIpAddressTypes),
      supportedRegions = pulumi.Input.asOptionalInput<List<String>>(supportedRegions),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      tagsAll = pulumi.Input.asOptionalInput<Map<String, String>>(tagsAll);

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
      acceptanceRequired: map['acceptanceRequired'] == null ? null : pulumi.Output.create<bool>(map['acceptanceRequired'] as bool),
      allowedPrincipals: map['allowedPrincipals'] == null ? null : pulumi.Output.create<List<String>>((map['allowedPrincipals'] as List).cast<String>()),
      arn: map['arn'] == null ? null : pulumi.Output.create<String>(map['arn'] as String),
      availabilityZones: map['availabilityZones'] == null ? null : pulumi.Output.create<List<String>>((map['availabilityZones'] as List).cast<String>()),
      baseEndpointDnsNames: map['baseEndpointDnsNames'] == null ? null : pulumi.Output.create<List<String>>((map['baseEndpointDnsNames'] as List).cast<String>()),
      gatewayLoadBalancerArns: map['gatewayLoadBalancerArns'] == null ? null : pulumi.Output.create<List<String>>((map['gatewayLoadBalancerArns'] as List).cast<String>()),
      managesVpcEndpoints: map['managesVpcEndpoints'] == null ? null : pulumi.Output.create<bool>(map['managesVpcEndpoints'] as bool),
      networkLoadBalancerArns: map['networkLoadBalancerArns'] == null ? null : pulumi.Output.create<List<String>>((map['networkLoadBalancerArns'] as List).cast<String>()),
      privateDnsName: map['privateDnsName'] == null ? null : pulumi.Output.create<String>(map['privateDnsName'] as String),
      privateDnsNameConfigurations: map['privateDnsNameConfigurations'] == null ? null : pulumi.Output.create<List<VpcEndpointServicePrivateDnsNameConfiguration>>(pulumi.Input.decodeList<VpcEndpointServicePrivateDnsNameConfiguration>(map['privateDnsNameConfigurations'], (value) => VpcEndpointServicePrivateDnsNameConfiguration.fromMap((value as Map).cast<String, dynamic>()))),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      serviceName: map['serviceName'] == null ? null : pulumi.Output.create<String>(map['serviceName'] as String),
      serviceType: map['serviceType'] == null ? null : pulumi.Output.create<String>(map['serviceType'] as String),
      state: map['state'] == null ? null : pulumi.Output.create<String>(map['state'] as String),
      supportedIpAddressTypes: map['supportedIpAddressTypes'] == null ? null : pulumi.Output.create<List<String>>((map['supportedIpAddressTypes'] as List).cast<String>()),
      supportedRegions: map['supportedRegions'] == null ? null : pulumi.Output.create<List<String>>((map['supportedRegions'] as List).cast<String>()),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
      tagsAll: map['tagsAll'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tagsAll'] as Map).cast<String, String>()),
    );
  }
}

