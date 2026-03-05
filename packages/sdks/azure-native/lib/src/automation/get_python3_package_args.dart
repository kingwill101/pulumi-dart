// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_automation_get_python3_package_args_doc}
/// Arguments for getPython3Package.
/// {@endtemplate}
/// {@macro pulumi_automation_get_python3_package_args_doc}
class GetPython3PackageArgs {
  /// The name of the automation account.
  final pulumi.Input<String> automationAccountName;
  /// The python package name.
  final pulumi.Input<String> packageName;
  /// Name of an Azure Resource group.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [GetPython3PackageArgs].
  /// [automationAccountName] The name of the automation account.
  /// [packageName] The python package name.
  /// [resourceGroupName] Name of an Azure Resource group.
  GetPython3PackageArgs({
    required this.automationAccountName,
    required this.packageName,
    required this.resourceGroupName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'automationAccountName': automationAccountName,
      'packageName': packageName,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetPython3PackageArgs.fromMap(Map<String, dynamic> map) {
    return GetPython3PackageArgs(
      automationAccountName: pulumi.Input.fromValue(map['automationAccountName'] as String),
      packageName: pulumi.Input.fromValue(map['packageName'] as String),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
    );
  }
}

