// ignore_for_file: unused_element, unnecessary_cast

/// A single iOS device.
class IosDeviceResponse {
  /// The id of the iOS device to be used. Use the TestEnvironmentDiscoveryService to get supported options.
  final String iosModelId;

  /// The id of the iOS major software version to be used. Use the TestEnvironmentDiscoveryService to get supported options.
  final String iosVersionId;

  /// The locale the test device used for testing. Use the TestEnvironmentDiscoveryService to get supported options.
  final String locale;

  /// How the device is oriented during the test. Use the TestEnvironmentDiscoveryService to get supported options.
  final String orientation;

  IosDeviceResponse({
    required this.iosModelId,
    required this.iosVersionId,
    required this.locale,
    required this.orientation,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['iosModelId'] = iosModelId;
    map['iosVersionId'] = iosVersionId;
    map['locale'] = locale;
    map['orientation'] = orientation;
    return map;
  }

  factory IosDeviceResponse.fromMap(Map<String, dynamic> map) {
    return IosDeviceResponse(
      iosModelId: map['iosModelId'] as String,
      iosVersionId: map['iosVersionId'] as String,
      locale: map['locale'] as String,
      orientation: map['orientation'] as String,
    );
  }
}
