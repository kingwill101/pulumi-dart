// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'scaling_group_vserver_groups_vserver_group_vserver_attribute.dart';

class ScalingGroupVServerGroupsVserverGroup {
  /// Loadbalancer server ID of VServer Group.
  final pulumi.Input<String> loadbalancerId;
  /// A list of VServer Group attributes. See `vserver_attributes` below.
  final pulumi.Input<List<ScalingGroupVServerGroupsVserverGroupVserverAttribute>> vserverAttributes;

  /// Creates a new [ScalingGroupVServerGroupsVserverGroup].
  /// [loadbalancerId] Loadbalancer server ID of VServer Group.
  /// [vserverAttributes] A list of VServer Group attributes. See `vserver_attributes` below.
  const ScalingGroupVServerGroupsVserverGroup({
    required this.loadbalancerId,
    required this.vserverAttributes,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'loadbalancerId': loadbalancerId,
      'vserverAttributes': pulumi.Input.mapInputValue<List<ScalingGroupVServerGroupsVserverGroupVserverAttribute>, List<Map<String, dynamic>>>(vserverAttributes, (value) => pulumi.Input.encodeList<ScalingGroupVServerGroupsVserverGroupVserverAttribute, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory ScalingGroupVServerGroupsVserverGroup.fromMap(Map<String, dynamic> map) {
    return ScalingGroupVServerGroupsVserverGroup(
      loadbalancerId: pulumi.Input.fromValue(map['loadbalancerId'] as String),
      vserverAttributes: pulumi.Input.fromValue(pulumi.Input.decodeList<ScalingGroupVServerGroupsVserverGroupVserverAttribute>(map['vserverAttributes']!, (value) => ScalingGroupVServerGroupsVserverGroupVserverAttribute.fromMap((value as Map).cast<String, dynamic>()))),
    );
  }
}

