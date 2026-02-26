// ignore_for_file: unused_element, unnecessary_cast

/// A test of an iOS application that uses the XCTest framework.
class IosXcTestResponse2 {
  /// Bundle ID of the app.
  final String bundleId;

  /// Xcode version that the test was run with.
  final String xcodeVersion;

  IosXcTestResponse2({
    required this.bundleId,
    required this.xcodeVersion,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['bundleId'] = bundleId;
    map['xcodeVersion'] = xcodeVersion;
    return map;
  }

  factory IosXcTestResponse2.fromMap(Map<String, dynamic> map) {
    return IosXcTestResponse2(
      bundleId: map['bundleId'] as String,
      xcodeVersion: map['xcodeVersion'] as String,
    );
  }
}
