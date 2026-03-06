// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'server_group_server.dart';

/// {@template pulumi_slb_server_group_server_group_args_doc}
/// The set of arguments for ServerGroup.
/// {@endtemplate}
/// {@macro pulumi_slb_server_group_server_group_args_doc}
class ServerGroupArgs {
  /// Checking DeleteProtection of SLB instance before deleting. Default value: `false`. If `delete_protection_validation` is set to `true`, this resource will not be deleted when its SLB instance enabled DeleteProtection.
  final pulumi.Input<bool>? deleteProtectionValidation;
  /// The ID of the Server Load Balancer (SLB) instance.
  final pulumi.Input<String> loadBalancerId;
  /// The name of the vServer group. Default value: `tf-server-group`.
  final pulumi.Input<String>? name;
  /// The list of backend servers to be added. See `servers` below.
  /// &gt; **NOTE:** Field `servers` has been deprecated from provider version 1.163.0, and it will be removed in the future version. Please use the new resource `alicloud.slb.ServerGroupServerAttachment`.
  final pulumi.Input<List<ServerGroupServer>>? servers;
  /// A mapping of tags to assign to the resource.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [ServerGroupArgs].
  /// [deleteProtectionValidation] Checking DeleteProtection of SLB instance before deleting. Default value: `false`. If `delete_protection_validation` is set to `true`, this resource will not be deleted when its SLB instance enabled DeleteProtection.
  /// [loadBalancerId] The ID of the Server Load Balancer (SLB) instance.
  /// [name] The name of the vServer group. Default value: `tf-server-group`.
  /// [servers] The list of backend servers to be added. See `servers` below.
  /// [tags] A mapping of tags to assign to the resource.
  const ServerGroupArgs({
    this.deleteProtectionValidation,
    required this.loadBalancerId,
    this.name,
    this.servers,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'deleteProtectionValidation': ?deleteProtectionValidation,
      'loadBalancerId': loadBalancerId,
      'name': ?name,
      'servers': ?pulumi.Input.mapOptionalInputValue<List<ServerGroupServer>, List<Map<String, dynamic>>>(servers, (value) => pulumi.Input.encodeList<ServerGroupServer, Map<String, dynamic>>(value, (value) => value.toMap())),
      'tags': ?tags,
    };
  }

  factory ServerGroupArgs.fromMap(Map<String, dynamic> map) {
    return ServerGroupArgs(
      deleteProtectionValidation: (() { final guardedValue = map['deleteProtectionValidation']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      loadBalancerId: pulumi.Input.fromValue(map['loadBalancerId'] as String),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      servers: (() { final guardedValue = map['servers']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<ServerGroupServer>(guardedValue, (value) => ServerGroupServer.fromMap((value as Map).cast<String, dynamic>()))); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
    );
  }
}

