// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'master_slave_server_group_server.dart';

/// {@template pulumi_slb_master_slave_server_group_master_slave_server_group_args_doc}
/// The set of arguments for MasterSlaveServerGroup.
/// {@endtemplate}
/// {@macro pulumi_slb_master_slave_server_group_master_slave_server_group_args_doc}
class MasterSlaveServerGroupArgs {
  /// Checking DeleteProtection of SLB instance before deleting. If true, this resource will not be deleted when its SLB instance enabled DeleteProtection. Default to false.
  final pulumi.Input<bool>? deleteProtectionValidation;
  /// The Load Balancer ID which is used to launch a new master slave server group.
  final pulumi.Input<String> loadBalancerId;
  /// Name of the master slave server group.
  final pulumi.Input<String>? name;
  /// A list of ECS instances to be added. Only two ECS instances can be supported in one resource. See `servers` below.
  final pulumi.Input<List<MasterSlaveServerGroupServer>>? servers;

  /// Creates a new [MasterSlaveServerGroupArgs].
  /// [deleteProtectionValidation] Checking DeleteProtection of SLB instance before deleting. If true, this resource will not be deleted when its SLB instance enabled DeleteProtection. Default to false.
  /// [loadBalancerId] The Load Balancer ID which is used to launch a new master slave server group.
  /// [name] Name of the master slave server group.
  /// [servers] A list of ECS instances to be added. Only two ECS instances can be supported in one resource. See `servers` below.
  MasterSlaveServerGroupArgs({
    this.deleteProtectionValidation,
    required this.loadBalancerId,
    this.name,
    this.servers,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'deleteProtectionValidation': ?deleteProtectionValidation,
      'loadBalancerId': loadBalancerId,
      'name': ?name,
      'servers': ?pulumi.Input.mapOptionalInputValue<List<MasterSlaveServerGroupServer>, List<Map<String, dynamic>>>(servers, (value) => pulumi.Input.encodeList<MasterSlaveServerGroupServer, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory MasterSlaveServerGroupArgs.fromMap(Map<String, dynamic> map) {
    return MasterSlaveServerGroupArgs(
      deleteProtectionValidation: map['deleteProtectionValidation'] == null ? null : (map['deleteProtectionValidation'] as bool).input(),
      loadBalancerId: (map['loadBalancerId'] as String).input(),
      name: map['name'] == null ? null : (map['name'] as String).input(),
      servers: map['servers'] == null ? null : (pulumi.Input.decodeList<MasterSlaveServerGroupServer>(map['servers'], (value) => MasterSlaveServerGroupServer.fromMap((value as Map).cast<String, dynamic>()))).input(),
    );
  }
}

