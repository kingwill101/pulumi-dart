// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_vpc_gateway_endpoint_gateway_endpoint_args_doc}
/// The set of arguments for GatewayEndpoint.
/// {@endtemplate}
/// {@macro pulumi_vpc_gateway_endpoint_gateway_endpoint_args_doc}
class GatewayEndpointArgs {
  /// The description of the VPC gateway endpoint.
  /// The length of the description information is between 1 and 255 characters.
  final pulumi.Input<String>? gatewayEndpointDescrption;
  /// The name of the VPC gateway endpoint.
  final pulumi.Input<String>? gatewayEndpointName;
  /// Access control policies for cloud services. This parameter is required when the cloud service is oss. For details about the syntax and structure of access policies, see [syntax and structure of permission Policies](https://help.aliyun.com/document_detail/93739.html).
  final pulumi.Input<String>? policyDocument;
  /// The ID of the resource group to which the instance belongs.
  final pulumi.Input<String>? resourceGroupId;
  /// The ID list of the route table associated with the VPC gateway endpoint. **NOTE:** this argument cannot be set at the same time as `alicloud.vpc.GatewayEndpointRouteTableAttachment`.
  final pulumi.Input<List<String>>? routeTables;
  /// The endpoint service name.
  final pulumi.Input<String> serviceName;
  /// The tags of the resource.
  final pulumi.Input<Map<String, String>>? tags;
  /// The ID of the VPC.
  final pulumi.Input<String> vpcId;

  /// Creates a new [GatewayEndpointArgs].
  /// [gatewayEndpointDescrption] The description of the VPC gateway endpoint.
  /// [gatewayEndpointName] The name of the VPC gateway endpoint.
  /// [policyDocument] Access control policies for cloud services. This parameter is required when the cloud service is oss. For details about the syntax and structure of access policies, see [syntax and structure of permission Policies](https://help.aliyun.com/document_detail/93739.html).
  /// [resourceGroupId] The ID of the resource group to which the instance belongs.
  /// [routeTables] The ID list of the route table associated with the VPC gateway endpoint. **NOTE:** this argument cannot be set at the same time as `alicloud.vpc.GatewayEndpointRouteTableAttachment`.
  /// [serviceName] The endpoint service name.
  /// [tags] The tags of the resource.
  /// [vpcId] The ID of the VPC.
  GatewayEndpointArgs({
    String? gatewayEndpointDescrption,
    String? gatewayEndpointName,
    String? policyDocument,
    String? resourceGroupId,
    List<String>? routeTables,
    required String serviceName,
    Map<String, String>? tags,
    required String vpcId,
  }) :
      gatewayEndpointDescrption = pulumi.Input.asOptionalInput<String>(gatewayEndpointDescrption),
      gatewayEndpointName = pulumi.Input.asOptionalInput<String>(gatewayEndpointName),
      policyDocument = pulumi.Input.asOptionalInput<String>(policyDocument),
      resourceGroupId = pulumi.Input.asOptionalInput<String>(resourceGroupId),
      routeTables = pulumi.Input.asOptionalInput<List<String>>(routeTables),
      serviceName = pulumi.Input.asInput<String>(serviceName),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      vpcId = pulumi.Input.asInput<String>(vpcId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'gatewayEndpointDescrption': ?gatewayEndpointDescrption,
      'gatewayEndpointName': ?gatewayEndpointName,
      'policyDocument': ?policyDocument,
      'resourceGroupId': ?resourceGroupId,
      'routeTables': ?routeTables,
      'serviceName': serviceName,
      'tags': ?tags,
      'vpcId': vpcId,
    };
  }

  factory GatewayEndpointArgs.fromMap(Map<String, dynamic> map) {
    return GatewayEndpointArgs(
      gatewayEndpointDescrption: map['gatewayEndpointDescrption'] == null ? null : map['gatewayEndpointDescrption'] as String,
      gatewayEndpointName: map['gatewayEndpointName'] == null ? null : map['gatewayEndpointName'] as String,
      policyDocument: map['policyDocument'] == null ? null : map['policyDocument'] as String,
      resourceGroupId: map['resourceGroupId'] == null ? null : map['resourceGroupId'] as String,
      routeTables: map['routeTables'] == null ? null : (map['routeTables'] as List).cast<String>(),
      serviceName: map['serviceName'] as String,
      tags: map['tags'] == null ? null : (map['tags'] as Map).cast<String, String>(),
      vpcId: map['vpcId'] as String,
    );
  }
}

