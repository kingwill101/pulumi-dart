// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_automation_get_python2_package_args_doc}
/// Arguments for getPython2Package.
/// {@endtemplate}
/// {@macro pulumi_automation_get_python2_package_args_doc}
class GetPython2PackageArgs {
  /// The name of the automation account.
  final pulumi.Input<String> automationAccountName;
  /// The python package name.
  final pulumi.Input<String> packageName;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [GetPython2PackageArgs].
  /// [automationAccountName] The name of the automation account.
  /// [packageName] The python package name.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  const GetPython2PackageArgs({
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

  factory GetPython2PackageArgs.fromMap(Map<String, dynamic> map) {
    return GetPython2PackageArgs(
      automationAccountName: pulumi.Input.fromValue(map['automationAccountName'] as String),
      packageName: pulumi.Input.fromValue(map['packageName'] as String),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
    );
  }
}
