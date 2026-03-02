// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'server_group_server.dart';

/// Input properties used for looking up and filtering ServerGroup resources.
class ServerGroupState {
  /// Checking DeleteProtection of SLB instance before deleting. Default value: `false`. If `delete_protection_validation` is set to `true`, this resource will not be deleted when its SLB instance enabled DeleteProtection.
  final pulumi.Input<bool>? deleteProtectionValidation;
  /// The ID of the Server Load Balancer (SLB) instance.
  final pulumi.Input<String>? loadBalancerId;
  /// The name of the vServer group. Default value: `tf-server-group`.
  final pulumi.Input<String>? name;
  /// The list of backend servers to be added. See `servers` below.
  /// > **NOTE:** Field `servers` has been deprecated from provider version 1.163.0, and it will be removed in the future version. Please use the new resource `alicloud.slb.ServerGroupServerAttachment`.
  final pulumi.Input<List<ServerGroupServer>>? servers;
  /// A mapping of tags to assign to the resource.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [ServerGroupState].
  /// [deleteProtectionValidation] Checking DeleteProtection of SLB instance before deleting. Default value: `false`. If `delete_protection_validation` is set to `true`, this resource will not be deleted when its SLB instance enabled DeleteProtection.
  /// [loadBalancerId] The ID of the Server Load Balancer (SLB) instance.
  /// [name] The name of the vServer group. Default value: `tf-server-group`.
  /// [servers] The list of backend servers to be added. See `servers` below.
  /// [tags] A mapping of tags to assign to the resource.
  ServerGroupState({
    this.deleteProtectionValidation,
    this.loadBalancerId,
    this.name,
    this.servers,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'deleteProtectionValidation': ?deleteProtectionValidation,
      'loadBalancerId': ?loadBalancerId,
      'name': ?name,
      'servers': ?pulumi.Input.mapOptionalInputValue<List<ServerGroupServer>, List<Map<String, dynamic>>>(servers, (value) => pulumi.Input.encodeList<ServerGroupServer, Map<String, dynamic>>(value, (value) => value.toMap())),
      'tags': ?tags,
    };
  }

  factory ServerGroupState.fromMap(Map<String, dynamic> map) {
    return ServerGroupState(
      deleteProtectionValidation: map['deleteProtectionValidation'] == null ? null : (map['deleteProtectionValidation']! as bool).input(),
      loadBalancerId: map['loadBalancerId'] == null ? null : (map['loadBalancerId']! as String).input(),
      name: map['name'] == null ? null : (map['name']! as String).input(),
      servers: map['servers'] == null ? null : (pulumi.Input.decodeList<ServerGroupServer>(map['servers']!, (value) => ServerGroupServer.fromMap((value as Map).cast<String, dynamic>()))).input(),
      tags: map['tags'] == null ? null : ((map['tags']! as Map).cast<String, String>()).input(),
    );
  }
}

