// ignore_for_file: unused_element, unnecessary_cast

import 'duration_response.dart';
import 'ios_app_info_response.dart';
import 'ios_test_loop_response.dart';
import 'ios_xc_test_response.dart';

/// A iOS mobile test specification
class IosTestResponse {
  /// Information about the application under test.
  final IosAppInfoResponse iosAppInfo;

  /// An iOS Robo test.
  final Map<String, dynamic> iosRoboTest;

  /// An iOS test loop.
  final IosTestLoopResponse iosTestLoop;

  /// An iOS XCTest.
  final IosXcTestResponse iosXcTest;

  /// Max time a test is allowed to run before it is automatically cancelled.
  final DurationResponse testTimeout;

  /// Creates a new [IosTestResponse].
  /// [iosAppInfo] Information about the application under test.
  /// [iosRoboTest] An iOS Robo test.
  /// [iosTestLoop] An iOS test loop.
  /// [iosXcTest] An iOS XCTest.
  /// [testTimeout] Max time a test is allowed to run before it is automatically cancelled.
  IosTestResponse({
    required this.iosAppInfo,
    required this.iosRoboTest,
    required this.iosTestLoop,
    required this.iosXcTest,
    required this.testTimeout,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['iosAppInfo'] = iosAppInfo.toMap();
    map['iosRoboTest'] = iosRoboTest;
    map['iosTestLoop'] = iosTestLoop.toMap();
    map['iosXcTest'] = iosXcTest.toMap();
    map['testTimeout'] = testTimeout.toMap();
    return map;
  }

  factory IosTestResponse.fromMap(Map<String, dynamic> map) {
    return IosTestResponse(
      iosAppInfo: IosAppInfoResponse.fromMap(
          (map['iosAppInfo'] as Map).cast<String, dynamic>()),
      iosRoboTest: (map['iosRoboTest'] as Map).cast<String, dynamic>(),
      iosTestLoop: IosTestLoopResponse.fromMap(
          (map['iosTestLoop'] as Map).cast<String, dynamic>()),
      iosXcTest: IosXcTestResponse.fromMap(
          (map['iosXcTest'] as Map).cast<String, dynamic>()),
      testTimeout: DurationResponse.fromMap(
          (map['testTimeout'] as Map).cast<String, dynamic>()),
    );
  }
}
