// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'replication_role.dart';

/// {@template pulumi_redis_redis_linked_server_args_doc}
/// The set of arguments for RedisLinkedServer.
/// {@endtemplate}
/// {@macro pulumi_redis_redis_linked_server_args_doc}
class RedisLinkedServerArgs {
  /// Fully qualified resourceId of the linked redis cache.
  final pulumi.Input<String> linkedRedisCacheId;
  /// Location of the linked redis cache.
  final pulumi.Input<String> linkedRedisCacheLocation;
  /// The name of the linked server that is being added to the Redis cache.
  final pulumi.Input<String>? linkedServerName;
  /// The name of the Redis cache.
  final pulumi.Input<String> name;
  /// The name of the resource group.
  final pulumi.Input<String> resourceGroupName;
  /// Role of the linked server.
  final pulumi.Input<ReplicationRole> serverRole;

  /// Creates a new [RedisLinkedServerArgs].
  /// [linkedRedisCacheId] Fully qualified resourceId of the linked redis cache.
  /// [linkedRedisCacheLocation] Location of the linked redis cache.
  /// [linkedServerName] The name of the linked server that is being added to the Redis cache.
  /// [name] The name of the Redis cache.
  /// [resourceGroupName] The name of the resource group.
  /// [serverRole] Role of the linked server.
  RedisLinkedServerArgs({
    required String linkedRedisCacheId,
    required String linkedRedisCacheLocation,
    String? linkedServerName,
    required String name,
    required String resourceGroupName,
    required ReplicationRole serverRole,
  }) :
      linkedRedisCacheId = pulumi.Input.asInput<String>(linkedRedisCacheId),
      linkedRedisCacheLocation = pulumi.Input.asInput<String>(linkedRedisCacheLocation),
      linkedServerName = pulumi.Input.asOptionalInput<String>(linkedServerName),
      name = pulumi.Input.asInput<String>(name),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      serverRole = pulumi.Input.asInput<ReplicationRole>(serverRole);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'linkedRedisCacheId': linkedRedisCacheId,
      'linkedRedisCacheLocation': linkedRedisCacheLocation,
      'linkedServerName': ?linkedServerName,
      'name': name,
      'resourceGroupName': resourceGroupName,
      'serverRole': pulumi.Input.mapInputValue<ReplicationRole, String>(serverRole, (value) => value.value),
    };
  }

  factory RedisLinkedServerArgs.fromMap(Map<String, dynamic> map) {
    return RedisLinkedServerArgs(
      linkedRedisCacheId: map['linkedRedisCacheId'] as String,
      linkedRedisCacheLocation: map['linkedRedisCacheLocation'] as String,
      linkedServerName: map['linkedServerName'] == null ? null : map['linkedServerName'] as String,
      name: map['name'] as String,
      resourceGroupName: map['resourceGroupName'] as String,
      serverRole: ReplicationRole.fromValue(map['serverRole'] as String),
    );
  }
}

