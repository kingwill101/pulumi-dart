// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering GatewayEndpoint resources.
class GatewayEndpointState {
  /// The creation time of the VPC gateway endpoint.
  final pulumi.Input<String>? createTime;
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
  final pulumi.Input<String>? serviceName;
  /// The status of VPC gateway endpoint.
  final pulumi.Input<String>? status;
  /// The tags of the resource.
  final pulumi.Input<Map<String, String>>? tags;
  /// The ID of the VPC.
  final pulumi.Input<String>? vpcId;

  /// Creates a new [GatewayEndpointState].
  /// [createTime] The creation time of the VPC gateway endpoint.
  /// [gatewayEndpointDescrption] The description of the VPC gateway endpoint.
  /// [gatewayEndpointName] The name of the VPC gateway endpoint.
  /// [policyDocument] Access control policies for cloud services. This parameter is required when the cloud service is oss. For details about the syntax and structure of access policies, see [syntax and structure of permission Policies](https://help.aliyun.com/document_detail/93739.html).
  /// [resourceGroupId] The ID of the resource group to which the instance belongs.
  /// [routeTables] The ID list of the route table associated with the VPC gateway endpoint. **NOTE:** this argument cannot be set at the same time as `alicloud.vpc.GatewayEndpointRouteTableAttachment`.
  /// [serviceName] The endpoint service name.
  /// [status] The status of VPC gateway endpoint.
  /// [tags] The tags of the resource.
  /// [vpcId] The ID of the VPC.
  GatewayEndpointState({
    pulumi.Output<String>? createTime,
    pulumi.Output<String>? gatewayEndpointDescrption,
    pulumi.Output<String>? gatewayEndpointName,
    pulumi.Output<String>? policyDocument,
    pulumi.Output<String>? resourceGroupId,
    pulumi.Output<List<String>>? routeTables,
    pulumi.Output<String>? serviceName,
    pulumi.Output<String>? status,
    pulumi.Output<Map<String, String>>? tags,
    pulumi.Output<String>? vpcId,
  }) :
      createTime = pulumi.Input.asOptionalInput<String>(createTime),
      gatewayEndpointDescrption = pulumi.Input.asOptionalInput<String>(gatewayEndpointDescrption),
      gatewayEndpointName = pulumi.Input.asOptionalInput<String>(gatewayEndpointName),
      policyDocument = pulumi.Input.asOptionalInput<String>(policyDocument),
      resourceGroupId = pulumi.Input.asOptionalInput<String>(resourceGroupId),
      routeTables = pulumi.Input.asOptionalInput<List<String>>(routeTables),
      serviceName = pulumi.Input.asOptionalInput<String>(serviceName),
      status = pulumi.Input.asOptionalInput<String>(status),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      vpcId = pulumi.Input.asOptionalInput<String>(vpcId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'createTime': ?createTime,
      'gatewayEndpointDescrption': ?gatewayEndpointDescrption,
      'gatewayEndpointName': ?gatewayEndpointName,
      'policyDocument': ?policyDocument,
      'resourceGroupId': ?resourceGroupId,
      'routeTables': ?routeTables,
      'serviceName': ?serviceName,
      'status': ?status,
      'tags': ?tags,
      'vpcId': ?vpcId,
    };
  }

  factory GatewayEndpointState.fromMap(Map<String, dynamic> map) {
    return GatewayEndpointState(
      createTime: map['createTime'] == null ? null : pulumi.Output.create<String>(map['createTime'] as String),
      gatewayEndpointDescrption: map['gatewayEndpointDescrption'] == null ? null : pulumi.Output.create<String>(map['gatewayEndpointDescrption'] as String),
      gatewayEndpointName: map['gatewayEndpointName'] == null ? null : pulumi.Output.create<String>(map['gatewayEndpointName'] as String),
      policyDocument: map['policyDocument'] == null ? null : pulumi.Output.create<String>(map['policyDocument'] as String),
      resourceGroupId: map['resourceGroupId'] == null ? null : pulumi.Output.create<String>(map['resourceGroupId'] as String),
      routeTables: map['routeTables'] == null ? null : pulumi.Output.create<List<String>>((map['routeTables'] as List).cast<String>()),
      serviceName: map['serviceName'] == null ? null : pulumi.Output.create<String>(map['serviceName'] as String),
      status: map['status'] == null ? null : pulumi.Output.create<String>(map['status'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
      vpcId: map['vpcId'] == null ? null : pulumi.Output.create<String>(map['vpcId'] as String),
    );
  }
}

