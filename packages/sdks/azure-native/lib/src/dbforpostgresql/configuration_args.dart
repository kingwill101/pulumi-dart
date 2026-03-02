// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_dbforpostgresql_configuration_args_doc}
/// The set of arguments for Configuration.
/// {@endtemplate}
/// {@macro pulumi_dbforpostgresql_configuration_args_doc}
class ConfigurationArgs {
  /// Name of the configuration (also known as server parameter).
  final pulumi.Input<String>? configurationName;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// The name of the server.
  final pulumi.Input<String> serverName;
  /// Source of the value assigned to the configuration (also known as server parameter). Required to update the value assigned to a specific modifiable configuration.
  final pulumi.Input<String>? source;
  /// Value of the configuration (also known as server parameter). Required to update the value assigned to a specific modifiable configuration.
  final pulumi.Input<String>? value;

  /// Creates a new [ConfigurationArgs].
  /// [configurationName] Name of the configuration (also known as server parameter).
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [serverName] The name of the server.
  /// [source] Source of the value assigned to the configuration (also known as server parameter). Required to update the value assigned to a specific modifiable configuration.
  /// [value] Value of the configuration (also known as server parameter). Required to update the value assigned to a specific modifiable configuration.
  ConfigurationArgs({
    this.configurationName,
    required this.resourceGroupName,
    required this.serverName,
    this.source,
    this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'configurationName': ?configurationName,
      'resourceGroupName': resourceGroupName,
      'serverName': serverName,
      'source': ?source,
      'value': ?value,
    };
  }

  factory ConfigurationArgs.fromMap(Map<String, dynamic> map) {
    return ConfigurationArgs(
      configurationName: map['configurationName'] == null ? null : (map['configurationName']! as String).input(),
      resourceGroupName: (map['resourceGroupName'] as String).input(),
      serverName: (map['serverName'] as String).input(),
      source: map['source'] == null ? null : (map['source']! as String).input(),
      value: map['value'] == null ? null : (map['value']! as String).input(),
    );
  }
}

