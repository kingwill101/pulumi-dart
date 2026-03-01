// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_redis_get_linked_server_args_doc}
/// Arguments for getLinkedServer.
/// {@endtemplate}
/// {@macro pulumi_redis_get_linked_server_args_doc}
class GetLinkedServerArgs {
  /// The name of the RedisLinkedServerWithProperties
  final pulumi.Input<String> linkedServerName;
  /// The name of the redis cache.
  final pulumi.Input<String> name;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [GetLinkedServerArgs].
  /// [linkedServerName] The name of the RedisLinkedServerWithProperties
  /// [name] The name of the redis cache.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  GetLinkedServerArgs({
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

  factory GetLinkedServerArgs.fromMap(Map<String, dynamic> map) {
    return GetLinkedServerArgs(
      linkedServerName: map['linkedServerName'] as String,
      name: map['name'] as String,
      resourceGroupName: map['resourceGroupName'] as String,
    );
  }
}

