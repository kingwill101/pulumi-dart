// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_machinelearningservices_get_connection_rai_policy_args_doc}
/// Arguments for getConnectionRaiPolicy.
/// {@endtemplate}
/// {@macro pulumi_machinelearningservices_get_connection_rai_policy_args_doc}
class GetConnectionRaiPolicyArgs {
  /// Friendly name of the workspace connection
  final pulumi.Input<String> connectionName;
  /// Name of the Rai Policy.
  final pulumi.Input<String> raiPolicyName;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// Azure Machine Learning Workspace Name
  final pulumi.Input<String> workspaceName;

  /// Creates a new [GetConnectionRaiPolicyArgs].
  /// [connectionName] Friendly name of the workspace connection
  /// [raiPolicyName] Name of the Rai Policy.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [workspaceName] Azure Machine Learning Workspace Name
  GetConnectionRaiPolicyArgs({
    required this.connectionName,
    required this.raiPolicyName,
    required this.resourceGroupName,
    required this.workspaceName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'connectionName': connectionName,
      'raiPolicyName': raiPolicyName,
      'resourceGroupName': resourceGroupName,
      'workspaceName': workspaceName,
    };
  }

  factory GetConnectionRaiPolicyArgs.fromMap(Map<String, dynamic> map) {
    return GetConnectionRaiPolicyArgs(
      connectionName: (map['connectionName'] as String).input(),
      raiPolicyName: (map['raiPolicyName'] as String).input(),
      resourceGroupName: (map['resourceGroupName'] as String).input(),
      workspaceName: (map['workspaceName'] as String).input(),
    );
  }
}

