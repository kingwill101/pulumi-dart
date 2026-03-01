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
    pulumi.Output<String>? addressIpVersion,
    pulumi.Output<int>? bandwidth,
    pulumi.Output<String>? connectionStatus,
    pulumi.Output<String>? createTime,
    pulumi.Output<bool>? dryRun,
    pulumi.Output<String>? endpointBusinessStatus,
    pulumi.Output<String>? endpointDescription,
    pulumi.Output<String>? endpointDomain,
    pulumi.Output<String>? endpointType,
    pulumi.Output<String>? policyDocument,
    pulumi.Output<bool>? protectedEnabled,
    pulumi.Output<String>? regionId,
    pulumi.Output<String>? resourceGroupId,
    pulumi.Output<List<String>>? securityGroupIds,
    pulumi.Output<String>? serviceId,
    pulumi.Output<String>? serviceName,
    pulumi.Output<String>? status,
    pulumi.Output<Map<String, String>>? tags,
    pulumi.Output<String>? vpcEndpointName,
    pulumi.Output<String>? vpcId,
    pulumi.Output<int>? zonePrivateIpAddressCount,
  }) :
      addressIpVersion = pulumi.Input.asOptionalInput<String>(addressIpVersion),
      bandwidth = pulumi.Input.asOptionalInput<int>(bandwidth),
      connectionStatus = pulumi.Input.asOptionalInput<String>(connectionStatus),
      createTime = pulumi.Input.asOptionalInput<String>(createTime),
      dryRun = pulumi.Input.asOptionalInput<bool>(dryRun),
      endpointBusinessStatus = pulumi.Input.asOptionalInput<String>(endpointBusinessStatus),
      endpointDescription = pulumi.Input.asOptionalInput<String>(endpointDescription),
      endpointDomain = pulumi.Input.asOptionalInput<String>(endpointDomain),
      endpointType = pulumi.Input.asOptionalInput<String>(endpointType),
      policyDocument = pulumi.Input.asOptionalInput<String>(policyDocument),
      protectedEnabled = pulumi.Input.asOptionalInput<bool>(protectedEnabled),
      regionId = pulumi.Input.asOptionalInput<String>(regionId),
      resourceGroupId = pulumi.Input.asOptionalInput<String>(resourceGroupId),
      securityGroupIds = pulumi.Input.asOptionalInput<List<String>>(securityGroupIds),
      serviceId = pulumi.Input.asOptionalInput<String>(serviceId),
      serviceName = pulumi.Input.asOptionalInput<String>(serviceName),
      status = pulumi.Input.asOptionalInput<String>(status),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      vpcEndpointName = pulumi.Input.asOptionalInput<String>(vpcEndpointName),
      vpcId = pulumi.Input.asOptionalInput<String>(vpcId),
      zonePrivateIpAddressCount = pulumi.Input.asOptionalInput<int>(zonePrivateIpAddressCount);

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
      addressIpVersion: map['addressIpVersion'] == null ? null : pulumi.Output.create<String>(map['addressIpVersion'] as String),
      bandwidth: map['bandwidth'] == null ? null : pulumi.Output.create<int>(map['bandwidth'] as int),
      connectionStatus: map['connectionStatus'] == null ? null : pulumi.Output.create<String>(map['connectionStatus'] as String),
      createTime: map['createTime'] == null ? null : pulumi.Output.create<String>(map['createTime'] as String),
      dryRun: map['dryRun'] == null ? null : pulumi.Output.create<bool>(map['dryRun'] as bool),
      endpointBusinessStatus: map['endpointBusinessStatus'] == null ? null : pulumi.Output.create<String>(map['endpointBusinessStatus'] as String),
      endpointDescription: map['endpointDescription'] == null ? null : pulumi.Output.create<String>(map['endpointDescription'] as String),
      endpointDomain: map['endpointDomain'] == null ? null : pulumi.Output.create<String>(map['endpointDomain'] as String),
      endpointType: map['endpointType'] == null ? null : pulumi.Output.create<String>(map['endpointType'] as String),
      policyDocument: map['policyDocument'] == null ? null : pulumi.Output.create<String>(map['policyDocument'] as String),
      protectedEnabled: map['protectedEnabled'] == null ? null : pulumi.Output.create<bool>(map['protectedEnabled'] as bool),
      regionId: map['regionId'] == null ? null : pulumi.Output.create<String>(map['regionId'] as String),
      resourceGroupId: map['resourceGroupId'] == null ? null : pulumi.Output.create<String>(map['resourceGroupId'] as String),
      securityGroupIds: map['securityGroupIds'] == null ? null : pulumi.Output.create<List<String>>((map['securityGroupIds'] as List).cast<String>()),
      serviceId: map['serviceId'] == null ? null : pulumi.Output.create<String>(map['serviceId'] as String),
      serviceName: map['serviceName'] == null ? null : pulumi.Output.create<String>(map['serviceName'] as String),
      status: map['status'] == null ? null : pulumi.Output.create<String>(map['status'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
      vpcEndpointName: map['vpcEndpointName'] == null ? null : pulumi.Output.create<String>(map['vpcEndpointName'] as String),
      vpcId: map['vpcId'] == null ? null : pulumi.Output.create<String>(map['vpcId'] as String),
      zonePrivateIpAddressCount: map['zonePrivateIpAddressCount'] == null ? null : pulumi.Output.create<int>(map['zonePrivateIpAddressCount'] as int),
    );
  }
}

