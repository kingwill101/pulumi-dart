// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_avs_get_license_args_doc}
/// Arguments for getLicense.
/// {@endtemplate}
/// {@macro pulumi_avs_get_license_args_doc}
class GetLicenseArgs {
  /// Name of the license.
  final pulumi.Input<String> licenseName;
  /// Name of the private cloud
  final pulumi.Input<String> privateCloudName;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [GetLicenseArgs].
  /// [licenseName] Name of the license.
  /// [privateCloudName] Name of the private cloud
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  GetLicenseArgs({
    required pulumi.Output<String> licenseName,
    required pulumi.Output<String> privateCloudName,
    required pulumi.Output<String> resourceGroupName,
  }) :
      licenseName = pulumi.Input.asInput<String>(licenseName),
      privateCloudName = pulumi.Input.asInput<String>(privateCloudName),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'licenseName': licenseName,
      'privateCloudName': privateCloudName,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetLicenseArgs.fromMap(Map<String, dynamic> map) {
    return GetLicenseArgs(
      licenseName: pulumi.Output.create<String>(map['licenseName'] as String),
      privateCloudName: pulumi.Output.create<String>(map['privateCloudName'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
    );
  }
}

