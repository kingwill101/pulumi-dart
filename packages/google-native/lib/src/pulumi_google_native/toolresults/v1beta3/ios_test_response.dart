// ignore_for_file: unused_element, unnecessary_cast

import 'duration_response_toolresults_v1beta3.dart';
import 'ios_app_info_response.dart';
import 'ios_test_loop_response_toolresults_v1beta3.dart';
import 'ios_xc_test_response_toolresults_v1beta3.dart';

/// A iOS mobile test specification
class IosTestResponse {
  /// Information about the application under test.
  final IosAppInfoResponse iosAppInfo;

  /// An iOS Robo test.
  final Map<String, dynamic> iosRoboTest;

  /// An iOS test loop.
  final IosTestLoopResponseToolresultsV1beta3 iosTestLoop;

  /// An iOS XCTest.
  final IosXcTestResponseToolresultsV1beta3 iosXcTest;

  /// Max time a test is allowed to run before it is automatically cancelled.
  final DurationResponseToolresultsV1beta3 testTimeout;

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
      iosTestLoop: IosTestLoopResponseToolresultsV1beta3.fromMap(
          (map['iosTestLoop'] as Map).cast<String, dynamic>()),
      iosXcTest: IosXcTestResponseToolresultsV1beta3.fromMap(
          (map['iosXcTest'] as Map).cast<String, dynamic>()),
      testTimeout: DurationResponseToolresultsV1beta3.fromMap(
          (map['testTimeout'] as Map).cast<String, dynamic>()),
    );
  }
}
