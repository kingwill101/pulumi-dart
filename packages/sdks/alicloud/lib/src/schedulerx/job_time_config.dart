// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class JobTimeConfig {
  /// The cron type can optionally fill in a custom calendar.
  final pulumi.Input<String>? calendar;
  /// Cron type can choose time offset, unit s.
  final pulumi.Input<int>? dataOffset;
  /// Time expressions. Currently, the following types of time expressions are supported:
  final pulumi.Input<String>? timeExpression;
  /// Time configuration type. Currently, the following time types are supported:
  final pulumi.Input<int> timeType;

  /// Creates a new [JobTimeConfig].
  /// [calendar] The cron type can optionally fill in a custom calendar.
  /// [dataOffset] Cron type can choose time offset, unit s.
  /// [timeExpression] Time expressions. Currently, the following types of time expressions are supported:
  /// [timeType] Time configuration type. Currently, the following time types are supported:
  JobTimeConfig({
    this.calendar,
    this.dataOffset,
    this.timeExpression,
    required this.timeType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'calendar': ?calendar,
      'dataOffset': ?dataOffset,
      'timeExpression': ?timeExpression,
      'timeType': timeType,
    };
  }

  factory JobTimeConfig.fromMap(Map<String, dynamic> map) {
    return JobTimeConfig(
      calendar: (() { final guardedValue = map['calendar']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      dataOffset: (() { final guardedValue = map['dataOffset']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      timeExpression: (() { final guardedValue = map['timeExpression']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      timeType: pulumi.Input.fromValue(map['timeType'] as int),
    );
  }
}

