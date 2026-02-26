// ignore_for_file: unused_element, unnecessary_cast

import 'duration4.dart';
import 'ios_app_info.dart';
import 'ios_test_loop2.dart';
import 'ios_xc_test2.dart';

/// A iOS mobile test specification
class IosTest {
  /// Information about the application under test.
  final IosAppInfo? iosAppInfo;

  /// An iOS Robo test.
  final Map<String, dynamic>? iosRoboTest;

  /// An iOS test loop.
  final IosTestLoop2? iosTestLoop;

  /// An iOS XCTest.
  final IosXcTest2? iosXcTest;

  /// Max time a test is allowed to run before it is automatically cancelled.
  final Duration4? testTimeout;

  IosTest({
    this.iosAppInfo,
    this.iosRoboTest,
    this.iosTestLoop,
    this.iosXcTest,
    this.testTimeout,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final iosAppInfoValue = iosAppInfo;
    if (iosAppInfoValue != null) {
      map['iosAppInfo'] = iosAppInfoValue.toMap();
    }
    final iosRoboTestValue = iosRoboTest;
    if (iosRoboTestValue != null) {
      map['iosRoboTest'] = iosRoboTestValue;
    }
    final iosTestLoopValue = iosTestLoop;
    if (iosTestLoopValue != null) {
      map['iosTestLoop'] = iosTestLoopValue.toMap();
    }
    final iosXcTestValue = iosXcTest;
    if (iosXcTestValue != null) {
      map['iosXcTest'] = iosXcTestValue.toMap();
    }
    final testTimeoutValue = testTimeout;
    if (testTimeoutValue != null) {
      map['testTimeout'] = testTimeoutValue.toMap();
    }
    return map;
  }

  factory IosTest.fromMap(Map<String, dynamic> map) {
    return IosTest(
      iosAppInfo: map['iosAppInfo'] == null
          ? null
          : IosAppInfo.fromMap(
              (map['iosAppInfo'] as Map).cast<String, dynamic>()),
      iosRoboTest: map['iosRoboTest'] == null
          ? null
          : (map['iosRoboTest'] as Map).cast<String, dynamic>(),
      iosTestLoop: map['iosTestLoop'] == null
          ? null
          : IosTestLoop2.fromMap(
              (map['iosTestLoop'] as Map).cast<String, dynamic>()),
      iosXcTest: map['iosXcTest'] == null
          ? null
          : IosXcTest2.fromMap(
              (map['iosXcTest'] as Map).cast<String, dynamic>()),
      testTimeout: map['testTimeout'] == null
          ? null
          : Duration4.fromMap(
              (map['testTimeout'] as Map).cast<String, dynamic>()),
    );
  }
}
