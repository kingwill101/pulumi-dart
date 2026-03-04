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
      'settings':
          ?pulumi.Input.mapOptionalInputValue<Settings, Map<String, dynamic>>(
            settings,
            (value) => value.toMap(),
          ),
    };
  }

  factory BusinessCaseOperationArgs.fromMap(Map<String, dynamic> map) {
    return BusinessCaseOperationArgs(
      businessCaseName: (() {
        final guardedValue = map['businessCaseName'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      projectName: pulumi.Input.fromValue(map['projectName'] as String),
      resourceGroupName: pulumi.Input.fromValue(
        map['resourceGroupName'] as String,
      ),
      settings: (() {
        final guardedValue = map['settings'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          Settings.fromMap((guardedValue as Map).cast<String, dynamic>()),
        );
      })(),
    );
  }
}
