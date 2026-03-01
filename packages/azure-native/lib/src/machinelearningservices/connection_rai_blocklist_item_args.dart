// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'rai_blocklist_item_properties.dart';

/// {@template pulumi_machinelearningservices_connection_rai_blocklist_item_args_doc}
/// The set of arguments for ConnectionRaiBlocklistItem.
/// {@endtemplate}
/// {@macro pulumi_machinelearningservices_connection_rai_blocklist_item_args_doc}
class ConnectionRaiBlocklistItemArgs {
  /// Friendly name of the workspace connection
  final pulumi.Input<String> connectionName;
  /// RAI Custom Blocklist Item properties.
  final pulumi.Input<RaiBlocklistItemProperties> properties;
  /// Api version used by proxy call
  final pulumi.Input<String>? proxyApiVersion;
  /// Name of the RaiBlocklist Item
  final pulumi.Input<String>? raiBlocklistItemName;
  /// The name of the RaiBlocklist.
  final pulumi.Input<String> raiBlocklistName;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// Azure Machine Learning Workspace Name
  final pulumi.Input<String> workspaceName;

  /// Creates a new [ConnectionRaiBlocklistItemArgs].
  /// [connectionName] Friendly name of the workspace connection
  /// [properties] RAI Custom Blocklist Item properties.
  /// [proxyApiVersion] Api version used by proxy call
  /// [raiBlocklistItemName] Name of the RaiBlocklist Item
  /// [raiBlocklistName] The name of the RaiBlocklist.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [workspaceName] Azure Machine Learning Workspace Name
  ConnectionRaiBlocklistItemArgs({
    required String connectionName,
    required RaiBlocklistItemProperties properties,
    String? proxyApiVersion,
    String? raiBlocklistItemName,
    required String raiBlocklistName,
    required String resourceGroupName,
    required String workspaceName,
  }) :
      connectionName = pulumi.Input.asInput<String>(connectionName),
      properties = pulumi.Input.asInput<RaiBlocklistItemProperties>(properties),
      proxyApiVersion = pulumi.Input.asOptionalInput<String>(proxyApiVersion),
      raiBlocklistItemName = pulumi.Input.asOptionalInput<String>(raiBlocklistItemName),
      raiBlocklistName = pulumi.Input.asInput<String>(raiBlocklistName),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      workspaceName = pulumi.Input.asInput<String>(workspaceName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'connectionName': connectionName,
      'properties': pulumi.Input.mapInputValue<RaiBlocklistItemProperties, Map<String, dynamic>>(properties, (value) => value.toMap()),
      'proxyApiVersion': ?proxyApiVersion,
      'raiBlocklistItemName': ?raiBlocklistItemName,
      'raiBlocklistName': raiBlocklistName,
      'resourceGroupName': resourceGroupName,
      'workspaceName': workspaceName,
    };
  }

  factory ConnectionRaiBlocklistItemArgs.fromMap(Map<String, dynamic> map) {
    return ConnectionRaiBlocklistItemArgs(
      connectionName: map['connectionName'] as String,
      properties: RaiBlocklistItemProperties.fromMap((map['properties'] as Map).cast<String, dynamic>()),
      proxyApiVersion: map['proxyApiVersion'] == null ? null : map['proxyApiVersion'] as String,
      raiBlocklistItemName: map['raiBlocklistItemName'] == null ? null : map['raiBlocklistItemName'] as String,
      raiBlocklistName: map['raiBlocklistName'] as String,
      resourceGroupName: map['resourceGroupName'] as String,
      workspaceName: map['workspaceName'] as String,
    );
  }
}

