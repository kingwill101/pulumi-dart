// ignore_for_file: unused_element, unnecessary_cast

import 'android_instrumentation_test_response.dart';
import 'android_robo_test_response.dart';
import 'android_test_loop_response.dart';
import 'ios_robo_test_response.dart';
import 'ios_test_loop_response.dart';
import 'ios_test_setup_response.dart';
import 'ios_xc_test_response.dart';
import 'test_setup_response.dart';

/// A description of how to run the test.
class TestSpecificationResponse {
  /// An Android instrumentation test.
  final AndroidInstrumentationTestResponse androidInstrumentationTest;
  /// An Android robo test.
  final AndroidRoboTestResponse androidRoboTest;
  /// An Android Application with a Test Loop.
  final AndroidTestLoopResponse androidTestLoop;
  /// Disables performance metrics recording. May reduce test latency.
  final bool disablePerformanceMetrics;
  /// Disables video recording. May reduce test latency.
  final bool disableVideoRecording;
  /// An iOS Robo test.
  final IosRoboTestResponse iosRoboTest;
  /// An iOS application with a test loop.
  final IosTestLoopResponse iosTestLoop;
  /// Test setup requirements for iOS.
  final IosTestSetupResponse iosTestSetup;
  /// An iOS XCTest, via an .xctestrun file.
  final IosXcTestResponse iosXcTest;
  /// Test setup requirements for Android e.g. files to install, bootstrap scripts.
  final TestSetupResponse testSetup;
  /// Max time a test execution is allowed to run before it is automatically cancelled. The default value is 5 min.
  final String testTimeout;

  /// Creates a new [TestSpecificationResponse].
  /// [androidInstrumentationTest] An Android instrumentation test.
  /// [androidRoboTest] An Android robo test.
  /// [androidTestLoop] An Android Application with a Test Loop.
  /// [disablePerformanceMetrics] Disables performance metrics recording. May reduce test latency.
  /// [disableVideoRecording] Disables video recording. May reduce test latency.
  /// [iosRoboTest] An iOS Robo test.
  /// [iosTestLoop] An iOS application with a test loop.
  /// [iosTestSetup] Test setup requirements for iOS.
  /// [iosXcTest] An iOS XCTest, via an .xctestrun file.
  /// [testSetup] Test setup requirements for Android e.g. files to install, bootstrap scripts.
  /// [testTimeout] Max time a test execution is allowed to run before it is automatically cancelled. The default value is 5 min.
  TestSpecificationResponse({
    required this.androidInstrumentationTest,
    required this.androidRoboTest,
    required this.androidTestLoop,
    required this.disablePerformanceMetrics,
    required this.disableVideoRecording,
    required this.iosRoboTest,
    required this.iosTestLoop,
    required this.iosTestSetup,
    required this.iosXcTest,
    required this.testSetup,
    required this.testTimeout,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'androidInstrumentationTest': androidInstrumentationTest.toMap(),
      'androidRoboTest': androidRoboTest.toMap(),
      'androidTestLoop': androidTestLoop.toMap(),
      'disablePerformanceMetrics': disablePerformanceMetrics,
      'disableVideoRecording': disableVideoRecording,
      'iosRoboTest': iosRoboTest.toMap(),
      'iosTestLoop': iosTestLoop.toMap(),
      'iosTestSetup': iosTestSetup.toMap(),
      'iosXcTest': iosXcTest.toMap(),
      'testSetup': testSetup.toMap(),
      'testTimeout': testTimeout,
    };
  }

  factory TestSpecificationResponse.fromMap(Map<String, dynamic> map) {
    return TestSpecificationResponse(
      androidInstrumentationTest: AndroidInstrumentationTestResponse.fromMap((map['androidInstrumentationTest'] as Map).cast<String, dynamic>()),
      androidRoboTest: AndroidRoboTestResponse.fromMap((map['androidRoboTest'] as Map).cast<String, dynamic>()),
      androidTestLoop: AndroidTestLoopResponse.fromMap((map['androidTestLoop'] as Map).cast<String, dynamic>()),
      disablePerformanceMetrics: map['disablePerformanceMetrics'] as bool,
      disableVideoRecording: map['disableVideoRecording'] as bool,
      iosRoboTest: IosRoboTestResponse.fromMap((map['iosRoboTest'] as Map).cast<String, dynamic>()),
      iosTestLoop: IosTestLoopResponse.fromMap((map['iosTestLoop'] as Map).cast<String, dynamic>()),
      iosTestSetup: IosTestSetupResponse.fromMap((map['iosTestSetup'] as Map).cast<String, dynamic>()),
      iosXcTest: IosXcTestResponse.fromMap((map['iosXcTest'] as Map).cast<String, dynamic>()),
      testSetup: TestSetupResponse.fromMap((map['testSetup'] as Map).cast<String, dynamic>()),
      testTimeout: map['testTimeout'] as String,
    );
  }
}

