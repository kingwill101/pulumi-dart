// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_costmanagement_get_report_by_resource_group_name_args_doc}
/// Arguments for getReportByResourceGroupName.
/// {@endtemplate}
/// {@macro pulumi_costmanagement_get_report_by_resource_group_name_args_doc}
class GetReportByResourceGroupNameArgs {
  /// Report Name.
  final pulumi.Input<String> reportName;
  /// Azure Resource Group Name.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [GetReportByResourceGroupNameArgs].
  /// [reportName] Report Name.
  /// [resourceGroupName] Azure Resource Group Name.
  const GetReportByResourceGroupNameArgs({
    required this.reportName,
    required this.resourceGroupName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'reportName': reportName,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetReportByResourceGroupNameArgs.fromMap(Map<String, dynamic> map) {
    return GetReportByResourceGroupNameArgs(
      reportName: pulumi.Input.fromValue(map['reportName'] as String),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
    );
  }
}

