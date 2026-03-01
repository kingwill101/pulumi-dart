// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_server_groups_group_health_check.dart';

class GetServerGroupsGroup {
  /// The protocol version.
  final String addressIpVersion;
  /// Indicates whether connection draining is enabled.
  final bool connectionDrain;
  /// The timeout period of connection draining. Unit: seconds.
  final int connectionDrainTimeout;
  /// The configurations of health checks.
  final List<GetServerGroupsGroupHealthCheck> healthChecks;
  /// The ID of the Server Group.
  final String id;
  /// Indicates whether client address retention is enabled.
  final bool preserveClientIpEnabled;
  /// The protocol used to forward requests to the backend servers.
  final String protocol;
  /// The NLB instance.
  final List<String> relatedLoadBalancerIds;
  /// The ID of the resource group to which the security group belongs.
  final String resourceGroupId;
  /// The routing algorithm.
  final String scheduler;
  /// The number of server groups associated with the NLB instance.
  final int serverCount;
  /// The name of the server group.
  final String serverGroupName;
  /// The type of the server group.
  final String serverGroupType;
  /// The status of the server group.
  final String status;
  /// A mapping of tags to assign to the resource.
  final Map<String, String> tags;
  /// The ID of the VPC to which the server group belongs.
  final String vpcId;

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
      'healthChecks': pulumi.Input.encodeList<GetServerGroupsGroupHealthCheck, Map<String, dynamic>>(healthChecks, (value) => value.toMap()),
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
      addressIpVersion: map['addressIpVersion'] as String,
      connectionDrain: map['connectionDrain'] as bool,
      connectionDrainTimeout: map['connectionDrainTimeout'] as int,
      healthChecks: pulumi.Input.decodeList<GetServerGroupsGroupHealthCheck>(map['healthChecks'], (value) => GetServerGroupsGroupHealthCheck.fromMap((value as Map).cast<String, dynamic>())),
      id: map['id'] as String,
      preserveClientIpEnabled: map['preserveClientIpEnabled'] as bool,
      protocol: map['protocol'] as String,
      relatedLoadBalancerIds: (map['relatedLoadBalancerIds'] as List).cast<String>(),
      resourceGroupId: map['resourceGroupId'] as String,
      scheduler: map['scheduler'] as String,
      serverCount: map['serverCount'] as int,
      serverGroupName: map['serverGroupName'] as String,
      serverGroupType: map['serverGroupType'] as String,
      status: map['status'] as String,
      tags: (map['tags'] as Map).cast<String, String>(),
      vpcId: map['vpcId'] as String,
    );
  }
}

