// ignore_for_file: unused_element, unnecessary_cast

import 'file_reference_response.dart';

/// An Android App Bundle file format, containing a BundleConfig.pb file, a base module directory, zero or more dynamic feature module directories. See https://developer.android.com/guide/app-bundle/build for guidance on building App Bundles.
class AppBundleResponse {
  /// .aab file representing the app bundle under test.
  final FileReferenceResponse bundleLocation;

  AppBundleResponse({
    required this.bundleLocation,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['bundleLocation'] = bundleLocation.toMap();
    return map;
  }

  factory AppBundleResponse.fromMap(Map<String, dynamic> map) {
    return AppBundleResponse(
      bundleLocation: FileReferenceResponse.fromMap(
          (map['bundleLocation'] as Map).cast<String, dynamic>()),
    );
  }
}
