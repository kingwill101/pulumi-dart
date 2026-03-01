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
    pulumi.Output<String>? businessCaseName,
    required pulumi.Output<String> projectName,
    required pulumi.Output<String> resourceGroupName,
    pulumi.Output<Settings>? settings,
  }) :
      businessCaseName = pulumi.Input.asOptionalInput<String>(businessCaseName),
      projectName = pulumi.Input.asInput<String>(projectName),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      settings = pulumi.Input.asOptionalInput<Settings>(settings);

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
      businessCaseName: map['businessCaseName'] == null ? null : pulumi.Output.create<String>(map['businessCaseName'] as String),
      projectName: pulumi.Output.create<String>(map['projectName'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
      settings: map['settings'] == null ? null : pulumi.Output.create<Settings>(Settings.fromMap((map['settings'] as Map).cast<String, dynamic>())),
    );
  }
}

