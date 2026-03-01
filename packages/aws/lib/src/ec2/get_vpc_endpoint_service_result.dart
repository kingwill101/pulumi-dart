// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_vpc_endpoint_service_filter.dart';

/// Result data returned by getVpcEndpointService.
class GetVpcEndpointServiceResult {
  /// Whether or not VPC endpoint connection requests to the service must be accepted by the service owner - `true` or `false`.
  final bool acceptanceRequired;

  /// ARN of the VPC endpoint service.
  final String arn;

  /// Availability Zones in which the service is available. Not available for endpoint services in other regions.
  final List<String> availabilityZones;

  /// The DNS names for the service.
  final List<String> baseEndpointDnsNames;
  final List<GetVpcEndpointServiceFilter>? filters;

  /// The provider-assigned unique ID for this managed resource.
  final String id;

  /// Whether or not the service manages its VPC endpoints - `true` or `false`.
  final bool managesVpcEndpoints;

  /// AWS account ID of the service owner or `amazon`.
  final String owner;

  /// Private DNS name for the service.
  final String privateDnsName;

  /// Private DNS names assigned to the VPC endpoint service.
  final List<String> privateDnsNames;

  /// (**Deprecated**) Region of the endpoint service. Use `service_region` instead.
  final String region;
  final String? service;

  /// ID of the endpoint service.
  final String serviceId;
  final String serviceName;

  /// Region of the endpoint service.
  final String serviceRegion;
  final List<String>? serviceRegions;
  final String serviceType;

  /// The supported IP address types.
  final List<String> supportedIpAddressTypes;

  /// Map of tags assigned to the resource.
  final Map<String, String> tags;

  /// Whether or not the service supports endpoint policies - `true` or `false`.
  final bool vpcEndpointPolicySupported;

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
  /// [region] (**Deprecated**) Region of the endpoint service. Use `service_region` instead.
  /// [service] Optional.
  /// [serviceId] ID of the endpoint service.
  /// [serviceName] Required.
  /// [serviceRegion] Region of the endpoint service.
  /// [serviceRegions] Optional.
  /// [serviceType] Required.
  /// [supportedIpAddressTypes] The supported IP address types.
  /// [tags] Map of tags assigned to the resource.
  /// [vpcEndpointPolicySupported] Whether or not the service supports endpoint policies - `true` or `false`.
  GetVpcEndpointServiceResult({
    required this.acceptanceRequired,
    required this.arn,
    required this.availabilityZones,
    required this.baseEndpointDnsNames,
    this.filters,
    required this.id,
    required this.managesVpcEndpoints,
    required this.owner,
    required this.privateDnsName,
    required this.privateDnsNames,
    required this.region,
    this.service,
    required this.serviceId,
    required this.serviceName,
    required this.serviceRegion,
    this.serviceRegions,
    required this.serviceType,
    required this.supportedIpAddressTypes,
    required this.tags,
    required this.vpcEndpointPolicySupported,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'acceptanceRequired': acceptanceRequired,
      'arn': arn,
      'availabilityZones': availabilityZones,
      'baseEndpointDnsNames': baseEndpointDnsNames,
      'filters': ?filters == null
          ? null
          : pulumi.Input.encodeList<
              GetVpcEndpointServiceFilter,
              Map<String, dynamic>
            >(filters!, (value) => value.toMap()),
      'id': id,
      'managesVpcEndpoints': managesVpcEndpoints,
      'owner': owner,
      'privateDnsName': privateDnsName,
      'privateDnsNames': privateDnsNames,
      'region': region,
      'service': ?service,
      'serviceId': serviceId,
      'serviceName': serviceName,
      'serviceRegion': serviceRegion,
      'serviceRegions': ?serviceRegions,
      'serviceType': serviceType,
      'supportedIpAddressTypes': supportedIpAddressTypes,
      'tags': tags,
      'vpcEndpointPolicySupported': vpcEndpointPolicySupported,
    };
  }

  factory GetVpcEndpointServiceResult.fromMap(Map<String, dynamic> map) {
    return GetVpcEndpointServiceResult(
      acceptanceRequired: map['acceptanceRequired'] as bool,
      arn: map['arn'] as String,
      availabilityZones: (map['availabilityZones'] as List).cast<String>(),
      baseEndpointDnsNames: (map['baseEndpointDnsNames'] as List)
          .cast<String>(),
      filters: map['filters'] == null
          ? null
          : pulumi.Input.decodeList<GetVpcEndpointServiceFilter>(
              map['filters'],
              (value) => GetVpcEndpointServiceFilter.fromMap(
                (value as Map).cast<String, dynamic>(),
              ),
            ),
      id: map['id'] as String,
      managesVpcEndpoints: map['managesVpcEndpoints'] as bool,
      owner: map['owner'] as String,
      privateDnsName: map['privateDnsName'] as String,
      privateDnsNames: (map['privateDnsNames'] as List).cast<String>(),
      region: map['region'] as String,
      service: map['service'] == null ? null : map['service'] as String,
      serviceId: map['serviceId'] as String,
      serviceName: map['serviceName'] as String,
      serviceRegion: map['serviceRegion'] as String,
      serviceRegions: map['serviceRegions'] == null
          ? null
          : (map['serviceRegions'] as List).cast<String>(),
      serviceType: map['serviceType'] as String,
      supportedIpAddressTypes: (map['supportedIpAddressTypes'] as List)
          .cast<String>(),
      tags: (map['tags'] as Map).cast<String, String>(),
      vpcEndpointPolicySupported: map['vpcEndpointPolicySupported'] as bool,
    );
  }
}
