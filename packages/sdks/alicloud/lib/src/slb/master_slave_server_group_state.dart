// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'master_slave_server_group_server.dart';

/// Input properties used for looking up and filtering MasterSlaveServerGroup resources.
class MasterSlaveServerGroupState {
  /// Checking DeleteProtection of SLB instance before deleting. If true, this resource will not be deleted when its SLB instance enabled DeleteProtection. Default to false.
  final pulumi.Input<bool>? deleteProtectionValidation;
  /// The Load Balancer ID which is used to launch a new master slave server group.
  final pulumi.Input<String>? loadBalancerId;
  /// Name of the master slave server group.
  final pulumi.Input<String>? name;
  /// A list of ECS instances to be added. Only two ECS instances can be supported in one resource. See `servers` below.
  final pulumi.Input<List<MasterSlaveServerGroupServer>>? servers;

  /// Creates a new [MasterSlaveServerGroupState].
  /// [deleteProtectionValidation] Checking DeleteProtection of SLB instance before deleting. If true, this resource will not be deleted when its SLB instance enabled DeleteProtection. Default to false.
  /// [loadBalancerId] The Load Balancer ID which is used to launch a new master slave server group.
  /// [name] Name of the master slave server group.
  /// [servers] A list of ECS instances to be added. Only two ECS instances can be supported in one resource. See `servers` below.
  MasterSlaveServerGroupState({
    pulumi.Output<bool>? deleteProtectionValidation,
    pulumi.Output<String>? loadBalancerId,
    pulumi.Output<String>? name,
    pulumi.Output<List<MasterSlaveServerGroupServer>>? servers,
  }) :
      deleteProtectionValidation = pulumi.Input.asOptionalInput<bool>(deleteProtectionValidation),
      loadBalancerId = pulumi.Input.asOptionalInput<String>(loadBalancerId),
      name = pulumi.Input.asOptionalInput<String>(name),
      servers = pulumi.Input.asOptionalInput<List<MasterSlaveServerGroupServer>>(servers);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'deleteProtectionValidation': ?deleteProtectionValidation,
      'loadBalancerId': ?loadBalancerId,
      'name': ?name,
      'servers': ?pulumi.Input.mapOptionalInputValue<List<MasterSlaveServerGroupServer>, List<Map<String, dynamic>>>(servers, (value) => pulumi.Input.encodeList<MasterSlaveServerGroupServer, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory MasterSlaveServerGroupState.fromMap(Map<String, dynamic> map) {
    return MasterSlaveServerGroupState(
      deleteProtectionValidation: map['deleteProtectionValidation'] == null ? null : pulumi.Output.create<bool>(map['deleteProtectionValidation'] as bool),
      loadBalancerId: map['loadBalancerId'] == null ? null : pulumi.Output.create<String>(map['loadBalancerId'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      servers: map['servers'] == null ? null : pulumi.Output.create<List<MasterSlaveServerGroupServer>>(pulumi.Input.decodeList<MasterSlaveServerGroupServer>(map['servers'], (value) => MasterSlaveServerGroupServer.fromMap((value as Map).cast<String, dynamic>()))),
    );
  }
}

