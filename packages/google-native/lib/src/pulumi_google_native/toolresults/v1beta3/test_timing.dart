// ignore_for_file: unused_element, unnecessary_cast

import 'duration4.dart';

/// Testing timing break down to know phases.
class TestTiming {
  /// How long it took to run the test process. - In response: present if previously set. - In create/update request: optional
  final Duration4? testProcessDuration;

  TestTiming({
    this.testProcessDuration,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final testProcessDurationValue = testProcessDuration;
    if (testProcessDurationValue != null) {
      map['testProcessDuration'] = testProcessDurationValue.toMap();
    }
    return map;
  }

  factory TestTiming.fromMap(Map<String, dynamic> map) {
    return TestTiming(
      testProcessDuration: map['testProcessDuration'] == null
          ? null
          : Duration4.fromMap(
              (map['testProcessDuration'] as Map).cast<String, dynamic>()),
    );
  }
}
