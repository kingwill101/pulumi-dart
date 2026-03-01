// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_kusto_get_script_args_doc}
/// Arguments for getScript.
/// {@endtemplate}
/// {@macro pulumi_kusto_get_script_args_doc}
class GetScriptArgs {
  /// The name of the Kusto cluster.
  final pulumi.Input<String> clusterName;
  /// The name of the database in the Kusto cluster.
  final pulumi.Input<String> databaseName;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// The name of the Kusto database script.
  final pulumi.Input<String> scriptName;

  /// Creates a new [GetScriptArgs].
  /// [clusterName] The name of the Kusto cluster.
  /// [databaseName] The name of the database in the Kusto cluster.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [scriptName] The name of the Kusto database script.
  GetScriptArgs({
    required pulumi.Output<String> clusterName,
    required pulumi.Output<String> databaseName,
    required pulumi.Output<String> resourceGroupName,
    required pulumi.Output<String> scriptName,
  }) :
      clusterName = pulumi.Input.asInput<String>(clusterName),
      databaseName = pulumi.Input.asInput<String>(databaseName),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      scriptName = pulumi.Input.asInput<String>(scriptName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'clusterName': clusterName,
      'databaseName': databaseName,
      'resourceGroupName': resourceGroupName,
      'scriptName': scriptName,
    };
  }

  factory GetScriptArgs.fromMap(Map<String, dynamic> map) {
    return GetScriptArgs(
      clusterName: pulumi.Output.create<String>(map['clusterName'] as String),
      databaseName: pulumi.Output.create<String>(map['databaseName'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
      scriptName: pulumi.Output.create<String>(map['scriptName'] as String),
    );
  }
}

