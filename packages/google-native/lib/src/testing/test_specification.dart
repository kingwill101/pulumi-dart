// ignore_for_file: unused_element, unnecessary_cast

import 'android_instrumentation_test.dart';
import 'android_robo_test.dart';
import 'android_test_loop.dart';
import 'ios_robo_test.dart';
import 'ios_test_loop.dart';
import 'ios_test_setup.dart';
import 'ios_xc_test.dart';
import 'test_setup.dart';

/// A description of how to run the test.
class TestSpecification {
  /// An Android instrumentation test.
  final AndroidInstrumentationTest? androidInstrumentationTest;
  /// An Android robo test.
  final AndroidRoboTest? androidRoboTest;
  /// An Android Application with a Test Loop.
  final AndroidTestLoop? androidTestLoop;
  /// Disables performance metrics recording. May reduce test latency.
  final bool? disablePerformanceMetrics;
  /// Disables video recording. May reduce test latency.
  final bool? disableVideoRecording;
  /// An iOS Robo test.
  final IosRoboTest? iosRoboTest;
  /// An iOS application with a test loop.
  final IosTestLoop? iosTestLoop;
  /// Test setup requirements for iOS.
  final IosTestSetup? iosTestSetup;
  /// An iOS XCTest, via an .xctestrun file.
  final IosXcTest? iosXcTest;
  /// Test setup requirements for Android e.g. files to install, bootstrap scripts.
  final TestSetup? testSetup;
  /// Max time a test execution is allowed to run before it is automatically cancelled. The default value is 5 min.
  final String? testTimeout;

  /// Creates a new [TestSpecification].
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
  TestSpecification({
    this.androidInstrumentationTest,
    this.androidRoboTest,
    this.androidTestLoop,
    this.disablePerformanceMetrics,
    this.disableVideoRecording,
    this.iosRoboTest,
    this.iosTestLoop,
    this.iosTestSetup,
    this.iosXcTest,
    this.testSetup,
    this.testTimeout,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'androidInstrumentationTest': ?androidInstrumentationTest == null ? null : androidInstrumentationTest!.toMap(),
      'androidRoboTest': ?androidRoboTest == null ? null : androidRoboTest!.toMap(),
      'androidTestLoop': ?androidTestLoop == null ? null : androidTestLoop!.toMap(),
      'disablePerformanceMetrics': ?disablePerformanceMetrics,
      'disableVideoRecording': ?disableVideoRecording,
      'iosRoboTest': ?iosRoboTest == null ? null : iosRoboTest!.toMap(),
      'iosTestLoop': ?iosTestLoop == null ? null : iosTestLoop!.toMap(),
      'iosTestSetup': ?iosTestSetup == null ? null : iosTestSetup!.toMap(),
      'iosXcTest': ?iosXcTest == null ? null : iosXcTest!.toMap(),
      'testSetup': ?testSetup == null ? null : testSetup!.toMap(),
      'testTimeout': ?testTimeout,
    };
  }

  factory TestSpecification.fromMap(Map<String, dynamic> map) {
    return TestSpecification(
      androidInstrumentationTest: map['androidInstrumentationTest'] == null ? null : AndroidInstrumentationTest.fromMap((map['androidInstrumentationTest'] as Map).cast<String, dynamic>()),
      androidRoboTest: map['androidRoboTest'] == null ? null : AndroidRoboTest.fromMap((map['androidRoboTest'] as Map).cast<String, dynamic>()),
      androidTestLoop: map['androidTestLoop'] == null ? null : AndroidTestLoop.fromMap((map['androidTestLoop'] as Map).cast<String, dynamic>()),
      disablePerformanceMetrics: map['disablePerformanceMetrics'] == null ? null : map['disablePerformanceMetrics'] as bool,
      disableVideoRecording: map['disableVideoRecording'] == null ? null : map['disableVideoRecording'] as bool,
      iosRoboTest: map['iosRoboTest'] == null ? null : IosRoboTest.fromMap((map['iosRoboTest'] as Map).cast<String, dynamic>()),
      iosTestLoop: map['iosTestLoop'] == null ? null : IosTestLoop.fromMap((map['iosTestLoop'] as Map).cast<String, dynamic>()),
      iosTestSetup: map['iosTestSetup'] == null ? null : IosTestSetup.fromMap((map['iosTestSetup'] as Map).cast<String, dynamic>()),
      iosXcTest: map['iosXcTest'] == null ? null : IosXcTest.fromMap((map['iosXcTest'] as Map).cast<String, dynamic>()),
      testSetup: map['testSetup'] == null ? null : TestSetup.fromMap((map['testSetup'] as Map).cast<String, dynamic>()),
      testTimeout: map['testTimeout'] == null ? null : map['testTimeout'] as String,
    );
  }
}

