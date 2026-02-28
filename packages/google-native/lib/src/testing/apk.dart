// ignore_for_file: unused_element, unnecessary_cast

import 'file_reference.dart';

/// An Android package file to install.
class Apk {
  /// The path to an APK to be installed on the device before the test begins.
  final FileReference? location;
  /// The java package for the APK to be installed. Value is determined by examining the application's manifest.
  final String? packageName;

  /// Creates a new [Apk].
  /// [location] The path to an APK to be installed on the device before the test begins.
  /// [packageName] The java package for the APK to be installed. Value is determined by examining the application's manifest.
  Apk({
    this.location,
    this.packageName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'location': ?location == null ? null : location!.toMap(),
      'packageName': ?packageName,
    };
  }

  factory Apk.fromMap(Map<String, dynamic> map) {
    return Apk(
      location: map['location'] == null ? null : FileReference.fromMap((map['location'] as Map).cast<String, dynamic>()),
      packageName: map['packageName'] == null ? null : map['packageName'] as String,
    );
  }
}

