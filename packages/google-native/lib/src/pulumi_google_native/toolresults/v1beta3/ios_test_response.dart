// ignore_for_file: unused_element, unnecessary_cast

import 'duration_response4.dart';
import 'ios_app_info_response.dart';
import 'ios_test_loop_response2.dart';
import 'ios_xc_test_response2.dart';

/// A iOS mobile test specification
class IosTestResponse {
  /// Information about the application under test.
  final IosAppInfoResponse iosAppInfo;

  /// An iOS Robo test.
  final Map<String, dynamic> iosRoboTest;

  /// An iOS test loop.
  final IosTestLoopResponse2 iosTestLoop;

  /// An iOS XCTest.
  final IosXcTestResponse2 iosXcTest;

  /// Max time a test is allowed to run before it is automatically cancelled.
  final DurationResponse4 testTimeout;

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
      iosTestLoop: IosTestLoopResponse2.fromMap(
          (map['iosTestLoop'] as Map).cast<String, dynamic>()),
      iosXcTest: IosXcTestResponse2.fromMap(
          (map['iosXcTest'] as Map).cast<String, dynamic>()),
      testTimeout: DurationResponse4.fromMap(
          (map['testTimeout'] as Map).cast<String, dynamic>()),
    );
  }
}
