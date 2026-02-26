// ignore_for_file: unused_element, unnecessary_cast

import 'android_app_info_response.dart';
import 'android_instrumentation_test_response2.dart';
import 'android_robo_test_response2.dart';
import 'duration_response4.dart';

/// An Android mobile test specification.
class AndroidTestResponse {
  /// Information about the application under test.
  final AndroidAppInfoResponse androidAppInfo;

  /// An Android instrumentation test.
  final AndroidInstrumentationTestResponse2 androidInstrumentationTest;

  /// An Android robo test.
  final AndroidRoboTestResponse2 androidRoboTest;

  /// An Android test loop.
  final Map<String, dynamic> androidTestLoop;

  /// Max time a test is allowed to run before it is automatically cancelled.
  final DurationResponse4 testTimeout;

  AndroidTestResponse({
    required this.androidAppInfo,
    required this.androidInstrumentationTest,
    required this.androidRoboTest,
    required this.androidTestLoop,
    required this.testTimeout,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['androidAppInfo'] = androidAppInfo.toMap();
    map['androidInstrumentationTest'] = androidInstrumentationTest.toMap();
    map['androidRoboTest'] = androidRoboTest.toMap();
    map['androidTestLoop'] = androidTestLoop;
    map['testTimeout'] = testTimeout.toMap();
    return map;
  }

  factory AndroidTestResponse.fromMap(Map<String, dynamic> map) {
    return AndroidTestResponse(
      androidAppInfo: AndroidAppInfoResponse.fromMap(
          (map['androidAppInfo'] as Map).cast<String, dynamic>()),
      androidInstrumentationTest: AndroidInstrumentationTestResponse2.fromMap(
          (map['androidInstrumentationTest'] as Map).cast<String, dynamic>()),
      androidRoboTest: AndroidRoboTestResponse2.fromMap(
          (map['androidRoboTest'] as Map).cast<String, dynamic>()),
      androidTestLoop: (map['androidTestLoop'] as Map).cast<String, dynamic>(),
      testTimeout: DurationResponse4.fromMap(
          (map['testTimeout'] as Map).cast<String, dynamic>()),
    );
  }
}
