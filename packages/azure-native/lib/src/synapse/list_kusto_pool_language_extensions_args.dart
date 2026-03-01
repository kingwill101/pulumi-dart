// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_synapse_list_kusto_pool_language_extensions_args_doc}
/// Arguments for listKustoPoolLanguageExtensions.
/// {@endtemplate}
/// {@macro pulumi_synapse_list_kusto_pool_language_extensions_args_doc}
class ListKustoPoolLanguageExtensionsArgs {
  /// The name of the Kusto pool.
  final pulumi.Input<String> kustoPoolName;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// The name of the workspace.
  final pulumi.Input<String> workspaceName;

  /// Creates a new [ListKustoPoolLanguageExtensionsArgs].
  /// [kustoPoolName] The name of the Kusto pool.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [workspaceName] The name of the workspace.
  ListKustoPoolLanguageExtensionsArgs({
    required String kustoPoolName,
    required String resourceGroupName,
    required String workspaceName,
  }) :
      kustoPoolName = pulumi.Input.asInput<String>(kustoPoolName),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      workspaceName = pulumi.Input.asInput<String>(workspaceName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'kustoPoolName': kustoPoolName,
      'resourceGroupName': resourceGroupName,
      'workspaceName': workspaceName,
    };
  }

  factory ListKustoPoolLanguageExtensionsArgs.fromMap(Map<String, dynamic> map) {
    return ListKustoPoolLanguageExtensionsArgs(
      kustoPoolName: map['kustoPoolName'] as String,
      resourceGroupName: map['resourceGroupName'] as String,
      workspaceName: map['workspaceName'] as String,
    );
  }
}

