// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_postgresql_flexible_server_virtual_endpoint_flexible_server_virtual_endpoint_args_doc}
/// The set of arguments for FlexibleServerVirtualEndpoint.
/// {@endtemplate}
/// {@macro pulumi_postgresql_flexible_server_virtual_endpoint_flexible_server_virtual_endpoint_args_doc}
class FlexibleServerVirtualEndpointArgs {
  /// The name of the Virtual Endpoint. Changing this forces a new resource to be created.
  final pulumi.Input<String>? name;
  /// The Resource ID of the *Replica* Postgres Flexible Server this should be associated with
  ///
  /// > **Note:** If a fail-over has occurred, you will be unable to update `replica_server_id`. You can remove the resource from state and reimport it back in with `source_server_id` and `replica_server_id` flipped and then update `replica_server_id`.
  final pulumi.Input<String> replicaServerId;
  /// The Resource ID of the *Source* Postgres Flexible Server this should be associated with. Changing this forces a new resource to be created.
  final pulumi.Input<String> sourceServerId;
  /// The type of Virtual Endpoint. Currently only `ReadWrite` is supported. Changing this forces a new resource to be created.
  final pulumi.Input<String> type;

  /// Creates a new [FlexibleServerVirtualEndpointArgs].
  /// [name] The name of the Virtual Endpoint. Changing this forces a new resource to be created.
  /// [replicaServerId] The Resource ID of the *Replica* Postgres Flexible Server this should be associated with
  /// [sourceServerId] The Resource ID of the *Source* Postgres Flexible Server this should be associated with. Changing this forces a new resource to be created.
  /// [type] The type of Virtual Endpoint. Currently only `ReadWrite` is supported. Changing this forces a new resource to be created.
  FlexibleServerVirtualEndpointArgs({
    String? name,
    required String replicaServerId,
    required String sourceServerId,
    required String type,
  }) :
      name = pulumi.Input.asOptionalInput<String>(name),
      replicaServerId = pulumi.Input.asInput<String>(replicaServerId),
      sourceServerId = pulumi.Input.asInput<String>(sourceServerId),
      type = pulumi.Input.asInput<String>(type);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': ?name,
      'replicaServerId': replicaServerId,
      'sourceServerId': sourceServerId,
      'type': type,
    };
  }

  factory FlexibleServerVirtualEndpointArgs.fromMap(Map<String, dynamic> map) {
    return FlexibleServerVirtualEndpointArgs(
      name: map['name'] == null ? null : map['name'] as String,
      replicaServerId: map['replicaServerId'] as String,
      sourceServerId: map['sourceServerId'] as String,
      type: map['type'] as String,
    );
  }
}

