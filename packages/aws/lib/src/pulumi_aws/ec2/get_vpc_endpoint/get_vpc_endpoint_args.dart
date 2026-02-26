// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../get_vpc_endpoint_filter/get_vpc_endpoint_filter.dart';

/// Arguments for getVpcEndpoint.
class GetVpcEndpointArgs {
  /// Custom filter block as described below.
  final Input<List<GetVpcEndpointFilter>>? filters;

  /// ID of the specific VPC Endpoint to retrieve.
  final Input<String>? id;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final Input<String>? region;

  /// Service name of the specific VPC Endpoint to retrieve. For AWS services the service name is usually in the form `com.amazonaws.<region>.<service>` (the SageMaker AI Notebook service is an exception to this rule, the service name is in the form `aws.sagemaker.<region>.notebook`).
  final Input<String>? serviceName;

  /// AWS region of the VPC Endpoint Service. Applicable for endpoints of type `Interface`.
  final Input<String>? serviceRegion;

  /// State of the specific VPC Endpoint to retrieve.
  final Input<String>? state;

  /// Map of tags, each pair of which must exactly match
  /// a pair on the specific VPC Endpoint to retrieve.
  final Input<Map<String, String>>? tags;

  /// VPC Endpoint type. Valid values are `Interface`, `Gateway`, `GatewayLoadBalancer`, `Resource`, and `ServiceNetwork`.
  final Input<String>? vpcEndpointType;

  /// ID of the VPC in which the specific VPC Endpoint is used.
  ///
  /// The arguments of this data source act as filters for querying the available VPC endpoints.
  /// The given filters must match exactly one VPC endpoint whose data will be exported as attributes.
  final Input<String>? vpcId;

  GetVpcEndpointArgs({
    this.filters,
    this.id,
    this.region,
    this.serviceName,
    this.serviceRegion,
    this.state,
    this.tags,
    this.vpcEndpointType,
    this.vpcId,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final filtersValue = filters;
    if (filtersValue != null) {
      map['filters'] = Input.mapOptionalInputValue<List<GetVpcEndpointFilter>,
              List<Map<String, dynamic>>>(
          filtersValue,
          (value) =>
              Input.encodeList<GetVpcEndpointFilter, Map<String, dynamic>>(
                  value, (value) => value.toMap()));
    }
    final idValue = id;
    if (idValue != null) {
      map['id'] = idValue;
    }
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    final serviceNameValue = serviceName;
    if (serviceNameValue != null) {
      map['serviceName'] = serviceNameValue;
    }
    final serviceRegionValue = serviceRegion;
    if (serviceRegionValue != null) {
      map['serviceRegion'] = serviceRegionValue;
    }
    final stateValue = state;
    if (stateValue != null) {
      map['state'] = stateValue;
    }
    final tagsValue = tags;
    if (tagsValue != null) {
      map['tags'] = tagsValue;
    }
    final vpcEndpointTypeValue = vpcEndpointType;
    if (vpcEndpointTypeValue != null) {
      map['vpcEndpointType'] = vpcEndpointTypeValue;
    }
    final vpcIdValue = vpcId;
    if (vpcIdValue != null) {
      map['vpcId'] = vpcIdValue;
    }
    return map;
  }

  factory GetVpcEndpointArgs.fromMap(Map<String, dynamic> map) {
    return GetVpcEndpointArgs(
      filters:
          Input.asOptionalInput<List<GetVpcEndpointFilter>>(map['filters']),
      id: Input.asOptionalInput<String>(map['id']),
      region: Input.asOptionalInput<String>(map['region']),
      serviceName: Input.asOptionalInput<String>(map['serviceName']),
      serviceRegion: Input.asOptionalInput<String>(map['serviceRegion']),
      state: Input.asOptionalInput<String>(map['state']),
      tags: Input.asOptionalInput<Map<String, String>>(map['tags']),
      vpcEndpointType: Input.asOptionalInput<String>(map['vpcEndpointType']),
      vpcId: Input.asOptionalInput<String>(map['vpcId']),
    );
  }
}
