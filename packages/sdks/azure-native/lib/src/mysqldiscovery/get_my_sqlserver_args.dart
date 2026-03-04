// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_mysqldiscovery_get_my_sqlserver_args_doc}
/// Arguments for getMySQLServer.
/// {@endtemplate}
/// {@macro pulumi_mysqldiscovery_get_my_sqlserver_args_doc}
class GetMySQLServerArgs {
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;

  /// The name of Server
  final pulumi.Input<String> serverName;

  /// The name of Site
  final pulumi.Input<String> siteName;

  /// Creates a new [GetMySQLServerArgs].
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [serverName] The name of Server
  /// [siteName] The name of Site
  GetMySQLServerArgs({
    required this.resourceGroupName,
    required this.serverName,
    required this.siteName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'resourceGroupName': resourceGroupName,
      'serverName': serverName,
      'siteName': siteName,
    };
  }

  factory GetMySQLServerArgs.fromMap(Map<String, dynamic> map) {
    return GetMySQLServerArgs(
      resourceGroupName: pulumi.Input.fromValue(
        map['resourceGroupName'] as String,
      ),
      serverName: pulumi.Input.fromValue(map['serverName'] as String),
      siteName: pulumi.Input.fromValue(map['siteName'] as String),
    );
  }
}
