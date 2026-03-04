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
    this.createTime,
    this.gatewayEndpointDescrption,
    this.gatewayEndpointName,
    this.policyDocument,
    this.resourceGroupId,
    this.routeTables,
    this.serviceName,
    this.status,
    this.tags,
    this.vpcId,
  });

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
      createTime: (() {
        final guardedValue = map['createTime'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      gatewayEndpointDescrption: (() {
        final guardedValue = map['gatewayEndpointDescrption'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      gatewayEndpointName: (() {
        final guardedValue = map['gatewayEndpointName'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      policyDocument: (() {
        final guardedValue = map['policyDocument'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      resourceGroupId: (() {
        final guardedValue = map['resourceGroupId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      routeTables: (() {
        final guardedValue = map['routeTables'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue((guardedValue as List).cast<String>());
      })(),
      serviceName: (() {
        final guardedValue = map['serviceName'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      status: (() {
        final guardedValue = map['status'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      tags: (() {
        final guardedValue = map['tags'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          (guardedValue as Map).cast<String, String>(),
        );
      })(),
      vpcId: (() {
        final guardedValue = map['vpcId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
