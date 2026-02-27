// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' hide Config;
import 'license.dart';
import 'location.dart';

/// Details on how a particular software package was installed on a system.
class PackageOccurrence {
  /// Licenses that have been declared by the authors of the package.
  final License? license;

  /// All of the places within the filesystem versions of this package have been found.
  final List<Location>? location;

  PackageOccurrence({
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
      map['location'] = Input.encodeList<Location, Map<String, dynamic>>(
          locationValue, (value) => value.toMap());
    }
    return map;
  }

  factory PackageOccurrence.fromMap(Map<String, dynamic> map) {
    return PackageOccurrence(
      license: map['license'] == null
          ? null
          : License.fromMap((map['license'] as Map).cast<String, dynamic>()),
      location: map['location'] == null
          ? null
          : Input.decodeList<Location>(
              map['location'],
              (value) =>
                  Location.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}
