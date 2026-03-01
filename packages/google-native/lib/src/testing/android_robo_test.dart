// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'android_robo_test_robo_mode.dart';
import 'app_bundle.dart';
import 'file_reference.dart';
import 'robo_directive.dart';
import 'robo_starting_intent.dart';

/// A test of an android application that explores the application on a virtual or physical Android Device, finding culprits and crashes as it goes.
class AndroidRoboTest {
  /// The APK for the application under test.
  final FileReference? appApk;

  /// A multi-apk app bundle for the application under test.
  final AppBundle? appBundle;

  /// The initial activity that should be used to start the app.
  final String? appInitialActivity;

  /// The java package for the application under test. The default value is determined by examining the application's manifest.
  final String? appPackageId;

  /// The max depth of the traversal stack Robo can explore. Needs to be at least 2 to make Robo explore the app beyond the first activity. Default is 50.
  final int? maxDepth;

  /// The max number of steps Robo can execute. Default is no limit.
  final int? maxSteps;

  /// A set of directives Robo should apply during the crawl. This allows users to customize the crawl. For example, the username and password for a test account can be provided.
  final List<RoboDirective>? roboDirectives;

  /// The mode in which Robo should run. Most clients should allow the server to populate this field automatically.
  final AndroidRoboTestRoboMode? roboMode;

  /// A JSON file with a sequence of actions Robo should perform as a prologue for the crawl.
  final FileReference? roboScript;

  /// The intents used to launch the app for the crawl. If none are provided, then the main launcher activity is launched. If some are provided, then only those provided are launched (the main launcher activity must be provided explicitly).
  final List<RoboStartingIntent>? startingIntents;

  /// Creates a new [AndroidRoboTest].
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
  AndroidRoboTest({
    this.appApk,
    this.appBundle,
    this.appInitialActivity,
    this.appPackageId,
    this.maxDepth,
    this.maxSteps,
    this.roboDirectives,
    this.roboMode,
    this.roboScript,
    this.startingIntents,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'appApk': ?appApk == null ? null : appApk!.toMap(),
      'appBundle': ?appBundle == null ? null : appBundle!.toMap(),
      'appInitialActivity': ?appInitialActivity,
      'appPackageId': ?appPackageId,
      'maxDepth': ?maxDepth,
      'maxSteps': ?maxSteps,
      'roboDirectives': ?roboDirectives == null
          ? null
          : pulumi.Input.encodeList<RoboDirective, Map<String, dynamic>>(
              roboDirectives!,
              (value) => value.toMap(),
            ),
      'roboMode': ?roboMode == null ? null : roboMode!.value,
      'roboScript': ?roboScript == null ? null : roboScript!.toMap(),
      'startingIntents': ?startingIntents == null
          ? null
          : pulumi.Input.encodeList<RoboStartingIntent, Map<String, dynamic>>(
              startingIntents!,
              (value) => value.toMap(),
            ),
    };
  }

  factory AndroidRoboTest.fromMap(Map<String, dynamic> map) {
    return AndroidRoboTest(
      appApk: map['appApk'] == null
          ? null
          : FileReference.fromMap(
              (map['appApk'] as Map).cast<String, dynamic>(),
            ),
      appBundle: map['appBundle'] == null
          ? null
          : AppBundle.fromMap(
              (map['appBundle'] as Map).cast<String, dynamic>(),
            ),
      appInitialActivity: map['appInitialActivity'] == null
          ? null
          : map['appInitialActivity'] as String,
      appPackageId: map['appPackageId'] == null
          ? null
          : map['appPackageId'] as String,
      maxDepth: map['maxDepth'] == null ? null : map['maxDepth'] as int,
      maxSteps: map['maxSteps'] == null ? null : map['maxSteps'] as int,
      roboDirectives: map['roboDirectives'] == null
          ? null
          : pulumi.Input.decodeList<RoboDirective>(
              map['roboDirectives'],
              (value) =>
                  RoboDirective.fromMap((value as Map).cast<String, dynamic>()),
            ),
      roboMode: map['roboMode'] == null
          ? null
          : AndroidRoboTestRoboMode.fromValue(map['roboMode'] as String),
      roboScript: map['roboScript'] == null
          ? null
          : FileReference.fromMap(
              (map['roboScript'] as Map).cast<String, dynamic>(),
            ),
      startingIntents: map['startingIntents'] == null
          ? null
          : pulumi.Input.decodeList<RoboStartingIntent>(
              map['startingIntents'],
              (value) => RoboStartingIntent.fromMap(
                (value as Map).cast<String, dynamic>(),
              ),
            ),
    );
  }
}
