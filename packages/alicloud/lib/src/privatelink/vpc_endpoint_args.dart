// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_privatelink_vpc_endpoint_vpc_endpoint_args_doc}
/// The set of arguments for VpcEndpoint.
/// {@endtemplate}
/// {@macro pulumi_privatelink_vpc_endpoint_vpc_endpoint_args_doc}
class VpcEndpointArgs {
  /// The IP address version. Valid values:
  /// - `IPv4` (default): IPv4.
  /// - `DualStack`: dual-stack.
  final pulumi.Input<String>? addressIpVersion;
  /// Specifies whether to perform only a dry run, without performing the actual request. Valid values:
  final pulumi.Input<bool>? dryRun;
  /// The description of the endpoint.
  final pulumi.Input<String>? endpointDescription;
  /// The endpoint type.
  ///
  /// Only the value: Interface, indicating the Interface endpoint. You can add the service resource types of Application Load Balancer (ALB), Classic Load Balancer (CLB), and Network Load Balancer (NLB).
  final pulumi.Input<String>? endpointType;
  /// RAM access policies. For more information about policy definitions, see Alibaba Cloud-access control (RAM) official guidance.
  final pulumi.Input<String>? policyDocument;
  /// Specifies whether to enable user authentication. This parameter is available in Security Token Service (STS) mode. Valid values:
  final pulumi.Input<bool>? protectedEnabled;
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
  /// The list of tags.
  final pulumi.Input<Map<String, String>>? tags;
  /// The name of the endpoint.
  final pulumi.Input<String>? vpcEndpointName;
  /// The ID of the VPC to which the endpoint belongs.
  final pulumi.Input<String> vpcId;
  /// The number of private IP addresses that are assigned to an elastic network interface (ENI) in each zone. Only 1 is returned.
  final pulumi.Input<int>? zonePrivateIpAddressCount;

  /// Creates a new [VpcEndpointArgs].
  /// [addressIpVersion] The IP address version. Valid values:
  /// [dryRun] Specifies whether to perform only a dry run, without performing the actual request. Valid values:
  /// [endpointDescription] The description of the endpoint.
  /// [endpointType] The endpoint type.
  /// [policyDocument] RAM access policies. For more information about policy definitions, see Alibaba Cloud-access control (RAM) official guidance.
  /// [protectedEnabled] Specifies whether to enable user authentication. This parameter is available in Security Token Service (STS) mode. Valid values:
  /// [resourceGroupId] The resource group ID.
  /// [securityGroupIds] The ID of the security group that is associated with the endpoint ENI. The security group can be used to control data transfer between the VPC and the endpoint ENI.
  /// [serviceId] The ID of the endpoint service with which the endpoint is associated.
  /// [serviceName] The name of the endpoint service with which the endpoint is associated.
  /// [tags] The list of tags.
  /// [vpcEndpointName] The name of the endpoint.
  /// [vpcId] The ID of the VPC to which the endpoint belongs.
  /// [zonePrivateIpAddressCount] The number of private IP addresses that are assigned to an elastic network interface (ENI) in each zone. Only 1 is returned.
  VpcEndpointArgs({
    String? addressIpVersion,
    bool? dryRun,
    String? endpointDescription,
    String? endpointType,
    String? policyDocument,
    bool? protectedEnabled,
    String? resourceGroupId,
    List<String>? securityGroupIds,
    String? serviceId,
    String? serviceName,
    Map<String, String>? tags,
    String? vpcEndpointName,
    required String vpcId,
    int? zonePrivateIpAddressCount,
  }) :
      addressIpVersion = pulumi.Input.asOptionalInput<String>(addressIpVersion),
      dryRun = pulumi.Input.asOptionalInput<bool>(dryRun),
      endpointDescription = pulumi.Input.asOptionalInput<String>(endpointDescription),
      endpointType = pulumi.Input.asOptionalInput<String>(endpointType),
      policyDocument = pulumi.Input.asOptionalInput<String>(policyDocument),
      protectedEnabled = pulumi.Input.asOptionalInput<bool>(protectedEnabled),
      resourceGroupId = pulumi.Input.asOptionalInput<String>(resourceGroupId),
      securityGroupIds = pulumi.Input.asOptionalInput<List<String>>(securityGroupIds),
      serviceId = pulumi.Input.asOptionalInput<String>(serviceId),
      serviceName = pulumi.Input.asOptionalInput<String>(serviceName),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      vpcEndpointName = pulumi.Input.asOptionalInput<String>(vpcEndpointName),
      vpcId = pulumi.Input.asInput<String>(vpcId),
      zonePrivateIpAddressCount = pulumi.Input.asOptionalInput<int>(zonePrivateIpAddressCount);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'addressIpVersion': ?addressIpVersion,
      'dryRun': ?dryRun,
      'endpointDescription': ?endpointDescription,
      'endpointType': ?endpointType,
      'policyDocument': ?policyDocument,
      'protectedEnabled': ?protectedEnabled,
      'resourceGroupId': ?resourceGroupId,
      'securityGroupIds': ?securityGroupIds,
      'serviceId': ?serviceId,
      'serviceName': ?serviceName,
      'tags': ?tags,
      'vpcEndpointName': ?vpcEndpointName,
      'vpcId': vpcId,
      'zonePrivateIpAddressCount': ?zonePrivateIpAddressCount,
    };
  }

  factory VpcEndpointArgs.fromMap(Map<String, dynamic> map) {
    return VpcEndpointArgs(
      addressIpVersion: map['addressIpVersion'] == null ? null : map['addressIpVersion'] as String,
      dryRun: map['dryRun'] == null ? null : map['dryRun'] as bool,
      endpointDescription: map['endpointDescription'] == null ? null : map['endpointDescription'] as String,
      endpointType: map['endpointType'] == null ? null : map['endpointType'] as String,
      policyDocument: map['policyDocument'] == null ? null : map['policyDocument'] as String,
      protectedEnabled: map['protectedEnabled'] == null ? null : map['protectedEnabled'] as bool,
      resourceGroupId: map['resourceGroupId'] == null ? null : map['resourceGroupId'] as String,
      securityGroupIds: map['securityGroupIds'] == null ? null : (map['securityGroupIds'] as List).cast<String>(),
      serviceId: map['serviceId'] == null ? null : map['serviceId'] as String,
      serviceName: map['serviceName'] == null ? null : map['serviceName'] as String,
      tags: map['tags'] == null ? null : (map['tags'] as Map).cast<String, String>(),
      vpcEndpointName: map['vpcEndpointName'] == null ? null : map['vpcEndpointName'] as String,
      vpcId: map['vpcId'] as String,
      zonePrivateIpAddressCount: map['zonePrivateIpAddressCount'] == null ? null : map['zonePrivateIpAddressCount'] as int,
    );
  }
}

