// ignore_for_file: unused_element, unnecessary_cast

import 'android_app_info.dart';
import 'android_instrumentation_test2.dart';
import 'android_robo_test2.dart';
import 'duration4.dart';

/// An Android mobile test specification.
class AndroidTest {
  /// Information about the application under test.
  final AndroidAppInfo? androidAppInfo;

  /// An Android instrumentation test.
  final AndroidInstrumentationTest2? androidInstrumentationTest;

  /// An Android robo test.
  final AndroidRoboTest2? androidRoboTest;

  /// An Android test loop.
  final Map<String, dynamic>? androidTestLoop;

  /// Max time a test is allowed to run before it is automatically cancelled.
  final Duration4? testTimeout;

  AndroidTest({
    this.androidAppInfo,
    this.androidInstrumentationTest,
    this.androidRoboTest,
    this.androidTestLoop,
    this.testTimeout,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final androidAppInfoValue = androidAppInfo;
    if (androidAppInfoValue != null) {
      map['androidAppInfo'] = androidAppInfoValue.toMap();
    }
    final androidInstrumentationTestValue = androidInstrumentationTest;
    if (androidInstrumentationTestValue != null) {
      map['androidInstrumentationTest'] =
          androidInstrumentationTestValue.toMap();
    }
    final androidRoboTestValue = androidRoboTest;
    if (androidRoboTestValue != null) {
      map['androidRoboTest'] = androidRoboTestValue.toMap();
    }
    final androidTestLoopValue = androidTestLoop;
    if (androidTestLoopValue != null) {
      map['androidTestLoop'] = androidTestLoopValue;
    }
    final testTimeoutValue = testTimeout;
    if (testTimeoutValue != null) {
      map['testTimeout'] = testTimeoutValue.toMap();
    }
    return map;
  }

  factory AndroidTest.fromMap(Map<String, dynamic> map) {
    return AndroidTest(
      androidAppInfo: map['androidAppInfo'] == null
          ? null
          : AndroidAppInfo.fromMap(
              (map['androidAppInfo'] as Map).cast<String, dynamic>()),
      androidInstrumentationTest: map['androidInstrumentationTest'] == null
          ? null
          : AndroidInstrumentationTest2.fromMap(
              (map['androidInstrumentationTest'] as Map)
                  .cast<String, dynamic>()),
      androidRoboTest: map['androidRoboTest'] == null
          ? null
          : AndroidRoboTest2.fromMap(
              (map['androidRoboTest'] as Map).cast<String, dynamic>()),
      androidTestLoop: map['androidTestLoop'] == null
          ? null
          : (map['androidTestLoop'] as Map).cast<String, dynamic>(),
      testTimeout: map['testTimeout'] == null
          ? null
          : Duration4.fromMap(
              (map['testTimeout'] as Map).cast<String, dynamic>()),
    );
  }
}
