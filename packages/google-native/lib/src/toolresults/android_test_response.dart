// ignore_for_file: unused_element, unnecessary_cast

import 'android_app_info_response.dart';
import 'android_instrumentation_test_response.dart';
import 'android_robo_test_response.dart';
import 'duration_response.dart';

/// An Android mobile test specification.
class AndroidTestResponse {
  /// Information about the application under test.
  final AndroidAppInfoResponse androidAppInfo;
  /// An Android instrumentation test.
  final AndroidInstrumentationTestResponse androidInstrumentationTest;
  /// An Android robo test.
  final AndroidRoboTestResponse androidRoboTest;
  /// An Android test loop.
  final Map<String, dynamic> androidTestLoop;
  /// Max time a test is allowed to run before it is automatically cancelled.
  final DurationResponse testTimeout;

  /// Creates a new [AndroidTestResponse].
  /// [androidAppInfo] Information about the application under test.
  /// [androidInstrumentationTest] An Android instrumentation test.
  /// [androidRoboTest] An Android robo test.
  /// [androidTestLoop] An Android test loop.
  /// [testTimeout] Max time a test is allowed to run before it is automatically cancelled.
  AndroidTestResponse({
    required this.androidAppInfo,
    required this.androidInstrumentationTest,
    required this.androidRoboTest,
    required this.androidTestLoop,
    required this.testTimeout,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'androidAppInfo': androidAppInfo.toMap(),
      'androidInstrumentationTest': androidInstrumentationTest.toMap(),
      'androidRoboTest': androidRoboTest.toMap(),
      'androidTestLoop': androidTestLoop,
      'testTimeout': testTimeout.toMap(),
    };
  }

  factory AndroidTestResponse.fromMap(Map<String, dynamic> map) {
    return AndroidTestResponse(
      androidAppInfo: AndroidAppInfoResponse.fromMap((map['androidAppInfo'] as Map).cast<String, dynamic>()),
      androidInstrumentationTest: AndroidInstrumentationTestResponse.fromMap((map['androidInstrumentationTest'] as Map).cast<String, dynamic>()),
      androidRoboTest: AndroidRoboTestResponse.fromMap((map['androidRoboTest'] as Map).cast<String, dynamic>()),
      androidTestLoop: (map['androidTestLoop'] as Map).cast<String, dynamic>(),
      testTimeout: DurationResponse.fromMap((map['testTimeout'] as Map).cast<String, dynamic>()),
    );
  }
}

