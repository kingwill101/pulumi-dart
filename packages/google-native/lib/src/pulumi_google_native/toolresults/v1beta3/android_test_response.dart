// ignore_for_file: unused_element, unnecessary_cast

import 'android_app_info_response.dart';
import 'android_instrumentation_test_response_toolresults_v1beta3.dart';
import 'android_robo_test_response_toolresults_v1beta3.dart';
import 'duration_response_toolresults_v1beta3.dart';

/// An Android mobile test specification.
class AndroidTestResponse {
  /// Information about the application under test.
  final AndroidAppInfoResponse androidAppInfo;

  /// An Android instrumentation test.
  final AndroidInstrumentationTestResponseToolresultsV1beta3
      androidInstrumentationTest;

  /// An Android robo test.
  final AndroidRoboTestResponseToolresultsV1beta3 androidRoboTest;

  /// An Android test loop.
  final Map<String, dynamic> androidTestLoop;

  /// Max time a test is allowed to run before it is automatically cancelled.
  final DurationResponseToolresultsV1beta3 testTimeout;

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
      androidInstrumentationTest:
          AndroidInstrumentationTestResponseToolresultsV1beta3.fromMap(
              (map['androidInstrumentationTest'] as Map)
                  .cast<String, dynamic>()),
      androidRoboTest: AndroidRoboTestResponseToolresultsV1beta3.fromMap(
          (map['androidRoboTest'] as Map).cast<String, dynamic>()),
      androidTestLoop: (map['androidTestLoop'] as Map).cast<String, dynamic>(),
      testTimeout: DurationResponseToolresultsV1beta3.fromMap(
          (map['testTimeout'] as Map).cast<String, dynamic>()),
    );
  }
}
