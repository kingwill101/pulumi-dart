// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_redis_linked_server_linked_server_args_doc}
/// The set of arguments for LinkedServer.
/// {@endtemplate}
/// {@macro pulumi_redis_linked_server_linked_server_args_doc}
class LinkedServerArgs {
  /// The ID of the linked Redis cache. Changing this forces a new Redis to be created.
  final pulumi.Input<String> linkedRedisCacheId;
  /// The location of the linked Redis cache. Changing this forces a new Redis to be created.
  final pulumi.Input<String> linkedRedisCacheLocation;
  /// The name of the Resource Group where the Redis caches exists. Changing this forces a new Redis to be created.
  final pulumi.Input<String> resourceGroupName;
  /// The role of the linked Redis cache (eg "Secondary"). Changing this forces a new Redis to be created. Possible values are `Primary` and `Secondary`.
  final pulumi.Input<String> serverRole;
  /// The name of Redis cache to link with. Changing this forces a new Redis to be created. (eg The primary role)
  final pulumi.Input<String> targetRedisCacheName;

  /// Creates a new [LinkedServerArgs].
  /// [linkedRedisCacheId] The ID of the linked Redis cache. Changing this forces a new Redis to be created.
  /// [linkedRedisCacheLocation] The location of the linked Redis cache. Changing this forces a new Redis to be created.
  /// [resourceGroupName] The name of the Resource Group where the Redis caches exists. Changing this forces a new Redis to be created.
  /// [serverRole] The role of the linked Redis cache (eg "Secondary"). Changing this forces a new Redis to be created. Possible values are `Primary` and `Secondary`.
  /// [targetRedisCacheName] The name of Redis cache to link with. Changing this forces a new Redis to be created. (eg The primary role)
  LinkedServerArgs({
    required String linkedRedisCacheId,
    required String linkedRedisCacheLocation,
    required String resourceGroupName,
    required String serverRole,
    required String targetRedisCacheName,
  }) :
      linkedRedisCacheId = pulumi.Input.asInput<String>(linkedRedisCacheId),
      linkedRedisCacheLocation = pulumi.Input.asInput<String>(linkedRedisCacheLocation),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      serverRole = pulumi.Input.asInput<String>(serverRole),
      targetRedisCacheName = pulumi.Input.asInput<String>(targetRedisCacheName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'linkedRedisCacheId': linkedRedisCacheId,
      'linkedRedisCacheLocation': linkedRedisCacheLocation,
      'resourceGroupName': resourceGroupName,
      'serverRole': serverRole,
      'targetRedisCacheName': targetRedisCacheName,
    };
  }

  factory LinkedServerArgs.fromMap(Map<String, dynamic> map) {
    return LinkedServerArgs(
      linkedRedisCacheId: map['linkedRedisCacheId'] as String,
      linkedRedisCacheLocation: map['linkedRedisCacheLocation'] as String,
      resourceGroupName: map['resourceGroupName'] as String,
      serverRole: map['serverRole'] as String,
      targetRedisCacheName: map['targetRedisCacheName'] as String,
    );
  }
}

