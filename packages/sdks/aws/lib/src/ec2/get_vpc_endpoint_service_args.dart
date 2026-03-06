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
  /// Service name that is specified when creating a VPC endpoint. For AWS services the service name is usually in the form `com.amazonaws.&lt;region&gt;.&lt;service&gt;` (the SageMaker AI Notebook service is an exception to this rule, the service name is in the form `aws.sagemaker.&lt;region&gt;.notebook`).
  final pulumi.Input<String>? serviceName;
  /// AWS regions in which to look for services.
  final pulumi.Input<List<String>>? serviceRegions;
  /// Service type, `Gateway` or `Interface`.
  final pulumi.Input<String>? serviceType;
  /// Map of tags, each pair of which must exactly match a pair on the desired VPC Endpoint Service.
  ///
  /// &gt; **NOTE:** Specifying `service` will not work for non-AWS services or AWS services that don't follow the standard `service_name` pattern of `com.amazonaws.&lt;region&gt;.&lt;service&gt;`.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [GetVpcEndpointServiceArgs].
  /// [filters] Configuration block(s) for filtering. Detailed below.
  /// [service] Common name of an AWS service (e.g., `s3`).
  /// [serviceName] Service name that is specified when creating a VPC endpoint. For AWS services the service name is usually in the form `com.amazonaws.&lt;region&gt;.&lt;service&gt;` (the SageMaker AI Notebook service is an exception to this rule, the service name is in the form `aws.sagemaker.&lt;region&gt;.notebook`).
  /// [serviceRegions] AWS regions in which to look for services.
  /// [serviceType] Service type, `Gateway` or `Interface`.
  /// [tags] Map of tags, each pair of which must exactly match a pair on the desired VPC Endpoint Service.
  const GetVpcEndpointServiceArgs({
    this.filters,
    this.service,
    this.serviceName,
    this.serviceRegions,
    this.serviceType,
    this.tags,
  });

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
      filters: (() { final guardedValue = map['filters']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<GetVpcEndpointServiceFilter>(guardedValue, (value) => GetVpcEndpointServiceFilter.fromMap((value as Map).cast<String, dynamic>()))); })(),
      service: (() { final guardedValue = map['service']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      serviceName: (() { final guardedValue = map['serviceName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      serviceRegions: (() { final guardedValue = map['serviceRegions']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      serviceType: (() { final guardedValue = map['serviceType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
    );
  }
}

