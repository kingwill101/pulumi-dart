// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_hybridcompute_get_license_args_doc}
/// Arguments for getLicense.
/// {@endtemplate}
/// {@macro pulumi_hybridcompute_get_license_args_doc}
class GetLicenseArgs {
  /// The name of the license.
  final pulumi.Input<String> licenseName;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [GetLicenseArgs].
  /// [licenseName] The name of the license.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  GetLicenseArgs({
    required this.licenseName,
    required this.resourceGroupName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'licenseName': licenseName,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetLicenseArgs.fromMap(Map<String, dynamic> map) {
    return GetLicenseArgs(
      licenseName: (map['licenseName'] as String).input(),
      resourceGroupName: (map['resourceGroupName'] as String).input(),
    );
  }
}

