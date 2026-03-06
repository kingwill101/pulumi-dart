// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'license_details.dart';

/// {@template pulumi_hybridcompute_license_args_doc}
/// The set of arguments for License.
/// {@endtemplate}
/// {@macro pulumi_hybridcompute_license_args_doc}
class LicenseArgs {
  /// Describes the properties of a License.
  final pulumi.Input<LicenseDetails>? licenseDetails;
  /// The name of the license.
  final pulumi.Input<String>? licenseName;
  /// The type of the license resource.
  final pulumi.Input<String>? licenseType;
  /// The geo-location where the resource lives
  final pulumi.Input<String>? location;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// Resource tags.
  final pulumi.Input<Map<String, String>>? tags;
  /// Describes the tenant id.
  final pulumi.Input<String>? tenantId;

  /// Creates a new [LicenseArgs].
  /// [licenseDetails] Describes the properties of a License.
  /// [licenseName] The name of the license.
  /// [licenseType] The type of the license resource.
  /// [location] The geo-location where the resource lives
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [tags] Resource tags.
  /// [tenantId] Describes the tenant id.
  const LicenseArgs({
    this.licenseDetails,
    this.licenseName,
    this.licenseType,
    this.location,
    required this.resourceGroupName,
    this.tags,
    this.tenantId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'licenseDetails': ?pulumi.Input.mapOptionalInputValue<LicenseDetails, Map<String, dynamic>>(licenseDetails, (value) => value.toMap()),
      'licenseName': ?licenseName,
      'licenseType': ?licenseType,
      'location': ?location,
      'resourceGroupName': resourceGroupName,
      'tags': ?tags,
      'tenantId': ?tenantId,
    };
  }

  factory LicenseArgs.fromMap(Map<String, dynamic> map) {
    return LicenseArgs(
      licenseDetails: (() { final guardedValue = map['licenseDetails']; if (guardedValue == null) return null; return pulumi.Input.fromValue(LicenseDetails.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      licenseName: (() { final guardedValue = map['licenseName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      licenseType: (() { final guardedValue = map['licenseType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      tenantId: (() { final guardedValue = map['tenantId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

