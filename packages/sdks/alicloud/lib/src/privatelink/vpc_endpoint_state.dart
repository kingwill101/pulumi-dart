// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering VpcEndpoint resources.
class VpcEndpointState {
  /// The IP address version. Valid values:
  /// - `IPv4` (default): IPv4.
  /// - `DualStack`: dual-stack.
  final pulumi.Input<String>? addressIpVersion;
  /// The bandwidth of the endpoint connection.  1024 to 10240. Unit: Mbit/s.
  final pulumi.Input<int>? bandwidth;
  /// The state of the endpoint connection.
  final pulumi.Input<String>? connectionStatus;
  /// The time when the endpoint was created.
  final pulumi.Input<String>? createTime;
  /// Specifies whether to perform only a dry run, without performing the actual request. Valid values:
  final pulumi.Input<bool>? dryRun;
  /// The service state of the endpoint.
  final pulumi.Input<String>? endpointBusinessStatus;
  /// The description of the endpoint.
  final pulumi.Input<String>? endpointDescription;
  /// The domain name of the endpoint.
  final pulumi.Input<String>? endpointDomain;
  /// The endpoint type.
  ///
  /// Only the value: Interface, indicating the Interface endpoint. You can add the service resource types of Application Load Balancer (ALB), Classic Load Balancer (CLB), and Network Load Balancer (NLB).
  final pulumi.Input<String>? endpointType;
  /// RAM access policies. For more information about policy definitions, see Alibaba Cloud-access control (RAM) official guidance.
  final pulumi.Input<String>? policyDocument;
  /// Specifies whether to enable user authentication. This parameter is available in Security Token Service (STS) mode. Valid values:
  final pulumi.Input<bool>? protectedEnabled;
  /// (Available since v1.239.0) The region ID of the endpoint.
  final pulumi.Input<String>? regionId;
  /// The resource group ID.
  final pulumi.Input<String>? resourceGroupId;
  /// The ID of the security group that is associated with the endpoint ENI. The security group can be used to control data transfer between the VPC and the endpoint ENI.
  ///
  /// The endpoint can be associated with up to 10 security groups.
  final pulumi.Input<List<String>>? securityGroupIds;
  /// The ID of the endpoint service with which the endpoint is associated.
  final pulumi.Input<String>? serviceId;
  /// The name of the endpoint service with which the endpoint is associated.
  final pulumi.Input<String>? serviceName;
  /// The state of the endpoint.
  final pulumi.Input<String>? status;
  /// The list of tags.
  final pulumi.Input<Map<String, String>>? tags;
  /// The name of the endpoint.
  final pulumi.Input<String>? vpcEndpointName;
  /// The ID of the VPC to which the endpoint belongs.
  final pulumi.Input<String>? vpcId;
  /// The number of private IP addresses that are assigned to an elastic network interface (ENI) in each zone. Only 1 is returned.
  final pulumi.Input<int>? zonePrivateIpAddressCount;

