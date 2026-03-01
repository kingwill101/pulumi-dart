// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_botservice_get_bot_connection_args_doc}
/// Arguments for getBotConnection.
/// {@endtemplate}
/// {@macro pulumi_botservice_get_bot_connection_args_doc}
class GetBotConnectionArgs {
  /// The name of the Bot Service Connection Setting resource.
  final pulumi.Input<String> connectionName;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// The name of the Bot resource.
  final pulumi.Input<String> resourceName;

  /// Creates a new [GetBotConnectionArgs].
  /// [connectionName] The name of the Bot Service Connection Setting resource.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [resourceName] The name of the Bot resource.
  GetBotConnectionArgs({
    required String connectionName,
    required String resourceGroupName,
    required String resourceName,
  }) :
      connectionName = pulumi.Input.asInput<String>(connectionName),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      resourceName = pulumi.Input.asInput<String>(resourceName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'connectionName': connectionName,
      'resourceGroupName': resourceGroupName,
      'resourceName': resourceName,
    };
  }

  factory GetBotConnectionArgs.fromMap(Map<String, dynamic> map) {
    return GetBotConnectionArgs(
      connectionName: map['connectionName'] as String,
      resourceGroupName: map['resourceGroupName'] as String,
      resourceName: map['resourceName'] as String,
    );
  }
}

