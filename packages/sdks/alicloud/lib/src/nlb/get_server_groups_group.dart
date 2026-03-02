// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_server_groups_group_health_check.dart';

class GetServerGroupsGroup {
  /// The protocol version.
  final pulumi.Input<String> addressIpVersion;
  /// Indicates whether connection draining is enabled.
  final pulumi.Input<bool> connectionDrain;
  /// The timeout period of connection draining. Unit: seconds.
  final pulumi.Input<int> connectionDrainTimeout;
  /// The configurations of health checks.
  final pulumi.Input<List<GetServerGroupsGroupHealthCheck>> healthChecks;
  /// The ID of the Server Group.
  final pulumi.Input<String> id;
  /// Indicates whether client address retention is enabled.
  final pulumi.Input<bool> preserveClientIpEnabled;
  /// The protocol used to forward requests to the backend servers.
  final pulumi.Input<String> protocol;
  /// The NLB instance.
  final pulumi.Input<List<String>> relatedLoadBalancerIds;
  /// The ID of the resource group to which the security group belongs.
  final pulumi.Input<String> resourceGroupId;
  /// The routing algorithm.
  final pulumi.Input<String> scheduler;
  /// The number of server groups associated with the NLB instance.
  final pulumi.Input<int> serverCount;
  /// The name of the server group.
  final pulumi.Input<String> serverGroupName;
  /// The type of the server group.
  final pulumi.Input<String> serverGroupType;
  /// The status of the server group.
  final pulumi.Input<String> status;
  /// A mapping of tags to assign to the resource.
  final pulumi.Input<Map<String, String>> tags;
  /// The ID of the VPC to which the server group belongs.
  final pulumi.Input<String> vpcId;

  /// Creates a new [GetServerGroupsGroup].
  /// [addressIpVersion] The protocol version.
  /// [connectionDrain] Indicates whether connection draining is enabled.
  /// [connectionDrainTimeout] The timeout period of connection draining. Unit: seconds.
  /// [healthChecks] The configurations of health checks.
  /// [id] The ID of the Server Group.
  /// [preserveClientIpEnabled] Indicates whether client address retention is enabled.
  /// [protocol] The protocol used to forward requests to the backend servers.
  /// [relatedLoadBalancerIds] The NLB instance.
  /// [resourceGroupId] The ID of the resource group to which the security group belongs.
  /// [scheduler] The routing algorithm.
  /// [serverCount] The number of server groups associated with the NLB instance.
  /// [serverGroupName] The name of the server group.
  /// [serverGroupType] The type of the server group.
  /// [status] The status of the server group.
  /// [tags] A mapping of tags to assign to the resource.
  /// [vpcId] The ID of the VPC to which the server group belongs.
  GetServerGroupsGroup({
    required this.addressIpVersion,
    required this.connectionDrain,
    required this.connectionDrainTimeout,
    required this.healthChecks,
    required this.id,
    required this.preserveClientIpEnabled,
    required this.protocol,
    required this.relatedLoadBalancerIds,
    required this.resourceGroupId,
    required this.scheduler,
    required this.serverCount,
    required this.serverGroupName,
    required this.serverGroupType,
    required this.status,
    required this.tags,
    required this.vpcId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'addressIpVersion': addressIpVersion,
      'connectionDrain': connectionDrain,
      'connectionDrainTimeout': connectionDrainTimeout,
      'healthChecks': pulumi.Input.mapInputValue<List<GetServerGroupsGroupHealthCheck>, List<Map<String, dynamic>>>(healthChecks, (value) => pulumi.Input.encodeList<GetServerGroupsGroupHealthCheck, Map<String, dynamic>>(value, (value) => value.toMap())),
      'id': id,
      'preserveClientIpEnabled': preserveClientIpEnabled,
      'protocol': protocol,
      'relatedLoadBalancerIds': relatedLoadBalancerIds,
      'resourceGroupId': resourceGroupId,
      'scheduler': scheduler,
      'serverCount': serverCount,
      'serverGroupName': serverGroupName,
      'serverGroupType': serverGroupType,
      'status': status,
      'tags': tags,
      'vpcId': vpcId,
    };
  }

  factory GetServerGroupsGroup.fromMap(Map<String, dynamic> map) {
    return GetServerGroupsGroup(
      addressIpVersion: (map['addressIpVersion'] as String).input(),
      connectionDrain: (map['connectionDrain'] as bool).input(),
      connectionDrainTimeout: (map['connectionDrainTimeout'] as int).input(),
      healthChecks: (pulumi.Input.decodeList<GetServerGroupsGroupHealthCheck>(map['healthChecks'], (value) => GetServerGroupsGroupHealthCheck.fromMap((value as Map).cast<String, dynamic>()))).input(),
      id: (map['id'] as String).input(),
      preserveClientIpEnabled: (map['preserveClientIpEnabled'] as bool).input(),
      protocol: (map['protocol'] as String).input(),
      relatedLoadBalancerIds: ((map['relatedLoadBalancerIds'] as List).cast<String>()).input(),
      resourceGroupId: (map['resourceGroupId'] as String).input(),
      scheduler: (map['scheduler'] as String).input(),
      serverCount: (map['serverCount'] as int).input(),
      serverGroupName: (map['serverGroupName'] as String).input(),
      serverGroupType: (map['serverGroupType'] as String).input(),
      status: (map['status'] as String).input(),
      tags: ((map['tags'] as Map).cast<String, String>()).input(),
      vpcId: (map['vpcId'] as String).input(),
    );
  }
}

