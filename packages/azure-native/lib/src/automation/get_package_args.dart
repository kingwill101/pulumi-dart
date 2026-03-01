// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_automation_get_package_args_doc}
/// Arguments for getPackage.
/// {@endtemplate}
/// {@macro pulumi_automation_get_package_args_doc}
class GetPackageArgs {
  /// The name of the automation account.
  final pulumi.Input<String> automationAccountName;
  /// The Package name.
  final pulumi.Input<String> packageName;
  /// Name of an Azure Resource group.
  final pulumi.Input<String> resourceGroupName;
  /// The name of the Runtime Environment.
  final pulumi.Input<String> runtimeEnvironmentName;

  /// Creates a new [GetPackageArgs].
  /// [automationAccountName] The name of the automation account.
  /// [packageName] The Package name.
  /// [resourceGroupName] Name of an Azure Resource group.
  /// [runtimeEnvironmentName] The name of the Runtime Environment.
  GetPackageArgs({
    required String automationAccountName,
    required String packageName,
    required String resourceGroupName,
    required String runtimeEnvironmentName,
  }) :
      automationAccountName = pulumi.Input.asInput<String>(automationAccountName),
      packageName = pulumi.Input.asInput<String>(packageName),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      runtimeEnvironmentName = pulumi.Input.asInput<String>(runtimeEnvironmentName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'automationAccountName': automationAccountName,
      'packageName': packageName,
      'resourceGroupName': resourceGroupName,
      'runtimeEnvironmentName': runtimeEnvironmentName,
    };
  }

  factory GetPackageArgs.fromMap(Map<String, dynamic> map) {
    return GetPackageArgs(
      automationAccountName: map['automationAccountName'] as String,
      packageName: map['packageName'] as String,
      resourceGroupName: map['resourceGroupName'] as String,
      runtimeEnvironmentName: map['runtimeEnvironmentName'] as String,
    );
  }
}

