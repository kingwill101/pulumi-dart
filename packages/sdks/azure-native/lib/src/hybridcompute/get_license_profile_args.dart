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
    required pulumi.Output<String> licenseProfileName,
    required pulumi.Output<String> machineName,
    required pulumi.Output<String> resourceGroupName,
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
      licenseProfileName: pulumi.Output.create<String>(map['licenseProfileName'] as String),
      machineName: pulumi.Output.create<String>(map['machineName'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
    );
  }
}

