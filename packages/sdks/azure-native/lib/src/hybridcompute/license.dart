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
  const License({
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
      licenseDetails: (() { final guardedValue = map['licenseDetails']; if (guardedValue == null) return null; return pulumi.Input.fromValue(LicenseDetails.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      licenseType: (() { final guardedValue = map['licenseType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      location: pulumi.Input.fromValue(map['location'] as String),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      tenantId: (() { final guardedValue = map['tenantId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
