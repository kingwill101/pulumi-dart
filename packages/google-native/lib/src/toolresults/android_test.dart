// ignore_for_file: unused_element, unnecessary_cast

import 'android_app_info.dart';
import 'android_instrumentation_test.dart';
import 'android_robo_test.dart';
import 'duration.dart';

/// An Android mobile test specification.
class AndroidTest {
  /// Information about the application under test.
  final AndroidAppInfo? androidAppInfo;

  /// An Android instrumentation test.
  final AndroidInstrumentationTest? androidInstrumentationTest;

  /// An Android robo test.
  final AndroidRoboTest? androidRoboTest;

  /// An Android test loop.
  final Map<String, dynamic>? androidTestLoop;

  /// Max time a test is allowed to run before it is automatically cancelled.
  final Duration? testTimeout;

  /// Creates a new [AndroidTest].
  /// [androidAppInfo] Information about the application under test.
  /// [androidInstrumentationTest] An Android instrumentation test.
  /// [androidRoboTest] An Android robo test.
  /// [androidTestLoop] An Android test loop.
  /// [testTimeout] Max time a test is allowed to run before it is automatically cancelled.
  AndroidTest({
    this.androidAppInfo,
    this.androidInstrumentationTest,
    this.androidRoboTest,
    this.androidTestLoop,
    this.testTimeout,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'androidAppInfo': ?androidAppInfo == null
          ? null
          : androidAppInfo!.toMap(),
      'androidInstrumentationTest': ?androidInstrumentationTest == null
          ? null
          : androidInstrumentationTest!.toMap(),
      'androidRoboTest': ?androidRoboTest == null
          ? null
          : androidRoboTest!.toMap(),
      'androidTestLoop': ?androidTestLoop,
      'testTimeout': ?testTimeout == null ? null : testTimeout!.toMap(),
    };
  }

  factory AndroidTest.fromMap(Map<String, dynamic> map) {
    return AndroidTest(
      androidAppInfo: map['androidAppInfo'] == null
          ? null
          : AndroidAppInfo.fromMap(
              (map['androidAppInfo'] as Map).cast<String, dynamic>(),
            ),
      androidInstrumentationTest: map['androidInstrumentationTest'] == null
          ? null
          : AndroidInstrumentationTest.fromMap(
              (map['androidInstrumentationTest'] as Map)
                  .cast<String, dynamic>(),
            ),
      androidRoboTest: map['androidRoboTest'] == null
          ? null
          : AndroidRoboTest.fromMap(
              (map['androidRoboTest'] as Map).cast<String, dynamic>(),
            ),
      androidTestLoop: map['androidTestLoop'] == null
          ? null
          : (map['androidTestLoop'] as Map).cast<String, dynamic>(),
      testTimeout: map['testTimeout'] == null
          ? null
          : Duration.fromMap(
              (map['testTimeout'] as Map).cast<String, dynamic>(),
            ),
    );
  }
}
