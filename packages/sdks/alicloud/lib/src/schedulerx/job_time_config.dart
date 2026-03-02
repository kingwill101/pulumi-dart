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
      calendar: map['calendar'] == null ? null : (map['calendar'] as String).input(),
      dataOffset: map['dataOffset'] == null ? null : (map['dataOffset'] as int).input(),
      timeExpression: map['timeExpression'] == null ? null : (map['timeExpression'] as String).input(),
      timeType: (map['timeType'] as int).input(),
    );
  }
}

