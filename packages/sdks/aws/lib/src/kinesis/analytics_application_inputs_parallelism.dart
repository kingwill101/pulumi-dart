// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class AnalyticsApplicationInputsParallelism {
  /// Count of streams.
  final pulumi.Input<int?>? count;

  /// Creates a new [AnalyticsApplicationInputsParallelism].
  /// [count] Count of streams.
  const AnalyticsApplicationInputsParallelism({
    this.count,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'count': ?count,
    };
  }

  factory AnalyticsApplicationInputsParallelism.fromMap(Map<String, dynamic> map) {
    return AnalyticsApplicationInputsParallelism(
      count: (() { final guardedValue = map['count']; if (guardedValue == null) return null; return pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue)); })(),
    );
  }
}
