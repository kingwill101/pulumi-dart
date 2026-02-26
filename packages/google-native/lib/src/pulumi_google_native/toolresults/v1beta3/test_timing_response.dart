// ignore_for_file: unused_element, unnecessary_cast

import 'duration_response4.dart';

/// Testing timing break down to know phases.
class TestTimingResponse {
  /// How long it took to run the test process. - In response: present if previously set. - In create/update request: optional
  final DurationResponse4 testProcessDuration;

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
      testProcessDuration: DurationResponse4.fromMap(
          (map['testProcessDuration'] as Map).cast<String, dynamic>()),
    );
  }
}
