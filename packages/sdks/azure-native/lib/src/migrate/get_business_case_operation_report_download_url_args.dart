// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_migrate_get_business_case_operation_report_download_url_args_doc}
/// Arguments for getBusinessCaseOperationReportDownloadUrl.
/// {@endtemplate}
/// {@macro pulumi_migrate_get_business_case_operation_report_download_url_args_doc}
class GetBusinessCaseOperationReportDownloadUrlArgs {
  /// Business case ARM name
  final pulumi.Input<String> businessCaseName;
  /// Assessment Project Name
  final pulumi.Input<String> projectName;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [GetBusinessCaseOperationReportDownloadUrlArgs].
  /// [businessCaseName] Business case ARM name
  /// [projectName] Assessment Project Name
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  const GetBusinessCaseOperationReportDownloadUrlArgs({
    required this.businessCaseName,
    required this.projectName,
    required this.resourceGroupName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'businessCaseName': businessCaseName,
      'projectName': projectName,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetBusinessCaseOperationReportDownloadUrlArgs.fromMap(Map<String, dynamic> map) {
    return GetBusinessCaseOperationReportDownloadUrlArgs(
      businessCaseName: pulumi.Input.fromValue(map['businessCaseName'] as String),
      projectName: pulumi.Input.fromValue(map['projectName'] as String),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
    );
  }
}

