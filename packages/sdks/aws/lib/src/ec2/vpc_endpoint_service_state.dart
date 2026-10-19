// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'vpc_endpoint_service_private_dns_name_configuration.dart';

/// Input properties used for looking up and filtering VpcEndpointService resources.
class VpcEndpointServiceState {
  /// Whether or not VPC endpoint connection requests to the service must be accepted by the service owner - `true` or `false`.
  final pulumi.Input<bool?>? acceptanceRequired;
  /// ARNs of one or more principals allowed to discover the endpoint service.
  final pulumi.Input<List<String>?>? allowedPrincipals;
  /// ARN of the VPC endpoint service.
  final pulumi.Input<String?>? arn;
  /// Set of Availability Zones in which the service is available.
  final pulumi.Input<List<String>?>? availabilityZones;
  /// Set of DNS names for the service.
  final pulumi.Input<List<String>?>? baseEndpointDnsNames;
  /// ARNs of one or more Gateway Load Balancers for the endpoint service.
  final pulumi.Input<List<String>?>? gatewayLoadBalancerArns;
  /// Whether or not the service manages its VPC endpoints - `true` or `false`.
  final pulumi.Input<bool?>? managesVpcEndpoints;
  /// ARNs of one or more Network Load Balancers for the endpoint service.
  final pulumi.Input<List<String>?>? networkLoadBalancerArns;
  /// Private DNS name for the service.
  final pulumi.Input<String?>? privateDnsName;
  /// List of objects containing information about the endpoint service private DNS name configuration.
  final pulumi.Input<List<VpcEndpointServicePrivateDnsNameConfiguration>?>? privateDnsNameConfigurations;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String?>? region;
  /// Service name.
  final pulumi.Input<String?>? serviceName;
  /// Service type, `Gateway` or `Interface`.
  final pulumi.Input<String?>? serviceType;
  /// State of the VPC endpoint service.
  final pulumi.Input<String?>? state;
  /// Supported IP address types. The possible values are `ipv4` and `ipv6`.
  final pulumi.Input<List<String>?>? supportedIpAddressTypes;
  /// Set of regions from which service consumers can access the service.
  final pulumi.Input<List<String>?>? supportedRegions;
  /// Map of tags to assign to the resource. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>?>? tags;
  /// Map of tags assigned to the resource, including those inherited from the provider `defaultTags` configuration block.
  final pulumi.Input<Map<String, String>?>? tagsAll;

  /// Creates a new [VpcEndpointServiceState].
  /// [acceptanceRequired] Whether or not VPC endpoint connection requests to the service must be accepted by the service owner - `true` or `false`.
  /// [allowedPrincipals] ARNs of one or more principals allowed to discover the endpoint service.
  /// [arn] ARN of the VPC endpoint service.
  /// [availabilityZones] Set of Availability Zones in which the service is available.
  /// [baseEndpointDnsNames] Set of DNS names for the service.
  /// [gatewayLoadBalancerArns] ARNs of one or more Gateway Load Balancers for the endpoint service.
  /// [managesVpcEndpoints] Whether or not the service manages its VPC endpoints - `true` or `false`.
  /// [networkLoadBalancerArns] ARNs of one or more Network Load Balancers for the endpoint service.
  /// [privateDnsName] Private DNS name for the service.
  /// [privateDnsNameConfigurations] List of objects containing information about the endpoint service private DNS name configuration.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [serviceName] Service name.
  /// [serviceType] Service type, `Gateway` or `Interface`.
  /// [state] State of the VPC endpoint service.
  /// [supportedIpAddressTypes] Supported IP address types. The possible values are `ipv4` and `ipv6`.
  /// [supportedRegions] Set of regions from which service consumers can access the service.
  /// [tags] Map of tags to assign to the resource. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [tagsAll] Map of tags assigned to the resource, including those inherited from the provider `defaultTags` configuration block.
  const VpcEndpointServiceState({
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
      acceptanceRequired: (() { final guardedValue = map['acceptanceRequired']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      allowedPrincipals: (() { final guardedValue = map['allowedPrincipals']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      arn: (() { final guardedValue = map['arn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      availabilityZones: (() { final guardedValue = map['availabilityZones']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      baseEndpointDnsNames: (() { final guardedValue = map['baseEndpointDnsNames']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      gatewayLoadBalancerArns: (() { final guardedValue = map['gatewayLoadBalancerArns']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      managesVpcEndpoints: (() { final guardedValue = map['managesVpcEndpoints']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      networkLoadBalancerArns: (() { final guardedValue = map['networkLoadBalancerArns']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      privateDnsName: (() { final guardedValue = map['privateDnsName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      privateDnsNameConfigurations: (() { final guardedValue = map['privateDnsNameConfigurations']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<VpcEndpointServicePrivateDnsNameConfiguration>(guardedValue, (value) => VpcEndpointServicePrivateDnsNameConfiguration.fromMap((value as Map).cast<String, dynamic>()))); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      serviceName: (() { final guardedValue = map['serviceName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      serviceType: (() { final guardedValue = map['serviceType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      state: (() { final guardedValue = map['state']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      supportedIpAddressTypes: (() { final guardedValue = map['supportedIpAddressTypes']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      supportedRegions: (() { final guardedValue = map['supportedRegions']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      tagsAll: (() { final guardedValue = map['tagsAll']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
    );
  }
}
