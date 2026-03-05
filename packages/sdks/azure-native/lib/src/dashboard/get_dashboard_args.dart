// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_dashboard_get_dashboard_args_doc}
/// Arguments for getDashboard.
/// {@endtemplate}
/// {@macro pulumi_dashboard_get_dashboard_args_doc}
class GetDashboardArgs {
  /// The name of the Azure Managed Dashboard.
  final pulumi.Input<String> dashboardName;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [GetDashboardArgs].
  /// [dashboardName] The name of the Azure Managed Dashboard.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  GetDashboardArgs({
    required this.dashboardName,
    required this.resourceGroupName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dashboardName': dashboardName,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetDashboardArgs.fromMap(Map<String, dynamic> map) {
    return GetDashboardArgs(
      dashboardName: pulumi.Input.fromValue(map['dashboardName'] as String),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
    );
  }
}

