// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_redis_get_redis_linked_server_args_doc}
/// Arguments for getRedisLinkedServer.
/// {@endtemplate}
/// {@macro pulumi_redis_get_redis_linked_server_args_doc}
class GetRedisLinkedServerArgs {
  /// The name of the linked server.
  final pulumi.Input<String> linkedServerName;
  /// The name of the redis cache.
  final pulumi.Input<String> name;
  /// The name of the resource group.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [GetRedisLinkedServerArgs].
  /// [linkedServerName] The name of the linked server.
  /// [name] The name of the redis cache.
  /// [resourceGroupName] The name of the resource group.
  GetRedisLinkedServerArgs({
    required String linkedServerName,
    required String name,
    required String resourceGroupName,
  }) :
      linkedServerName = pulumi.Input.asInput<String>(linkedServerName),
      name = pulumi.Input.asInput<String>(name),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'linkedServerName': linkedServerName,
      'name': name,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetRedisLinkedServerArgs.fromMap(Map<String, dynamic> map) {
    return GetRedisLinkedServerArgs(
      linkedServerName: map['linkedServerName'] as String,
      name: map['name'] as String,
      resourceGroupName: map['resourceGroupName'] as String,
    );
  }
}

