// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_cognitiveservices_get_project_connection_args_doc}
/// Arguments for getProjectConnection.
/// {@endtemplate}
/// {@macro pulumi_cognitiveservices_get_project_connection_args_doc}
class GetProjectConnectionArgs {
  /// The name of Cognitive Services account.
  final pulumi.Input<String> accountName;
  /// Friendly name of the connection
  final pulumi.Input<String> connectionName;
  /// The name of Cognitive Services account's project.
  final pulumi.Input<String> projectName;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [GetProjectConnectionArgs].
  /// [accountName] The name of Cognitive Services account.
  /// [connectionName] Friendly name of the connection
  /// [projectName] The name of Cognitive Services account's project.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  const GetProjectConnectionArgs({
    required this.accountName,
    required this.connectionName,
    required this.projectName,
    required this.resourceGroupName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountName': accountName,
      'connectionName': connectionName,
      'projectName': projectName,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetProjectConnectionArgs.fromMap(Map<String, dynamic> map) {
    return GetProjectConnectionArgs(
      accountName: pulumi.Input.fromValue(map['accountName'] as String),
      connectionName: pulumi.Input.fromValue(map['connectionName'] as String),
      projectName: pulumi.Input.fromValue(map['projectName'] as String),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
    );
  }
}
