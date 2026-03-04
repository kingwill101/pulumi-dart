// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_dashboard_get_grafana_args_doc}
/// Arguments for getGrafana.
/// {@endtemplate}
/// {@macro pulumi_dashboard_get_grafana_args_doc}
class GetGrafanaArgs {
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;

  /// The workspace name of Azure Managed Grafana.
  final pulumi.Input<String> workspaceName;

  /// Creates a new [GetGrafanaArgs].
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [workspaceName] The workspace name of Azure Managed Grafana.
  GetGrafanaArgs({
    required this.resourceGroupName,
    required this.workspaceName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'resourceGroupName': resourceGroupName,
      'workspaceName': workspaceName,
    };
  }

  factory GetGrafanaArgs.fromMap(Map<String, dynamic> map) {
    return GetGrafanaArgs(
      resourceGroupName: pulumi.Input.fromValue(
        map['resourceGroupName'] as String,
      ),
      workspaceName: pulumi.Input.fromValue(map['workspaceName'] as String),
    );
  }
}
