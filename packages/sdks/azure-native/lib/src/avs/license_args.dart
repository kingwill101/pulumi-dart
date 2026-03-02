// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'vmware_firewall_license_properties.dart';

/// {@template pulumi_avs_license_args_doc}
/// The set of arguments for License.
/// {@endtemplate}
/// {@macro pulumi_avs_license_args_doc}
class LicenseArgs {
  /// Name of the license.
  final pulumi.Input<String>? licenseName;
  /// Name of the private cloud
  final pulumi.Input<String> privateCloudName;
  /// The resource-specific properties for this resource.
  final pulumi.Input<VmwareFirewallLicenseProperties>? properties;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [LicenseArgs].
  /// [licenseName] Name of the license.
  /// [privateCloudName] Name of the private cloud
  /// [properties] The resource-specific properties for this resource.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  LicenseArgs({
    this.licenseName,
    required this.privateCloudName,
    this.properties,
    required this.resourceGroupName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'licenseName': ?licenseName,
      'privateCloudName': privateCloudName,
      'properties': ?pulumi.Input.mapOptionalInputValue<VmwareFirewallLicenseProperties, Map<String, dynamic>>(properties, (value) => value.toMap()),
      'resourceGroupName': resourceGroupName,
    };
  }

  factory LicenseArgs.fromMap(Map<String, dynamic> map) {
    return LicenseArgs(
      licenseName: map['licenseName'] == null ? null : (map['licenseName']! as String).input(),
      privateCloudName: (map['privateCloudName'] as String).input(),
      properties: map['properties'] == null ? null : (VmwareFirewallLicenseProperties.fromMap((map['properties']! as Map).cast<String, dynamic>())).input(),
      resourceGroupName: (map['resourceGroupName'] as String).input(),
    );
  }
}

