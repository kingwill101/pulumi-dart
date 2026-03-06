// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_containerservice_get_auto_upgrade_profile_args_doc}
/// Arguments for getAutoUpgradeProfile.
/// {@endtemplate}
/// {@macro pulumi_containerservice_get_auto_upgrade_profile_args_doc}
class GetAutoUpgradeProfileArgs {
  /// The name of the AutoUpgradeProfile resource.
  final pulumi.Input<String> autoUpgradeProfileName;
  /// The name of the Fleet resource.
  final pulumi.Input<String> fleetName;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [GetAutoUpgradeProfileArgs].
  /// [autoUpgradeProfileName] The name of the AutoUpgradeProfile resource.
  /// [fleetName] The name of the Fleet resource.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  const GetAutoUpgradeProfileArgs({
    required this.autoUpgradeProfileName,
    required this.fleetName,
    required this.resourceGroupName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'autoUpgradeProfileName': autoUpgradeProfileName,
      'fleetName': fleetName,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetAutoUpgradeProfileArgs.fromMap(Map<String, dynamic> map) {
    return GetAutoUpgradeProfileArgs(
      autoUpgradeProfileName: pulumi.Input.fromValue(map['autoUpgradeProfileName'] as String),
      fleetName: pulumi.Input.fromValue(map['fleetName'] as String),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
    );
  }
}

