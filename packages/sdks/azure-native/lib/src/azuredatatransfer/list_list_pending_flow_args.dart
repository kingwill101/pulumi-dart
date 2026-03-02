// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_azuredatatransfer_list_list_pending_flow_args_doc}
/// Arguments for listListPendingFlow.
/// {@endtemplate}
/// {@macro pulumi_azuredatatransfer_list_list_pending_flow_args_doc}
class ListListPendingFlowArgs {
  /// The name for the connection that is to be requested.
  final pulumi.Input<String> connectionName;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [ListListPendingFlowArgs].
  /// [connectionName] The name for the connection that is to be requested.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  ListListPendingFlowArgs({
    required this.connectionName,
    required this.resourceGroupName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'connectionName': connectionName,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory ListListPendingFlowArgs.fromMap(Map<String, dynamic> map) {
    return ListListPendingFlowArgs(
      connectionName: (map['connectionName'] as String).input(),
      resourceGroupName: (map['resourceGroupName'] as String).input(),
    );
  }
}