  /// Creates a new [VpcEndpointState].
  /// [addressIpVersion] The IP address version. Valid values:
  /// [bandwidth] The bandwidth of the endpoint connection.  1024 to 10240. Unit: Mbit/s.
  /// [connectionStatus] The state of the endpoint connection.
  /// [createTime] The time when the endpoint was created.
  /// [dryRun] Specifies whether to perform only a dry run, without performing the actual request. Valid values:
  /// [endpointBusinessStatus] The service state of the endpoint.
  /// [endpointDescription] The description of the endpoint.
  /// [endpointDomain] The domain name of the endpoint.
  /// [endpointType] The endpoint type.
  /// [policyDocument] RAM access policies. For more information about policy definitions, see Alibaba Cloud-access control (RAM) official guidance.
  /// [protectedEnabled] Specifies whether to enable user authentication. This parameter is available in Security Token Service (STS) mode. Valid values:
  /// [regionId] (Available since v1.239.0) The region ID of the endpoint.
  /// [resourceGroupId] The resource group ID.
  /// [securityGroupIds] The ID of the security group that is associated with the endpoint ENI. The security group can be used to control data transfer between the VPC and the endpoint ENI.
  /// [serviceId] The ID of the endpoint service with which the endpoint is associated.
  /// [serviceName] The name of the endpoint service with which the endpoint is associated.
  /// [status] The state of the endpoint.
  /// [tags] The list of tags.
  /// [vpcEndpointName] The name of the endpoint.
  /// [vpcId] The ID of the VPC to which the endpoint belongs.
  /// [zonePrivateIpAddressCount] The number of private IP addresses that are assigned to an elastic network interface (ENI) in each zone. Only 1 is returned.
  VpcEndpointState({
    this.addressIpVersion,
    this.bandwidth,
    this.connectionStatus,
    this.createTime,
    this.dryRun,
    this.endpointBusinessStatus,
    this.endpointDescription,
    this.endpointDomain,
    this.endpointType,
    this.policyDocument,
    this.protectedEnabled,
    this.regionId,
    this.resourceGroupId,
    this.securityGroupIds,
    this.serviceId,
    this.serviceName,
    this.status,
    this.tags,
    this.vpcEndpointName,
    this.vpcId,
    this.zonePrivateIpAddressCount,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'addressIpVersion': ?addressIpVersion,
      'bandwidth': ?bandwidth,
      'connectionStatus': ?connectionStatus,
      'createTime': ?createTime,
      'dryRun': ?dryRun,
      'endpointBusinessStatus': ?endpointBusinessStatus,
      'endpointDescription': ?endpointDescription,
      'endpointDomain': ?endpointDomain,
      'endpointType': ?endpointType,
      'policyDocument': ?policyDocument,
      'protectedEnabled': ?protectedEnabled,
      'regionId': ?regionId,
      'resourceGroupId': ?resourceGroupId,
      'securityGroupIds': ?securityGroupIds,
      'serviceId': ?serviceId,
      'serviceName': ?serviceName,
      'status': ?status,
      'tags': ?tags,
      'vpcEndpointName': ?vpcEndpointName,
      'vpcId': ?vpcId,
      'zonePrivateIpAddressCount': ?zonePrivateIpAddressCount,
    };
  }

  factory VpcEndpointState.fromMap(Map<String, dynamic> map) {
    return VpcEndpointState(
      addressIpVersion: map['addressIpVersion'] == null ? null : (map['addressIpVersion'] as String).input(),
      bandwidth: map['bandwidth'] == null ? null : (map['bandwidth'] as int).input(),
      connectionStatus: map['connectionStatus'] == null ? null : (map['connectionStatus'] as String).input(),
      createTime: map['createTime'] == null ? null : (map['createTime'] as String).input(),
      dryRun: map['dryRun'] == null ? null : (map['dryRun'] as bool).input(),
      endpointBusinessStatus: map['endpointBusinessStatus'] == null ? null : (map['endpointBusinessStatus'] as String).input(),
      endpointDescription: map['endpointDescription'] == null ? null : (map['endpointDescription'] as String).input(),
      endpointDomain: map['endpointDomain'] == null ? null : (map['endpointDomain'] as String).input(),
      endpointType: map['endpointType'] == null ? null : (map['endpointType'] as String).input(),
      policyDocument: map['policyDocument'] == null ? null : (map['policyDocument'] as String).input(),
      protectedEnabled: map['protectedEnabled'] == null ? null : (map['protectedEnabled'] as bool).input(),
      regionId: map['regionId'] == null ? null : (map['regionId'] as String).input(),
      resourceGroupId: map['resourceGroupId'] == null ? null : (map['resourceGroupId'] as String).input(),
      securityGroupIds: map['securityGroupIds'] == null ? null : ((map['securityGroupIds'] as List).cast<String>()).input(),
      serviceId: map['serviceId'] == null ? null : (map['serviceId'] as String).input(),
      serviceName: map['serviceName'] == null ? null : (map['serviceName'] as String).input(),
      status: map['status'] == null ? null : (map['status'] as String).input(),
      tags: map['tags'] == null ? null : ((map['tags'] as Map).cast<String, String>()).input(),
      vpcEndpointName: map['vpcEndpointName'] == null ? null : (map['vpcEndpointName'] as String).input(),
      vpcId: map['vpcId'] == null ? null : (map['vpcId'] as String).input(),
      zonePrivateIpAddressCount: map['zonePrivateIpAddressCount'] == null ? null : (map['zonePrivateIpAddressCount'] as int).input(),
    );
  }
}

