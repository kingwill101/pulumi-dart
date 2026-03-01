// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'scaling_group_vserver_groups_vserver_group_vserver_attribute.dart';

class ScalingGroupVServerGroupsVserverGroup {
  /// Loadbalancer server ID of VServer Group.
  final String loadbalancerId;
  /// A list of VServer Group attributes. See `vserver_attributes` below.
  final List<ScalingGroupVServerGroupsVserverGroupVserverAttribute> vserverAttributes;

  /// Creates a new [ScalingGroupVServerGroupsVserverGroup].
  /// [loadbalancerId] Loadbalancer server ID of VServer Group.
  /// [vserverAttributes] A list of VServer Group attributes. See `vserver_attributes` below.
  ScalingGroupVServerGroupsVserverGroup({
    required this.loadbalancerId,
    required this.vserverAttributes,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'loadbalancerId': loadbalancerId,
      'vserverAttributes': pulumi.Input.encodeList<ScalingGroupVServerGroupsVserverGroupVserverAttribute, Map<String, dynamic>>(vserverAttributes, (value) => value.toMap()),
    };
  }

  factory ScalingGroupVServerGroupsVserverGroup.fromMap(Map<String, dynamic> map) {
    return ScalingGroupVServerGroupsVserverGroup(
      loadbalancerId: map['loadbalancerId'] as String,
      vserverAttributes: pulumi.Input.decodeList<ScalingGroupVServerGroupsVserverGroupVserverAttribute>(map['vserverAttributes'], (value) => ScalingGroupVServerGroupsVserverGroupVserverAttribute.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

