// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'license_containeranalysis_v1alpha1.dart';
import 'location_containeranalysis_v1alpha1.dart';

/// This represents how a particular software package may be installed on a system.
class Installation {
  /// Licenses that have been declared by the authors of the package.
  final LicenseContaineranalysisV1alpha1? license;

  /// All of the places within the filesystem versions of this package have been found.
  final List<LocationContaineranalysisV1alpha1>? location;

  /// Creates a new [Installation].
  /// [license] Licenses that have been declared by the authors of the package.
  /// [location] All of the places within the filesystem versions of this package have been found.
  Installation({
    this.license,
    this.location,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final licenseValue = license;
    if (licenseValue != null) {
      map['license'] = licenseValue.toMap();
    }
    final locationValue = location;
    if (locationValue != null) {
      map['location'] = pulumi.Input.encodeList<
          LocationContaineranalysisV1alpha1,
          Map<String, dynamic>>(locationValue, (value) => value.toMap());
    }
    return map;
  }

  factory Installation.fromMap(Map<String, dynamic> map) {
    return Installation(
      license: map['license'] == null
          ? null
          : LicenseContaineranalysisV1alpha1.fromMap(
              (map['license'] as Map).cast<String, dynamic>()),
      location: map['location'] == null
          ? null
          : pulumi.Input.decodeList<LocationContaineranalysisV1alpha1>(
              map['location'],
              (value) => LocationContaineranalysisV1alpha1.fromMap(
                  (value as Map).cast<String, dynamic>())),
    );
  }
}
