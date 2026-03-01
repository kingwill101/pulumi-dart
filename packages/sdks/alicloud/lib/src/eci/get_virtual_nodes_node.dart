// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_virtual_nodes_node_event.dart';

class GetVirtualNodesNode {
  /// The Number of CPU.
  final int cpu;
  /// The creation time of the virtual node.
  final String createTime;
  /// The ENI instance ID.
  final String eniInstanceId;
  /// The event list.
  final List<GetVirtualNodesNodeEvent> events;
  /// The ID of the Virtual Node.
  final String id;
  /// The IP address of a public network.
  final String internetIp;
  /// The private IP address of the RDS instance.
  final String intranetIp;
  /// The memory size.
  final int memory;
  /// The ram role.
  final String ramRoleName;
  /// The resource group ID.
  final String resourceGroupId;
  /// The security group ID.
  final String securityGroupId;
  /// The Status of the virtual node.
  final String status;
  /// A mapping of tags to assign to the resource.
  final Map<String, String> tags;
  /// Of the virtual node number.
  final String virtualNodeId;
  /// The name of the virtual node.
  final String virtualNodeName;
  final String vpcId;
  /// The vswitch id.
  final String vswitchId;
  /// The Zone.
  final String zoneId;

  /// Creates a new [GetVirtualNodesNode].
  /// [cpu] The Number of CPU.
  /// [createTime] The creation time of the virtual node.
  /// [eniInstanceId] The ENI instance ID.
  /// [events] The event list.
  /// [id] The ID of the Virtual Node.
  /// [internetIp] The IP address of a public network.
  /// [intranetIp] The private IP address of the RDS instance.
  /// [memory] The memory size.
  /// [ramRoleName] The ram role.
  /// [resourceGroupId] The resource group ID.
  /// [securityGroupId] The security group ID.
  /// [status] The Status of the virtual node.
  /// [tags] A mapping of tags to assign to the resource.
  /// [virtualNodeId] Of the virtual node number.
  /// [virtualNodeName] The name of the virtual node.
  /// [vpcId] Required.
  /// [vswitchId] The vswitch id.
  /// [zoneId] The Zone.
  GetVirtualNodesNode({
    required this.cpu,
    required this.createTime,
    required this.eniInstanceId,
    required this.events,
    required this.id,
    required this.internetIp,
    required this.intranetIp,
    required this.memory,
    required this.ramRoleName,
    required this.resourceGroupId,
    required this.securityGroupId,
    required this.status,
    required this.tags,
    required this.virtualNodeId,
    required this.virtualNodeName,
    required this.vpcId,
    required this.vswitchId,
    required this.zoneId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cpu': cpu,
      'createTime': createTime,
      'eniInstanceId': eniInstanceId,
      'events': pulumi.Input.encodeList<GetVirtualNodesNodeEvent, Map<String, dynamic>>(events, (value) => value.toMap()),
      'id': id,
      'internetIp': internetIp,
      'intranetIp': intranetIp,
      'memory': memory,
      'ramRoleName': ramRoleName,
      'resourceGroupId': resourceGroupId,
      'securityGroupId': securityGroupId,
      'status': status,
      'tags': tags,
      'virtualNodeId': virtualNodeId,
      'virtualNodeName': virtualNodeName,
      'vpcId': vpcId,
      'vswitchId': vswitchId,
      'zoneId': zoneId,
    };
  }

  factory GetVirtualNodesNode.fromMap(Map<String, dynamic> map) {
    return GetVirtualNodesNode(
      cpu: map['cpu'] as int,
      createTime: map['createTime'] as String,
      eniInstanceId: map['eniInstanceId'] as String,
      events: pulumi.Input.decodeList<GetVirtualNodesNodeEvent>(map['events'], (value) => GetVirtualNodesNodeEvent.fromMap((value as Map).cast<String, dynamic>())),
      id: map['id'] as String,
      internetIp: map['internetIp'] as String,
      intranetIp: map['intranetIp'] as String,
      memory: map['memory'] as int,
      ramRoleName: map['ramRoleName'] as String,
      resourceGroupId: map['resourceGroupId'] as String,
      securityGroupId: map['securityGroupId'] as String,
      status: map['status'] as String,
      tags: (map['tags'] as Map).cast<String, String>(),
      virtualNodeId: map['virtualNodeId'] as String,
      virtualNodeName: map['virtualNodeName'] as String,
      vpcId: map['vpcId'] as String,
      vswitchId: map['vswitchId'] as String,
      zoneId: map['zoneId'] as String,
    );
  }
}

