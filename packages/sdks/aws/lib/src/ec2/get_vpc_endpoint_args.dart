// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_vpc_endpoint_filter.dart';

/// {@template pulumi_ec2_get_vpc_endpoint_get_vpc_endpoint_args_doc}
/// Arguments for getVpcEndpoint.
/// {@endtemplate}
/// {@macro pulumi_ec2_get_vpc_endpoint_get_vpc_endpoint_args_doc}
class GetVpcEndpointArgs {
  /// Custom filter block as described below.
  final pulumi.Input<List<GetVpcEndpointFilter>>? filters;
  /// ID of the specific VPC Endpoint to retrieve.
  final pulumi.Input<String>? id;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// Service name of the specific VPC Endpoint to retrieve. For AWS services the service name is usually in the form `com.amazonaws.&lt;region&gt;.&lt;service&gt;` (the SageMaker AI Notebook service is an exception to this rule, the service name is in the form `aws.sagemaker.&lt;region&gt;.notebook`).
  final pulumi.Input<String>? serviceName;
  /// AWS region of the VPC Endpoint Service. Applicable for endpoints of type `Interface`.
  final pulumi.Input<String>? serviceRegion;
  /// State of the specific VPC Endpoint to retrieve.
  final pulumi.Input<String>? state;
  /// Map of tags, each pair of which must exactly match
  /// a pair on the specific VPC Endpoint to retrieve.
  final pulumi.Input<Map<String, String>>? tags;
  /// VPC Endpoint type. Valid values are `Interface`, `Gateway`, `GatewayLoadBalancer`, `Resource`, and `ServiceNetwork`.
  final pulumi.Input<String>? vpcEndpointType;
  /// ID of the VPC in which the specific VPC Endpoint is used.
  ///
  /// The arguments of this data source act as filters for querying the available VPC endpoints.
  /// The given filters must match exactly one VPC endpoint whose data will be exported as attributes.
  final pulumi.Input<String>? vpcId;

  /// Creates a new [GetVpcEndpointArgs].
  /// [filters] Custom filter block as described below.
  /// [id] ID of the specific VPC Endpoint to retrieve.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [serviceName] Service name of the specific VPC Endpoint to retrieve. For AWS services the service name is usually in the form `com.amazonaws.&lt;region&gt;.&lt;service&gt;` (the SageMaker AI Notebook service is an exception to this rule, the service name is in the form `aws.sagemaker.&lt;region&gt;.notebook`).
  /// [serviceRegion] AWS region of the VPC Endpoint Service. Applicable for endpoints of type `Interface`.
  /// [state] State of the specific VPC Endpoint to retrieve.
  /// [tags] Map of tags, each pair of which must exactly match
  /// [vpcEndpointType] VPC Endpoint type. Valid values are `Interface`, `Gateway`, `GatewayLoadBalancer`, `Resource`, and `ServiceNetwork`.
  /// [vpcId] ID of the VPC in which the specific VPC Endpoint is used.
  const GetVpcEndpointArgs({
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
    return <String, dynamic>{
      'filters': ?pulumi.Input.mapOptionalInputValue<List<GetVpcEndpointFilter>, List<Map<String, dynamic>>>(filters, (value) => pulumi.Input.encodeList<GetVpcEndpointFilter, Map<String, dynamic>>(value, (value) => value.toMap())),
      'id': ?id,
      'region': ?region,
      'serviceName': ?serviceName,
      'serviceRegion': ?serviceRegion,
      'state': ?state,
      'tags': ?tags,
      'vpcEndpointType': ?vpcEndpointType,
      'vpcId': ?vpcId,
    };
  }

  factory GetVpcEndpointArgs.fromMap(Map<String, dynamic> map) {
    return GetVpcEndpointArgs(
      filters: (() { final guardedValue = map['filters']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<GetVpcEndpointFilter>(guardedValue, (value) => GetVpcEndpointFilter.fromMap((value as Map).cast<String, dynamic>()))); })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      serviceName: (() { final guardedValue = map['serviceName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      serviceRegion: (() { final guardedValue = map['serviceRegion']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      state: (() { final guardedValue = map['state']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      vpcEndpointType: (() { final guardedValue = map['vpcEndpointType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      vpcId: (() { final guardedValue = map['vpcId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

