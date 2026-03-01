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
  LicenseArgs({
    pulumi.Output<LicenseDetails>? licenseDetails,
    pulumi.Output<String>? licenseName,
    pulumi.Output<String>? licenseType,
    pulumi.Output<String>? location,
    required pulumi.Output<String> resourceGroupName,
    pulumi.Output<Map<String, String>>? tags,
    pulumi.Output<String>? tenantId,
  }) :
      licenseDetails = pulumi.Input.asOptionalInput<LicenseDetails>(licenseDetails),
      licenseName = pulumi.Input.asOptionalInput<String>(licenseName),
      licenseType = pulumi.Input.asOptionalInput<String>(licenseType),
      location = pulumi.Input.asOptionalInput<String>(location),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      tenantId = pulumi.Input.asOptionalInput<String>(tenantId);

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
      licenseDetails: map['licenseDetails'] == null ? null : pulumi.Output.create<LicenseDetails>(LicenseDetails.fromMap((map['licenseDetails'] as Map).cast<String, dynamic>())),
      licenseName: map['licenseName'] == null ? null : pulumi.Output.create<String>(map['licenseName'] as String),
      licenseType: map['licenseType'] == null ? null : pulumi.Output.create<String>(map['licenseType'] as String),
      location: map['location'] == null ? null : pulumi.Output.create<String>(map['location'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
      tenantId: map['tenantId'] == null ? null : pulumi.Output.create<String>(map['tenantId'] as String),
    );
  }
}

