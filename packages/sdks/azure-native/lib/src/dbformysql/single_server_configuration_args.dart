// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_dbformysql_single_server_configuration_args_doc}
/// The set of arguments for SingleServerConfiguration.
/// {@endtemplate}
/// {@macro pulumi_dbformysql_single_server_configuration_args_doc}
class SingleServerConfigurationArgs {
  /// The name of the server configuration.
  final pulumi.Input<String>? configurationName;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// The name of the server.
  final pulumi.Input<String> serverName;
  /// Source of the configuration.
  final pulumi.Input<String>? source;
  /// Value of the configuration.
  final pulumi.Input<String>? value;

  /// Creates a new [SingleServerConfigurationArgs].
  /// [configurationName] The name of the server configuration.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [serverName] The name of the server.
  /// [source] Source of the configuration.
  /// [value] Value of the configuration.
  SingleServerConfigurationArgs({
    pulumi.Output<String>? configurationName,
    required pulumi.Output<String> resourceGroupName,
    required pulumi.Output<String> serverName,
    pulumi.Output<String>? source,
    pulumi.Output<String>? value,
  }) :
      configurationName = pulumi.Input.asOptionalInput<String>(configurationName),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      serverName = pulumi.Input.asInput<String>(serverName),
      source = pulumi.Input.asOptionalInput<String>(source),
      value = pulumi.Input.asOptionalInput<String>(value);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'configurationName': ?configurationName,
      'resourceGroupName': resourceGroupName,
      'serverName': serverName,
      'source': ?source,
      'value': ?value,
    };
  }

  factory SingleServerConfigurationArgs.fromMap(Map<String, dynamic> map) {
    return SingleServerConfigurationArgs(
      configurationName: map['configurationName'] == null ? null : pulumi.Output.create<String>(map['configurationName'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
      serverName: pulumi.Output.create<String>(map['serverName'] as String),
      source: map['source'] == null ? null : pulumi.Output.create<String>(map['source'] as String),
      value: map['value'] == null ? null : pulumi.Output.create<String>(map['value'] as String),
    );
  }
}

