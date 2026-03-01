// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_machinelearningservices_get_connection_rai_blocklist_args_doc}
/// Arguments for getConnectionRaiBlocklist.
/// {@endtemplate}
/// {@macro pulumi_machinelearningservices_get_connection_rai_blocklist_args_doc}
class GetConnectionRaiBlocklistArgs {
  /// Friendly name of the workspace connection
  final pulumi.Input<String> connectionName;
  /// The name of the RaiBlocklist.
  final pulumi.Input<String> raiBlocklistName;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// Azure Machine Learning Workspace Name
  final pulumi.Input<String> workspaceName;

  /// Creates a new [GetConnectionRaiBlocklistArgs].
  /// [connectionName] Friendly name of the workspace connection
  /// [raiBlocklistName] The name of the RaiBlocklist.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [workspaceName] Azure Machine Learning Workspace Name
  GetConnectionRaiBlocklistArgs({
    required String connectionName,
    required String raiBlocklistName,
    required String resourceGroupName,
    required String workspaceName,
  }) :
      connectionName = pulumi.Input.asInput<String>(connectionName),
      raiBlocklistName = pulumi.Input.asInput<String>(raiBlocklistName),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      workspaceName = pulumi.Input.asInput<String>(workspaceName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'connectionName': connectionName,
      'raiBlocklistName': raiBlocklistName,
      'resourceGroupName': resourceGroupName,
      'workspaceName': workspaceName,
    };
  }

  factory GetConnectionRaiBlocklistArgs.fromMap(Map<String, dynamic> map) {
    return GetConnectionRaiBlocklistArgs(
      connectionName: map['connectionName'] as String,
      raiBlocklistName: map['raiBlocklistName'] as String,
      resourceGroupName: map['resourceGroupName'] as String,
      workspaceName: map['workspaceName'] as String,
    );
  }
}

