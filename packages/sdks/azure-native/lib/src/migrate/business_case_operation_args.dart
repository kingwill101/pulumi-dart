// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'settings.dart';

/// {@template pulumi_migrate_business_case_operation_args_doc}
/// The set of arguments for BusinessCaseOperation.
/// {@endtemplate}
/// {@macro pulumi_migrate_business_case_operation_args_doc}
class BusinessCaseOperationArgs {
  /// Business case ARM name
  final pulumi.Input<String>? businessCaseName;
  /// Assessment Project Name
  final pulumi.Input<String> projectName;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// Business case settings.
  final pulumi.Input<Settings>? settings;

  /// Creates a new [BusinessCaseOperationArgs].
  /// [businessCaseName] Business case ARM name
  /// [projectName] Assessment Project Name
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [settings] Business case settings.
  BusinessCaseOperationArgs({
    this.businessCaseName,
    required this.projectName,
    required this.resourceGroupName,
    this.settings,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'businessCaseName': ?businessCaseName,
      'projectName': projectName,
      'resourceGroupName': resourceGroupName,
      'settings': ?pulumi.Input.mapOptionalInputValue<Settings, Map<String, dynamic>>(settings, (value) => value.toMap()),
    };
  }

  factory BusinessCaseOperationArgs.fromMap(Map<String, dynamic> map) {
    return BusinessCaseOperationArgs(
      businessCaseName: map['businessCaseName'] == null ? null : (map['businessCaseName'] as String).input(),
      projectName: (map['projectName'] as String).input(),
      resourceGroupName: (map['resourceGroupName'] as String).input(),
      settings: map['settings'] == null ? null : (Settings.fromMap((map['settings'] as Map).cast<String, dynamic>())).input(),
    );
  }
}

