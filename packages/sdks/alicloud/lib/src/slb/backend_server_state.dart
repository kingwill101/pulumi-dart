// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'backend_server_backend_server.dart';

/// Input properties used for looking up and filtering BackendServer resources.
class BackendServerState {
  /// A list of instances to added backend server in the SLB. It contains three sub-fields as `Block server` follows.
  final pulumi.Input<List<BackendServerBackendServer>>? backendServers;
  /// Checking DeleteProtection of SLB instance before deleting. If true, this resource will not be deleted when its SLB instance enabled DeleteProtection. Default to false.
  final pulumi.Input<bool>? deleteProtectionValidation;
  /// ID of the load balancer.
  final pulumi.Input<String>? loadBalancerId;

  /// Creates a new [BackendServerState].
  /// [backendServers] A list of instances to added backend server in the SLB. It contains three sub-fields as `Block server` follows.
  /// [deleteProtectionValidation] Checking DeleteProtection of SLB instance before deleting. If true, this resource will not be deleted when its SLB instance enabled DeleteProtection. Default to false.
  /// [loadBalancerId] ID of the load balancer.
  BackendServerState({
    pulumi.Output<List<BackendServerBackendServer>>? backendServers,
    pulumi.Output<bool>? deleteProtectionValidation,
    pulumi.Output<String>? loadBalancerId,
  }) :
      backendServers = pulumi.Input.asOptionalInput<List<BackendServerBackendServer>>(backendServers),
      deleteProtectionValidation = pulumi.Input.asOptionalInput<bool>(deleteProtectionValidation),
      loadBalancerId = pulumi.Input.asOptionalInput<String>(loadBalancerId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'backendServers': ?pulumi.Input.mapOptionalInputValue<List<BackendServerBackendServer>, List<Map<String, dynamic>>>(backendServers, (value) => pulumi.Input.encodeList<BackendServerBackendServer, Map<String, dynamic>>(value, (value) => value.toMap())),
      'deleteProtectionValidation': ?deleteProtectionValidation,
      'loadBalancerId': ?loadBalancerId,
    };
  }

  factory BackendServerState.fromMap(Map<String, dynamic> map) {
    return BackendServerState(
      backendServers: map['backendServers'] == null ? null : pulumi.Output.create<List<BackendServerBackendServer>>(pulumi.Input.decodeList<BackendServerBackendServer>(map['backendServers'], (value) => BackendServerBackendServer.fromMap((value as Map).cast<String, dynamic>()))),
      deleteProtectionValidation: map['deleteProtectionValidation'] == null ? null : pulumi.Output.create<bool>(map['deleteProtectionValidation'] as bool),
      loadBalancerId: map['loadBalancerId'] == null ? null : pulumi.Output.create<String>(map['loadBalancerId'] as String),
    );
  }
}

