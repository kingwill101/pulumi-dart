// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_vpc_endpoint_service_filter.dart';

/// {@template pulumi_ec2_get_vpc_endpoint_service_get_vpc_endpoint_service_args_doc}
/// Arguments for getVpcEndpointService.
/// {@endtemplate}
/// {@macro pulumi_ec2_get_vpc_endpoint_service_get_vpc_endpoint_service_args_doc}
class GetVpcEndpointServiceArgs {
  /// Configuration block(s) for filtering. Detailed below.
  final pulumi.Input<List<GetVpcEndpointServiceFilter>>? filters;
  /// Common name of an AWS service (e.g., `s3`).
  final pulumi.Input<String>? service;
  /// Service name that is specified when creating a VPC endpoint. For AWS services the service name is usually in the form `com.amazonaws.<region>.<service>` (the SageMaker AI Notebook service is an exception to this rule, the service name is in the form `aws.sagemaker.<region>.notebook`).
  final pulumi.Input<String>? serviceName;
  /// AWS regions in which to look for services.
  final pulumi.Input<List<String>>? serviceRegions;
  /// Service type, `Gateway` or `Interface`.
  final pulumi.Input<String>? serviceType;
  /// Map of tags, each pair of which must exactly match a pair on the desired VPC Endpoint Service.
  ///
  /// > **NOTE:** Specifying `service` will not work for non-AWS services or AWS services that don't follow the standard `service_name` pattern of `com.amazonaws.<region>.<service>`.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [GetVpcEndpointServiceArgs].
  /// [filters] Configuration block(s) for filtering. Detailed below.
  /// [service] Common name of an AWS service (e.g., `s3`).
  /// [serviceName] Service name that is specified when creating a VPC endpoint. For AWS services the service name is usually in the form `com.amazonaws.<region>.<service>` (the SageMaker AI Notebook service is an exception to this rule, the service name is in the form `aws.sagemaker.<region>.notebook`).
  /// [serviceRegions] AWS regions in which to look for services.
  /// [serviceType] Service type, `Gateway` or `Interface`.
  /// [tags] Map of tags, each pair of which must exactly match a pair on the desired VPC Endpoint Service.
  GetVpcEndpointServiceArgs({
    List<GetVpcEndpointServiceFilter>? filters,
    String? service,
    String? serviceName,
    List<String>? serviceRegions,
    String? serviceType,
    Map<String, String>? tags,
  }) :
      filters = pulumi.Input.asOptionalInput<List<GetVpcEndpointServiceFilter>>(filters),
      service = pulumi.Input.asOptionalInput<String>(service),
      serviceName = pulumi.Input.asOptionalInput<String>(serviceName),
      serviceRegions = pulumi.Input.asOptionalInput<List<String>>(serviceRegions),
      serviceType = pulumi.Input.asOptionalInput<String>(serviceType),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'filters': ?pulumi.Input.mapOptionalInputValue<List<GetVpcEndpointServiceFilter>, List<Map<String, dynamic>>>(filters, (value) => pulumi.Input.encodeList<GetVpcEndpointServiceFilter, Map<String, dynamic>>(value, (value) => value.toMap())),
      'service': ?service,
      'serviceName': ?serviceName,
      'serviceRegions': ?serviceRegions,
      'serviceType': ?serviceType,
      'tags': ?tags,
    };
  }

  factory GetVpcEndpointServiceArgs.fromMap(Map<String, dynamic> map) {
    return GetVpcEndpointServiceArgs(
      filters: map['filters'] == null ? null : pulumi.Input.decodeList<GetVpcEndpointServiceFilter>(map['filters'], (value) => GetVpcEndpointServiceFilter.fromMap((value as Map).cast<String, dynamic>())),
      service: map['service'] == null ? null : map['service'] as String,
      serviceName: map['serviceName'] == null ? null : map['serviceName'] as String,
      serviceRegions: map['serviceRegions'] == null ? null : (map['serviceRegions'] as List).cast<String>(),
      serviceType: map['serviceType'] == null ? null : map['serviceType'] as String,
      tags: map['tags'] == null ? null : (map['tags'] as Map).cast<String, String>(),
    );
  }
}

