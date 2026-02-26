// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import 'license3.dart';
import 'location3.dart';

/// This represents how a particular software package may be installed on a system.
class Installation2 {
  /// Licenses that have been declared by the authors of the package.
  final License3? license;

  /// All of the places within the filesystem versions of this package have been found.
  final List<Location3>? location;

  Installation2({
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
      map['location'] = Input.encodeList<Location3, Map<String, dynamic>>(
          locationValue, (value) => value.toMap());
    }
    return map;
  }

  factory Installation2.fromMap(Map<String, dynamic> map) {
    return Installation2(
      license: map['license'] == null
          ? null
          : License3.fromMap((map['license'] as Map).cast<String, dynamic>()),
      location: map['location'] == null
          ? null
          : Input.decodeList<Location3>(
              map['location'],
              (value) =>
                  Location3.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}
