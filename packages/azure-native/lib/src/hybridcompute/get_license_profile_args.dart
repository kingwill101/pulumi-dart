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
    required String licenseProfileName,
    required String machineName,
    required String resourceGroupName,
  }) :
      licenseProfileName = pulumi.Input.asInput<String>(licenseProfileName),
      machineName = pulumi.Input.asInput<String>(machineName),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'licenseProfileName': licenseProfileName,
      'machineName': machineName,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetLicenseProfileArgs.fromMap(Map<String, dynamic> map) {
    return GetLicenseProfileArgs(
      licenseProfileName: map['licenseProfileName'] as String,
      machineName: map['machineName'] as String,
      resourceGroupName: map['resourceGroupName'] as String,
    );
  }
}

