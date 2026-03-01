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
    required String businessCaseName,
    required String projectName,
    required String resourceGroupName,
  }) :
      businessCaseName = pulumi.Input.asInput<String>(businessCaseName),
      projectName = pulumi.Input.asInput<String>(projectName),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'businessCaseName': businessCaseName,
      'projectName': projectName,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetBusinessCaseOperationArgs.fromMap(Map<String, dynamic> map) {
    return GetBusinessCaseOperationArgs(
      businessCaseName: map['businessCaseName'] as String,
      projectName: map['projectName'] as String,
      resourceGroupName: map['resourceGroupName'] as String,
    );
  }
}

