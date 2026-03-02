// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_virtual_nodes_node_event.dart';

class GetVirtualNodesNode {
  /// The Number of CPU.
  final pulumi.Input<int> cpu;
  /// The creation time of the virtual node.
  final pulumi.Input<String> createTime;
  /// The ENI instance ID.
  final pulumi.Input<String> eniInstanceId;
  /// The event list.
  final pulumi.Input<List<GetVirtualNodesNodeEvent>> events;
  /// The ID of the Virtual Node.
  final pulumi.Input<String> id;
  /// The IP address of a public network.
  final pulumi.Input<String> internetIp;
  /// The private IP address of the RDS instance.
  final pulumi.Input<String> intranetIp;
  /// The memory size.
  final pulumi.Input<int> memory;
  /// The ram role.
  final pulumi.Input<String> ramRoleName;
  /// The resource group ID.
  final pulumi.Input<String> resourceGroupId;
  /// The security group ID.
  final pulumi.Input<String> securityGroupId;
  /// The Status of the virtual node.
  final pulumi.Input<String> status;
  /// A mapping of tags to assign to the resource.
  final pulumi.Input<Map<String, String>> tags;
  /// Of the virtual node number.
  final pulumi.Input<String> virtualNodeId;
  /// The name of the virtual node.
  final pulumi.Input<String> virtualNodeName;
  final pulumi.Input<String> vpcId;
  /// The vswitch id.
  final pulumi.Input<String> vswitchId;
  /// The Zone.
  final pulumi.Input<String> zoneId;

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
      'events': pulumi.Input.mapInputValue<List<GetVirtualNodesNodeEvent>, List<Map<String, dynamic>>>(events, (value) => pulumi.Input.encodeList<GetVirtualNodesNodeEvent, Map<String, dynamic>>(value, (value) => value.toMap())),
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
      cpu: (map['cpu'] as int).input(),
      createTime: (map['createTime'] as String).input(),
      eniInstanceId: (map['eniInstanceId'] as String).input(),
      events: (pulumi.Input.decodeList<GetVirtualNodesNodeEvent>(map['events'], (value) => GetVirtualNodesNodeEvent.fromMap((value as Map).cast<String, dynamic>()))).input(),
      id: (map['id'] as String).input(),
      internetIp: (map['internetIp'] as String).input(),
      intranetIp: (map['intranetIp'] as String).input(),
      memory: (map['memory'] as int).input(),
      ramRoleName: (map['ramRoleName'] as String).input(),
      resourceGroupId: (map['resourceGroupId'] as String).input(),
      securityGroupId: (map['securityGroupId'] as String).input(),
      status: (map['status'] as String).input(),
      tags: ((map['tags'] as Map).cast<String, String>()).input(),
      virtualNodeId: (map['virtualNodeId'] as String).input(),
      virtualNodeName: (map['virtualNodeName'] as String).input(),
      vpcId: (map['vpcId'] as String).input(),
      vswitchId: (map['vswitchId'] as String).input(),
      zoneId: (map['zoneId'] as String).input(),
    );
  }
}

