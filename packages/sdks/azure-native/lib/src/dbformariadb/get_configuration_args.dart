// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_dbformariadb_get_configuration_args_doc}
/// Arguments for getConfiguration.
/// {@endtemplate}
/// {@macro pulumi_dbformariadb_get_configuration_args_doc}
class GetConfigurationArgs {
  /// The name of the server configuration.
  final pulumi.Input<String> configurationName;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// The name of the server.
  final pulumi.Input<String> serverName;

  /// Creates a new [GetConfigurationArgs].
  /// [configurationName] The name of the server configuration.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [serverName] The name of the server.
  GetConfigurationArgs({
    required pulumi.Output<String> configurationName,
    required pulumi.Output<String> resourceGroupName,
    required pulumi.Output<String> serverName,
  }) :
      configurationName = pulumi.Input.asInput<String>(configurationName),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      serverName = pulumi.Input.asInput<String>(serverName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'configurationName': configurationName,
      'resourceGroupName': resourceGroupName,
      'serverName': serverName,
    };
  }

  factory GetConfigurationArgs.fromMap(Map<String, dynamic> map) {
    return GetConfigurationArgs(
      configurationName: pulumi.Output.create<String>(map['configurationName'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
      serverName: pulumi.Output.create<String>(map['serverName'] as String),
    );
  }
}

