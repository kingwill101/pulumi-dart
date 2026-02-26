// ignore_for_file: unused_element, unnecessary_cast

import 'file_reference.dart';

/// An Android package file to install.
class Apk {
  /// The path to an APK to be installed on the device before the test begins.
  final FileReference? location;

  /// The java package for the APK to be installed. Value is determined by examining the application's manifest.
  final String? packageName;

  Apk({
    this.location,
    this.packageName,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final locationValue = location;
    if (locationValue != null) {
      map['location'] = locationValue.toMap();
    }
    final packageNameValue = packageName;
    if (packageNameValue != null) {
      map['packageName'] = packageNameValue;
    }
    return map;
  }

  factory Apk.fromMap(Map<String, dynamic> map) {
    return Apk(
      location: map['location'] == null
          ? null
          : FileReference.fromMap(
              (map['location'] as Map).cast<String, dynamic>()),
      packageName:
          map['packageName'] == null ? null : map['packageName'] as String,
    );
  }
}
