// ignore_for_file: unused_element, unnecessary_cast

import 'license_details.dart';

/// Describes a license in a hybrid machine.
class License {
  /// Describes the properties of a License.
  final LicenseDetails? licenseDetails;
  /// The type of the license resource.
  final String? licenseType;
  /// The geo-location where the resource lives
  final String location;
  /// Resource tags.
  final Map<String, String>? tags;
  /// Describes the tenant id.
  final String? tenantId;

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
      'licenseDetails': ?licenseDetails == null ? null : licenseDetails!.toMap(),
      'licenseType': ?licenseType,
      'location': location,
      'tags': ?tags,
      'tenantId': ?tenantId,
    };
  }

  factory License.fromMap(Map<String, dynamic> map) {
    return License(
      licenseDetails: map['licenseDetails'] == null ? null : LicenseDetails.fromMap((map['licenseDetails'] as Map).cast<String, dynamic>()),
      licenseType: map['licenseType'] == null ? null : map['licenseType'] as String,
      location: map['location'] as String,
      tags: map['tags'] == null ? null : (map['tags'] as Map).cast<String, String>(),
      tenantId: map['tenantId'] == null ? null : map['tenantId'] as String,
    );
  }
}

