// ignore_for_file: unused_element, unnecessary_cast

import 'duration_response_toolresults_v1beta3.dart';

/// Testing timing break down to know phases.
class TestTimingResponse {
  /// How long it took to run the test process. - In response: present if previously set. - In create/update request: optional
  final DurationResponseToolresultsV1beta3 testProcessDuration;

  TestTimingResponse({
    required this.testProcessDuration,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['testProcessDuration'] = testProcessDuration.toMap();
    return map;
  }

  factory TestTimingResponse.fromMap(Map<String, dynamic> map) {
    return TestTimingResponse(
      testProcessDuration: DurationResponseToolresultsV1beta3.fromMap(
          (map['testProcessDuration'] as Map).cast<String, dynamic>()),
    );
  }
}
