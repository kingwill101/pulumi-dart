// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'app_bundle_response.dart';
import 'file_reference_response.dart';
import 'robo_directive_response.dart';
import 'robo_starting_intent_response.dart';

/// A test of an android application that explores the application on a virtual or physical Android Device, finding culprits and crashes as it goes.
class AndroidRoboTestResponse {
  /// The APK for the application under test.
  final FileReferenceResponse appApk;

  /// A multi-apk app bundle for the application under test.
  final AppBundleResponse appBundle;

  /// The initial activity that should be used to start the app.
  final String appInitialActivity;

  /// The java package for the application under test. The default value is determined by examining the application's manifest.
  final String appPackageId;

  /// The max depth of the traversal stack Robo can explore. Needs to be at least 2 to make Robo explore the app beyond the first activity. Default is 50.
  final int maxDepth;

  /// The max number of steps Robo can execute. Default is no limit.
  final int maxSteps;

  /// A set of directives Robo should apply during the crawl. This allows users to customize the crawl. For example, the username and password for a test account can be provided.
  final List<RoboDirectiveResponse> roboDirectives;

  /// The mode in which Robo should run. Most clients should allow the server to populate this field automatically.
  final String roboMode;

  /// A JSON file with a sequence of actions Robo should perform as a prologue for the crawl.
  final FileReferenceResponse roboScript;

  /// The intents used to launch the app for the crawl. If none are provided, then the main launcher activity is launched. If some are provided, then only those provided are launched (the main launcher activity must be provided explicitly).
  final List<RoboStartingIntentResponse> startingIntents;

  /// Creates a new [AndroidRoboTestResponse].
  /// [appApk] The APK for the application under test.
  /// [appBundle] A multi-apk app bundle for the application under test.
  /// [appInitialActivity] The initial activity that should be used to start the app.
  /// [appPackageId] The java package for the application under test. The default value is determined by examining the application's manifest.
  /// [maxDepth] The max depth of the traversal stack Robo can explore. Needs to be at least 2 to make Robo explore the app beyond the first activity. Default is 50.
  /// [maxSteps] The max number of steps Robo can execute. Default is no limit.
  /// [roboDirectives] A set of directives Robo should apply during the crawl. This allows users to customize the crawl. For example, the username and password for a test account can be provided.
  /// [roboMode] The mode in which Robo should run. Most clients should allow the server to populate this field automatically.
  /// [roboScript] A JSON file with a sequence of actions Robo should perform as a prologue for the crawl.
  /// [startingIntents] The intents used to launch the app for the crawl. If none are provided, then the main launcher activity is launched. If some are provided, then only those provided are launched (the main launcher activity must be provided explicitly).
  AndroidRoboTestResponse({
    required this.appApk,
    required this.appBundle,
    required this.appInitialActivity,
    required this.appPackageId,
    required this.maxDepth,
    required this.maxSteps,
    required this.roboDirectives,
    required this.roboMode,
    required this.roboScript,
    required this.startingIntents,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['appApk'] = appApk.toMap();
    map['appBundle'] = appBundle.toMap();
    map['appInitialActivity'] = appInitialActivity;
    map['appPackageId'] = appPackageId;
    map['maxDepth'] = maxDepth;
    map['maxSteps'] = maxSteps;
    map['roboDirectives'] =
        pulumi.Input.encodeList<RoboDirectiveResponse, Map<String, dynamic>>(
            roboDirectives, (value) => value.toMap());
    map['roboMode'] = roboMode;
    map['roboScript'] = roboScript.toMap();
    map['startingIntents'] = pulumi.Input.encodeList<RoboStartingIntentResponse,
        Map<String, dynamic>>(startingIntents, (value) => value.toMap());
    return map;
  }

  factory AndroidRoboTestResponse.fromMap(Map<String, dynamic> map) {
    return AndroidRoboTestResponse(
      appApk: FileReferenceResponse.fromMap(
          (map['appApk'] as Map).cast<String, dynamic>()),
      appBundle: AppBundleResponse.fromMap(
          (map['appBundle'] as Map).cast<String, dynamic>()),
      appInitialActivity: map['appInitialActivity'] as String,
      appPackageId: map['appPackageId'] as String,
      maxDepth: map['maxDepth'] as int,
      maxSteps: map['maxSteps'] as int,
      roboDirectives: pulumi.Input.decodeList<RoboDirectiveResponse>(
          map['roboDirectives'],
          (value) => RoboDirectiveResponse.fromMap(
              (value as Map).cast<String, dynamic>())),
      roboMode: map['roboMode'] as String,
      roboScript: FileReferenceResponse.fromMap(
          (map['roboScript'] as Map).cast<String, dynamic>()),
      startingIntents: pulumi.Input.decodeList<RoboStartingIntentResponse>(
          map['startingIntents'],
          (value) => RoboStartingIntentResponse.fromMap(
              (value as Map).cast<String, dynamic>())),
    );
  }
}
