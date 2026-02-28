// ignore_for_file: unused_element, unnecessary_cast

import 'file_reference_response.dart';

/// A test of an iOS application that implements one or more game loop scenarios. This test type accepts an archived application (.ipa file) and a list of integer scenarios that will be executed on the app sequentially.
class IosTestLoopResponse {
  /// The bundle id for the application under test.
  final String appBundleId;

  /// The .ipa of the application to test.
  final FileReferenceResponse appIpa;

  /// The list of scenarios that should be run during the test. Defaults to the single scenario 0 if unspecified.
  final List<int> scenarios;

  /// Creates a new [IosTestLoopResponse].
  /// [appBundleId] The bundle id for the application under test.
  /// [appIpa] The .ipa of the application to test.
  /// [scenarios] The list of scenarios that should be run during the test. Defaults to the single scenario 0 if unspecified.
  IosTestLoopResponse({
    required this.appBundleId,
    required this.appIpa,
    required this.scenarios,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['appBundleId'] = appBundleId;
    map['appIpa'] = appIpa.toMap();
    map['scenarios'] = scenarios;
    return map;
  }

  factory IosTestLoopResponse.fromMap(Map<String, dynamic> map) {
    return IosTestLoopResponse(
      appBundleId: map['appBundleId'] as String,
      appIpa: FileReferenceResponse.fromMap(
          (map['appIpa'] as Map).cast<String, dynamic>()),
      scenarios: (map['scenarios'] as List).cast<int>(),
    );
  }
}
