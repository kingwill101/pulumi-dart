// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' hide Config;
import 'license2.dart';
import 'location2.dart';

/// This represents how a particular software package may be installed on a system.
class Installation {
  /// Licenses that have been declared by the authors of the package.
  final License2? license;

  /// All of the places within the filesystem versions of this package have been found.
  final List<Location2>? location;

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
      map['location'] = Input.encodeList<Location2, Map<String, dynamic>>(
          locationValue, (value) => value.toMap());
    }
    return map;
  }

  factory Installation.fromMap(Map<String, dynamic> map) {
    return Installation(
      license: map['license'] == null
          ? null
          : License2.fromMap((map['license'] as Map).cast<String, dynamic>()),
      location: map['location'] == null
          ? null
          : Input.decodeList<Location2>(
              map['location'],
              (value) =>
                  Location2.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}
