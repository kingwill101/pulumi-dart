// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_hybridcompute_get_license_profile_args_doc}
/// Arguments for getLicenseProfile.
/// {@endtemplate}
/// {@macro pulumi_hybridcompute_get_license_profile_args_doc}
class GetLicenseProfileArgs {
  /// The name of the license profile.
  final pulumi.Input<String> licenseProfileName;

  /// The name of the hybrid machine.
  final pulumi.Input<String> machineName;

  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [GetLicenseProfileArgs].
  /// [licenseProfileName] The name of the license profile.
  /// [machineName] The name of the hybrid machine.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  GetLicenseProfileArgs({
    required this.licenseProfileName,
    required this.machineName,
    required this.resourceGroupName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'licenseProfileName': licenseProfileName,
      'machineName': machineName,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetLicenseProfileArgs.fromMap(Map<String, dynamic> map) {
    return GetLicenseProfileArgs(
      licenseProfileName: pulumi.Input.fromValue(
        map['licenseProfileName'] as String,
      ),
      machineName: pulumi.Input.fromValue(map['machineName'] as String),
      resourceGroupName: pulumi.Input.fromValue(
        map['resourceGroupName'] as String,
      ),
    );
  }
}
