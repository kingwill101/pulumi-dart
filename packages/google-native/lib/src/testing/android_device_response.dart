// ignore_for_file: unused_element, unnecessary_cast

/// A single Android device.
class AndroidDeviceResponse {
  /// The id of the Android device to be used. Use the TestEnvironmentDiscoveryService to get supported options.
  final String androidModelId;

  /// The id of the Android OS version to be used. Use the TestEnvironmentDiscoveryService to get supported options.
  final String androidVersionId;

  /// The locale the test device used for testing. Use the TestEnvironmentDiscoveryService to get supported options.
  final String locale;

  /// How the device is oriented during the test. Use the TestEnvironmentDiscoveryService to get supported options.
  final String orientation;

  /// Creates a new [AndroidDeviceResponse].
  /// [androidModelId] The id of the Android device to be used. Use the TestEnvironmentDiscoveryService to get supported options.
  /// [androidVersionId] The id of the Android OS version to be used. Use the TestEnvironmentDiscoveryService to get supported options.
  /// [locale] The locale the test device used for testing. Use the TestEnvironmentDiscoveryService to get supported options.
  /// [orientation] How the device is oriented during the test. Use the TestEnvironmentDiscoveryService to get supported options.
  AndroidDeviceResponse({
    required this.androidModelId,
    required this.androidVersionId,
    required this.locale,
    required this.orientation,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'androidModelId': androidModelId,
      'androidVersionId': androidVersionId,
      'locale': locale,
      'orientation': orientation,
    };
  }

  factory AndroidDeviceResponse.fromMap(Map<String, dynamic> map) {
    return AndroidDeviceResponse(
      androidModelId: map['androidModelId'] as String,
      androidVersionId: map['androidVersionId'] as String,
      locale: map['locale'] as String,
      orientation: map['orientation'] as String,
    );
  }
}
