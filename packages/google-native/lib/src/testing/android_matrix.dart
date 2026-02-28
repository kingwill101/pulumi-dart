// ignore_for_file: unused_element, unnecessary_cast


/// A set of Android device configuration permutations is defined by the the cross-product of the given axes. Internally, the given AndroidMatrix will be expanded into a set of AndroidDevices. Only supported permutations will be instantiated. Invalid permutations (e.g., incompatible models/versions) are ignored.
class AndroidMatrix {
  /// The ids of the set of Android device to be used. Use the TestEnvironmentDiscoveryService to get supported options.
  final List<String> androidModelIds;
  /// The ids of the set of Android OS version to be used. Use the TestEnvironmentDiscoveryService to get supported options.
  final List<String> androidVersionIds;
  /// The set of locales the test device will enable for testing. Use the TestEnvironmentDiscoveryService to get supported options.
  final List<String> locales;
  /// The set of orientations to test with. Use the TestEnvironmentDiscoveryService to get supported options.
  final List<String> orientations;

  /// Creates a new [AndroidMatrix].
  /// [androidModelIds] The ids of the set of Android device to be used. Use the TestEnvironmentDiscoveryService to get supported options.
  /// [androidVersionIds] The ids of the set of Android OS version to be used. Use the TestEnvironmentDiscoveryService to get supported options.
  /// [locales] The set of locales the test device will enable for testing. Use the TestEnvironmentDiscoveryService to get supported options.
  /// [orientations] The set of orientations to test with. Use the TestEnvironmentDiscoveryService to get supported options.
  AndroidMatrix({
    required this.androidModelIds,
    required this.androidVersionIds,
    required this.locales,
    required this.orientations,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'androidModelIds': androidModelIds,
      'androidVersionIds': androidVersionIds,
      'locales': locales,
      'orientations': orientations,
    };
  }

  factory AndroidMatrix.fromMap(Map<String, dynamic> map) {
    return AndroidMatrix(
      androidModelIds: (map['androidModelIds'] as List).cast<String>(),
      androidVersionIds: (map['androidVersionIds'] as List).cast<String>(),
      locales: (map['locales'] as List).cast<String>(),
      orientations: (map['orientations'] as List).cast<String>(),
    );
  }
}

