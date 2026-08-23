// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_azuredatatransfer_get_connection_args_doc}
/// Arguments for getConnection.
/// {@endtemplate}
/// {@macro pulumi_azuredatatransfer_get_connection_args_doc}
class GetConnectionArgs {
  /// The name for the connection that is to be requested.
  final pulumi.Input<String> connectionName;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [GetConnectionArgs].
  /// [connectionName] The name for the connection that is to be requested.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  const GetConnectionArgs({
    required this.connectionName,
    required this.resourceGroupName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'connectionName': connectionName,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetConnectionArgs.fromMap(Map<String, dynamic> map) {
    return GetConnectionArgs(
      connectionName: pulumi.Input.fromValue(map['connectionName'] as String),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
    );
  }
}
