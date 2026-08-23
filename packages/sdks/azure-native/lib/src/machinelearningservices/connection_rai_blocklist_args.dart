// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'rai_blocklist_properties.dart';

/// {@template pulumi_machinelearningservices_connection_rai_blocklist_args_doc}
/// The set of arguments for ConnectionRaiBlocklist.
/// {@endtemplate}
/// {@macro pulumi_machinelearningservices_connection_rai_blocklist_args_doc}
class ConnectionRaiBlocklistArgs {
  /// Friendly name of the workspace connection
  final pulumi.Input<String> connectionName;
  /// RAI Custom Blocklist properties.
  final pulumi.Input<RaiBlocklistProperties> properties;
  /// Api version used by proxy call
  final pulumi.Input<String>? proxyApiVersion;
  /// The name of the RaiBlocklist.
  final pulumi.Input<String>? raiBlocklistName;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// Azure Machine Learning Workspace Name
  final pulumi.Input<String> workspaceName;

  /// Creates a new [ConnectionRaiBlocklistArgs].
  /// [connectionName] Friendly name of the workspace connection
  /// [properties] RAI Custom Blocklist properties.
  /// [proxyApiVersion] Api version used by proxy call
  /// [raiBlocklistName] The name of the RaiBlocklist.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [workspaceName] Azure Machine Learning Workspace Name
  const ConnectionRaiBlocklistArgs({
    required this.connectionName,
    required this.properties,
    this.proxyApiVersion,
    this.raiBlocklistName,
    required this.resourceGroupName,
    required this.workspaceName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'connectionName': connectionName,
      'properties': pulumi.Input.mapInputValue<RaiBlocklistProperties, Map<String, dynamic>>(properties, (value) => value.toMap()),
      'proxyApiVersion': ?proxyApiVersion,
      'raiBlocklistName': ?raiBlocklistName,
      'resourceGroupName': resourceGroupName,
      'workspaceName': workspaceName,
    };
  }

  factory ConnectionRaiBlocklistArgs.fromMap(Map<String, dynamic> map) {
    return ConnectionRaiBlocklistArgs(
      connectionName: pulumi.Input.fromValue(map['connectionName'] as String),
      properties: pulumi.Input.fromValue(RaiBlocklistProperties.fromMap((map['properties']! as Map).cast<String, dynamic>())),
      proxyApiVersion: (() { final guardedValue = map['proxyApiVersion']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      raiBlocklistName: (() { final guardedValue = map['raiBlocklistName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
      workspaceName: pulumi.Input.fromValue(map['workspaceName'] as String),
    );
  }
}
