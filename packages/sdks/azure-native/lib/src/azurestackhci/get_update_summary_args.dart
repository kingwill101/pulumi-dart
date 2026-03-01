// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_azurestackhci_get_update_summary_args_doc}
/// Arguments for getUpdateSummary.
/// {@endtemplate}
/// {@macro pulumi_azurestackhci_get_update_summary_args_doc}
class GetUpdateSummaryArgs {
  /// The name of the cluster.
  final pulumi.Input<String> clusterName;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [GetUpdateSummaryArgs].
  /// [clusterName] The name of the cluster.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  GetUpdateSummaryArgs({
    required pulumi.Output<String> clusterName,
    required pulumi.Output<String> resourceGroupName,
  }) :
      clusterName = pulumi.Input.asInput<String>(clusterName),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'clusterName': clusterName,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetUpdateSummaryArgs.fromMap(Map<String, dynamic> map) {
    return GetUpdateSummaryArgs(
      clusterName: pulumi.Output.create<String>(map['clusterName'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
    );
  }
}

