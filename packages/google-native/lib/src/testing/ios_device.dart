// ignore_for_file: unused_element, unnecessary_cast

/// A single iOS device.
class IosDevice {
  /// The id of the iOS device to be used. Use the TestEnvironmentDiscoveryService to get supported options.
  final String iosModelId;

  /// The id of the iOS major software version to be used. Use the TestEnvironmentDiscoveryService to get supported options.
  final String iosVersionId;

  /// The locale the test device used for testing. Use the TestEnvironmentDiscoveryService to get supported options.
  final String locale;

  /// How the device is oriented during the test. Use the TestEnvironmentDiscoveryService to get supported options.
  final String orientation;

  /// Creates a new [IosDevice].
  /// [iosModelId] The id of the iOS device to be used. Use the TestEnvironmentDiscoveryService to get supported options.
  /// [iosVersionId] The id of the iOS major software version to be used. Use the TestEnvironmentDiscoveryService to get supported options.
  /// [locale] The locale the test device used for testing. Use the TestEnvironmentDiscoveryService to get supported options.
  /// [orientation] How the device is oriented during the test. Use the TestEnvironmentDiscoveryService to get supported options.
  IosDevice({
    required this.iosModelId,
    required this.iosVersionId,
    required this.locale,
    required this.orientation,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'iosModelId': iosModelId,
      'iosVersionId': iosVersionId,
      'locale': locale,
      'orientation': orientation,
    };
  }

  factory IosDevice.fromMap(Map<String, dynamic> map) {
    return IosDevice(
      iosModelId: map['iosModelId'] as String,
      iosVersionId: map['iosVersionId'] as String,
      locale: map['locale'] as String,
      orientation: map['orientation'] as String,
    );
  }
}
