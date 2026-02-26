// ignore_for_file: unused_element, unnecessary_cast

import 'file_reference_response.dart';

/// An Android package file to install.
class ApkResponse {
  /// The path to an APK to be installed on the device before the test begins.
  final FileReferenceResponse location;

  /// The java package for the APK to be installed. Value is determined by examining the application's manifest.
  final String packageName;

  ApkResponse({
    required this.location,
    required this.packageName,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['location'] = location.toMap();
    map['packageName'] = packageName;
    return map;
  }

  factory ApkResponse.fromMap(Map<String, dynamic> map) {
    return ApkResponse(
      location: FileReferenceResponse.fromMap(
          (map['location'] as Map).cast<String, dynamic>()),
      packageName: map['packageName'] as String,
    );
  }
}
