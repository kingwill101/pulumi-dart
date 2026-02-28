// ignore_for_file: unused_element, unnecessary_cast

import 'file_reference.dart';

/// A test of an iOS application that implements one or more game loop scenarios. This test type accepts an archived application (.ipa file) and a list of integer scenarios that will be executed on the app sequentially.
class IosTestLoop {
  /// The .ipa of the application to test.
  final FileReference appIpa;

  /// The list of scenarios that should be run during the test. Defaults to the single scenario 0 if unspecified.
  final List<int>? scenarios;

  /// Creates a new [IosTestLoop].
  /// [appIpa] The .ipa of the application to test.
  /// [scenarios] The list of scenarios that should be run during the test. Defaults to the single scenario 0 if unspecified.
  IosTestLoop({
    required this.appIpa,
    this.scenarios,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['appIpa'] = appIpa.toMap();
    final scenariosValue = scenarios;
    if (scenariosValue != null) {
      map['scenarios'] = scenariosValue;
    }
    return map;
  }

  factory IosTestLoop.fromMap(Map<String, dynamic> map) {
    return IosTestLoop(
      appIpa:
          FileReference.fromMap((map['appIpa'] as Map).cast<String, dynamic>()),
      scenarios: map['scenarios'] == null
          ? null
          : (map['scenarios'] as List).cast<int>(),
    );
  }
}
