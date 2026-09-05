// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_vpc_endpoint_service_filter.dart';

/// Result data returned by getVpcEndpointService.
class GetVpcEndpointServiceResult {
  /// Whether or not VPC endpoint connection requests to the service must be accepted by the service owner - `true` or `false`.
  final bool? acceptanceRequired;
  /// ARN of the VPC endpoint service.
  final String? arn;
  /// Availability Zones in which the service is available. Not available for endpoint services in other regions.
  final List<String>? availabilityZones;
  /// The DNS names for the service.
  final List<String>? baseEndpointDnsNames;
  final List<GetVpcEndpointServiceFilter>? filters;
  /// The provider-assigned unique ID for this managed resource.
  final String? id;
  /// Whether or not the service manages its VPC endpoints - `true` or `false`.
  final bool? managesVpcEndpoints;
  /// AWS account ID of the service owner or `amazon`.
  final String? owner;
  /// Private DNS name for the service.
  final String? privateDnsName;
  /// Private DNS names assigned to the VPC endpoint service.
  final List<String>? privateDnsNames;
  /// (**Deprecated**) Region of the endpoint service. Use `serviceRegion` instead.
  final String? region;
  final String? service;
  /// ID of the endpoint service.
  final String? serviceId;
  final String? serviceName;
  /// Region of the endpoint service.
  final String? serviceRegion;
  final List<String>? serviceRegions;
  final String? serviceType;
  /// The supported IP address types.
  final List<String>? supportedIpAddressTypes;
  /// Map of tags assigned to the resource.
  final Map<String, String>? tags;
  /// Whether or not the service supports endpoint policies - `true` or `false`.
  final bool? vpcEndpointPolicySupported;

  /// Creates a new [GetVpcEndpointServiceResult].
  /// [acceptanceRequired] Whether or not VPC endpoint connection requests to the service must be accepted by the service owner - `true` or `false`.
  /// [arn] ARN of the VPC endpoint service.
  /// [availabilityZones] Availability Zones in which the service is available. Not available for endpoint services in other regions.
  /// [baseEndpointDnsNames] The DNS names for the service.
  /// [filters] Optional.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [managesVpcEndpoints] Whether or not the service manages its VPC endpoints - `true` or `false`.
  /// [owner] AWS account ID of the service owner or `amazon`.
  /// [privateDnsName] Private DNS name for the service.
  /// [privateDnsNames] Private DNS names assigned to the VPC endpoint service.
  /// [region] (**Deprecated**) Region of the endpoint service. Use `serviceRegion` instead.
  /// [service] Optional.
  /// [serviceId] ID of the endpoint service.
  /// [serviceName] Optional.
  /// [serviceRegion] Region of the endpoint service.
  /// [serviceRegions] Optional.
  /// [serviceType] Optional.
  /// [supportedIpAddressTypes] The supported IP address types.
  /// [tags] Map of tags assigned to the resource.
  /// [vpcEndpointPolicySupported] Whether or not the service supports endpoint policies - `true` or `false`.
  const GetVpcEndpointServiceResult({
    this.acceptanceRequired,
    this.arn,
    this.availabilityZones,
    this.baseEndpointDnsNames,
    this.filters,
    this.id,
    this.managesVpcEndpoints,
    this.owner,
    this.privateDnsName,
    this.privateDnsNames,
    this.region,
    this.service,
    this.serviceId,
    this.serviceName,
    this.serviceRegion,
    this.serviceRegions,
    this.serviceType,
    this.supportedIpAddressTypes,
    this.tags,
    this.vpcEndpointPolicySupported,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'acceptanceRequired': ?acceptanceRequired,
      'arn': ?arn,
      'availabilityZones': ?availabilityZones,
      'baseEndpointDnsNames': ?baseEndpointDnsNames,
      'filters': ?(() { final guardedValue = filters; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetVpcEndpointServiceFilter, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'id': ?id,
      'managesVpcEndpoints': ?managesVpcEndpoints,
      'owner': ?owner,
      'privateDnsName': ?privateDnsName,
      'privateDnsNames': ?privateDnsNames,
      'region': ?region,
      'service': ?service,
      'serviceId': ?serviceId,
      'serviceName': ?serviceName,
      'serviceRegion': ?serviceRegion,
      'serviceRegions': ?serviceRegions,
      'serviceType': ?serviceType,
      'supportedIpAddressTypes': ?supportedIpAddressTypes,
      'tags': ?tags,
      'vpcEndpointPolicySupported': ?vpcEndpointPolicySupported,
    };
  }

  factory GetVpcEndpointServiceResult.fromMap(Map<String, dynamic> map) {
    return GetVpcEndpointServiceResult(
      acceptanceRequired: (() { final guardedValue = map['acceptanceRequired']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      arn: (() { final guardedValue = map['arn']; if (guardedValue == null) return null; return guardedValue as String; })(),
      availabilityZones: (() { final guardedValue = map['availabilityZones']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
      baseEndpointDnsNames: (() { final guardedValue = map['baseEndpointDnsNames']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
      filters: (() { final guardedValue = map['filters']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetVpcEndpointServiceFilter>(guardedValue, (value) => GetVpcEndpointServiceFilter.fromMap((value as Map).cast<String, dynamic>())); })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      managesVpcEndpoints: (() { final guardedValue = map['managesVpcEndpoints']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      owner: (() { final guardedValue = map['owner']; if (guardedValue == null) return null; return guardedValue as String; })(),
      privateDnsName: (() { final guardedValue = map['privateDnsName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      privateDnsNames: (() { final guardedValue = map['privateDnsNames']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return guardedValue as String; })(),
      service: (() { final guardedValue = map['service']; if (guardedValue == null) return null; return guardedValue as String; })(),
      serviceId: (() { final guardedValue = map['serviceId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      serviceName: (() { final guardedValue = map['serviceName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      serviceRegion: (() { final guardedValue = map['serviceRegion']; if (guardedValue == null) return null; return guardedValue as String; })(),
      serviceRegions: (() { final guardedValue = map['serviceRegions']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
      serviceType: (() { final guardedValue = map['serviceType']; if (guardedValue == null) return null; return guardedValue as String; })(),
      supportedIpAddressTypes: (() { final guardedValue = map['supportedIpAddressTypes']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      vpcEndpointPolicySupported: (() { final guardedValue = map['vpcEndpointPolicySupported']; if (guardedValue == null) return null; return guardedValue as bool; })(),
    );
  }
}
