// ignore_for_file: unused_element, unnecessary_cast

import 'app_bundle.dart';
import 'file_reference.dart';

/// A test of an Android Application with a Test Loop. The intent \ will be implicitly added, since Games is the only user of this api, for the time being.
class AndroidTestLoop {
  /// The APK for the application under test.
  final FileReference? appApk;

  /// A multi-apk app bundle for the application under test.
  final AppBundle? appBundle;

  /// The java package for the application under test. The default is determined by examining the application's manifest.
  final String? appPackageId;

  /// The list of scenario labels that should be run during the test. The scenario labels should map to labels defined in the application's manifest. For example, player_experience and com.google.test.loops.player_experience add all of the loops labeled in the manifest with the com.google.test.loops.player_experience name to the execution. Scenarios can also be specified in the scenarios field.
  final List<String>? scenarioLabels;

  /// The list of scenarios that should be run during the test. The default is all test loops, derived from the application's manifest.
  final List<int>? scenarios;

  /// Creates a new [AndroidTestLoop].
  /// [appApk] The APK for the application under test.
  /// [appBundle] A multi-apk app bundle for the application under test.
  /// [appPackageId] The java package for the application under test. The default is determined by examining the application's manifest.
  /// [scenarioLabels] The list of scenario labels that should be run during the test. The scenario labels should map to labels defined in the application's manifest. For example, player_experience and com.google.test.loops.player_experience add all of the loops labeled in the manifest with the com.google.test.loops.player_experience name to the execution. Scenarios can also be specified in the scenarios field.
  /// [scenarios] The list of scenarios that should be run during the test. The default is all test loops, derived from the application's manifest.
  AndroidTestLoop({
    this.appApk,
    this.appBundle,
    this.appPackageId,
    this.scenarioLabels,
    this.scenarios,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final appApkValue = appApk;
    if (appApkValue != null) {
      map['appApk'] = appApkValue.toMap();
    }
    final appBundleValue = appBundle;
    if (appBundleValue != null) {
      map['appBundle'] = appBundleValue.toMap();
    }
    final appPackageIdValue = appPackageId;
    if (appPackageIdValue != null) {
      map['appPackageId'] = appPackageIdValue;
    }
    final scenarioLabelsValue = scenarioLabels;
    if (scenarioLabelsValue != null) {
      map['scenarioLabels'] = scenarioLabelsValue;
    }
    final scenariosValue = scenarios;
    if (scenariosValue != null) {
      map['scenarios'] = scenariosValue;
    }
    return map;
  }

  factory AndroidTestLoop.fromMap(Map<String, dynamic> map) {
    return AndroidTestLoop(
      appApk: map['appApk'] == null
          ? null
          : FileReference.fromMap(
              (map['appApk'] as Map).cast<String, dynamic>()),
      appBundle: map['appBundle'] == null
          ? null
          : AppBundle.fromMap(
              (map['appBundle'] as Map).cast<String, dynamic>()),
      appPackageId:
          map['appPackageId'] == null ? null : map['appPackageId'] as String,
      scenarioLabels: map['scenarioLabels'] == null
          ? null
          : (map['scenarioLabels'] as List).cast<String>(),
      scenarios: map['scenarios'] == null
          ? null
          : (map['scenarios'] as List).cast<int>(),
    );
  }
}
