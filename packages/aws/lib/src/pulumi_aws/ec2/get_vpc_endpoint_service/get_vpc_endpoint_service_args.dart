// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../get_vpc_endpoint_service_filter/get_vpc_endpoint_service_filter.dart';

/// Arguments for getVpcEndpointService.
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

  GetVpcEndpointServiceArgs({
    this.filters,
    this.service,
    this.serviceName,
    this.serviceRegions,
    this.serviceType,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final filtersValue = filters;
    if (filtersValue != null) {
      map['filters'] = pulumi.Input.mapOptionalInputValue<
              List<GetVpcEndpointServiceFilter>, List<Map<String, dynamic>>>(
          filtersValue,
          (value) => pulumi.Input.encodeList<GetVpcEndpointServiceFilter,
              Map<String, dynamic>>(value, (value) => value.toMap()));
    }
    final serviceValue = service;
    if (serviceValue != null) {
      map['service'] = serviceValue;
    }
    final serviceNameValue = serviceName;
    if (serviceNameValue != null) {
      map['serviceName'] = serviceNameValue;
    }
    final serviceRegionsValue = serviceRegions;
    if (serviceRegionsValue != null) {
      map['serviceRegions'] = serviceRegionsValue;
    }
    final serviceTypeValue = serviceType;
    if (serviceTypeValue != null) {
      map['serviceType'] = serviceTypeValue;
    }
    final tagsValue = tags;
    if (tagsValue != null) {
      map['tags'] = tagsValue;
    }
    return map;
  }

  factory GetVpcEndpointServiceArgs.fromMap(Map<String, dynamic> map) {
    return GetVpcEndpointServiceArgs(
      filters: pulumi.Input.asOptionalInput<List<GetVpcEndpointServiceFilter>>(
          map['filters']),
      service: pulumi.Input.asOptionalInput<String>(map['service']),
      serviceName: pulumi.Input.asOptionalInput<String>(map['serviceName']),
      serviceRegions:
          pulumi.Input.asOptionalInput<List<String>>(map['serviceRegions']),
      serviceType: pulumi.Input.asOptionalInput<String>(map['serviceType']),
      tags: pulumi.Input.asOptionalInput<Map<String, String>>(map['tags']),
    );
  }
}
