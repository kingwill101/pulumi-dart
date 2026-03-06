// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Wait statistics gathered during query batch execution
class WaitStatisticsResponse {
  /// Total no. of waits
  final pulumi.Input<double>? waitCount;
  /// Total wait time in millisecond(s)
  final pulumi.Input<double>? waitTimeMs;
  /// Type of the Wait
  final pulumi.Input<String>? waitType;

  /// Creates a new [WaitStatisticsResponse].
  /// [waitCount] Total no. of waits
  /// [waitTimeMs] Total wait time in millisecond(s)
  /// [waitType] Type of the Wait
  const WaitStatisticsResponse({
    this.waitCount,
    this.waitTimeMs,
    this.waitType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'waitCount': ?waitCount,
      'waitTimeMs': ?waitTimeMs,
      'waitType': ?waitType,
    };
  }

  factory WaitStatisticsResponse.fromMap(Map<String, dynamic> map) {
    return WaitStatisticsResponse(
      waitCount: (() { final guardedValue = map['waitCount']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as double); })(),
      waitTimeMs: (() { final guardedValue = map['waitTimeMs']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as double); })(),
      waitType: (() { final guardedValue = map['waitType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

