// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_migrate_get_business_case_operation_args_doc}
/// Arguments for getBusinessCaseOperation.
/// {@endtemplate}
/// {@macro pulumi_migrate_get_business_case_operation_args_doc}
class GetBusinessCaseOperationArgs {
  /// Business case ARM name
  final pulumi.Input<String> businessCaseName;

  /// Assessment Project Name
  final pulumi.Input<String> projectName;

  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [GetBusinessCaseOperationArgs].
  /// [businessCaseName] Business case ARM name
  /// [projectName] Assessment Project Name
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  GetBusinessCaseOperationArgs({
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

  factory GetBusinessCaseOperationArgs.fromMap(Map<String, dynamic> map) {
    return GetBusinessCaseOperationArgs(
      businessCaseName: pulumi.Input.fromValue(
        map['businessCaseName'] as String,
      ),
      projectName: pulumi.Input.fromValue(map['projectName'] as String),
      resourceGroupName: pulumi.Input.fromValue(
        map['resourceGroupName'] as String,
      ),
    );
  }
}
