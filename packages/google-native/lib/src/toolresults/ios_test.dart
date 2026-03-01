// ignore_for_file: unused_element, unnecessary_cast

import 'duration.dart';
import 'ios_app_info.dart';
import 'ios_test_loop.dart';
import 'ios_xc_test.dart';

/// A iOS mobile test specification
class IosTest {
  /// Information about the application under test.
  final IosAppInfo? iosAppInfo;

  /// An iOS Robo test.
  final Map<String, dynamic>? iosRoboTest;

  /// An iOS test loop.
  final IosTestLoop? iosTestLoop;

  /// An iOS XCTest.
  final IosXcTest? iosXcTest;

  /// Max time a test is allowed to run before it is automatically cancelled.
  final Duration? testTimeout;

  /// Creates a new [IosTest].
  /// [iosAppInfo] Information about the application under test.
  /// [iosRoboTest] An iOS Robo test.
  /// [iosTestLoop] An iOS test loop.
  /// [iosXcTest] An iOS XCTest.
  /// [testTimeout] Max time a test is allowed to run before it is automatically cancelled.
  IosTest({
    this.iosAppInfo,
    this.iosRoboTest,
    this.iosTestLoop,
    this.iosXcTest,
    this.testTimeout,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'iosAppInfo': ?iosAppInfo == null ? null : iosAppInfo!.toMap(),
      'iosRoboTest': ?iosRoboTest,
      'iosTestLoop': ?iosTestLoop == null ? null : iosTestLoop!.toMap(),
      'iosXcTest': ?iosXcTest == null ? null : iosXcTest!.toMap(),
      'testTimeout': ?testTimeout == null ? null : testTimeout!.toMap(),
    };
  }

  factory IosTest.fromMap(Map<String, dynamic> map) {
    return IosTest(
      iosAppInfo: map['iosAppInfo'] == null
          ? null
          : IosAppInfo.fromMap(
              (map['iosAppInfo'] as Map).cast<String, dynamic>(),
            ),
      iosRoboTest: map['iosRoboTest'] == null
          ? null
          : (map['iosRoboTest'] as Map).cast<String, dynamic>(),
      iosTestLoop: map['iosTestLoop'] == null
          ? null
          : IosTestLoop.fromMap(
              (map['iosTestLoop'] as Map).cast<String, dynamic>(),
            ),
      iosXcTest: map['iosXcTest'] == null
          ? null
          : IosXcTest.fromMap(
              (map['iosXcTest'] as Map).cast<String, dynamic>(),
            ),
      testTimeout: map['testTimeout'] == null
          ? null
          : Duration.fromMap(
              (map['testTimeout'] as Map).cast<String, dynamic>(),
            ),
    );
  }
}
