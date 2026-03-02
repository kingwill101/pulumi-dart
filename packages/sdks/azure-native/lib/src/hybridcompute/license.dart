// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'license_details.dart';

/// Describes a license in a hybrid machine.
class License {
  /// Describes the properties of a License.
  final pulumi.Input<LicenseDetails>? licenseDetails;
  /// The type of the license resource.
  final pulumi.Input<String>? licenseType;
  /// The geo-location where the resource lives
  final pulumi.Input<String> location;
  /// Resource tags.
  final pulumi.Input<Map<String, String>>? tags;
  /// Describes the tenant id.
  final pulumi.Input<String>? tenantId;

  /// Creates a new [License].
  /// [licenseDetails] Describes the properties of a License.
  /// [licenseType] The type of the license resource.
  /// [location] The geo-location where the resource lives
  /// [tags] Resource tags.
  /// [tenantId] Describes the tenant id.
  License({
    this.licenseDetails,
    this.licenseType,
    required this.location,
    this.tags,
    this.tenantId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'licenseDetails': ?pulumi.Input.mapOptionalInputValue<LicenseDetails, Map<String, dynamic>>(licenseDetails, (value) => value.toMap()),
      'licenseType': ?licenseType,
      'location': location,
      'tags': ?tags,
      'tenantId': ?tenantId,
    };
  }

  factory License.fromMap(Map<String, dynamic> map) {
    return License(
      licenseDetails: map['licenseDetails'] == null ? null : (LicenseDetails.fromMap((map['licenseDetails']! as Map).cast<String, dynamic>())).input(),
      licenseType: map['licenseType'] == null ? null : (map['licenseType']! as String).input(),
      location: (map['location'] as String).input(),
      tags: map['tags'] == null ? null : ((map['tags']! as Map).cast<String, String>()).input(),
      tenantId: map['tenantId'] == null ? null : (map['tenantId']! as String).input(),
    );
  }
}

