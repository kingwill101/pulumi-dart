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
    required String automationAccountName,
    required String packageName,
    required String resourceGroupName,
  }) :
      automationAccountName = pulumi.Input.asInput<String>(automationAccountName),
      packageName = pulumi.Input.asInput<String>(packageName),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'automationAccountName': automationAccountName,
      'packageName': packageName,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetPython3PackageArgs.fromMap(Map<String, dynamic> map) {
    return GetPython3PackageArgs(
      automationAccountName: map['automationAccountName'] as String,
      packageName: map['packageName'] as String,
      resourceGroupName: map['resourceGroupName'] as String,
    );
  }
}

