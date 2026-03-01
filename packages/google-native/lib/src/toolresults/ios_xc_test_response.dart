// ignore_for_file: unused_element, unnecessary_cast

/// A test of an iOS application that uses the XCTest framework.
class IosXcTestResponse {
  /// Bundle ID of the app.
  final String bundleId;

  /// Xcode version that the test was run with.
  final String xcodeVersion;

  /// Creates a new [IosXcTestResponse].
  /// [bundleId] Bundle ID of the app.
  /// [xcodeVersion] Xcode version that the test was run with.
  IosXcTestResponse({required this.bundleId, required this.xcodeVersion});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'bundleId': bundleId,
      'xcodeVersion': xcodeVersion,
    };
  }

  factory IosXcTestResponse.fromMap(Map<String, dynamic> map) {
    return IosXcTestResponse(
      bundleId: map['bundleId'] as String,
      xcodeVersion: map['xcodeVersion'] as String,
    );
  }
}
