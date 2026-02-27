// ignore_for_file: unused_element, unnecessary_cast

import 'duration_toolresults_v1beta3.dart';
import 'ios_app_info.dart';
import 'ios_test_loop_toolresults_v1beta3.dart';
import 'ios_xc_test_toolresults_v1beta3.dart';

/// A iOS mobile test specification
class IosTest {
  /// Information about the application under test.
  final IosAppInfo? iosAppInfo;

  /// An iOS Robo test.
  final Map<String, dynamic>? iosRoboTest;

  /// An iOS test loop.
  final IosTestLoopToolresultsV1beta3? iosTestLoop;

  /// An iOS XCTest.
  final IosXcTestToolresultsV1beta3? iosXcTest;

  /// Max time a test is allowed to run before it is automatically cancelled.
  final DurationToolresultsV1beta3? testTimeout;

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
          : IosTestLoopToolresultsV1beta3.fromMap(
              (map['iosTestLoop'] as Map).cast<String, dynamic>()),
      iosXcTest: map['iosXcTest'] == null
          ? null
          : IosXcTestToolresultsV1beta3.fromMap(
              (map['iosXcTest'] as Map).cast<String, dynamic>()),
      testTimeout: map['testTimeout'] == null
          ? null
          : DurationToolresultsV1beta3.fromMap(
              (map['testTimeout'] as Map).cast<String, dynamic>()),
    );
  }
}
