// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ApplicationApplicationConfigurationSqlApplicationConfigurationInputInputParallelism {
  /// The number of in-application streams to create.
  final pulumi.Input<int?>? count;

  /// Creates a new [ApplicationApplicationConfigurationSqlApplicationConfigurationInputInputParallelism].
  /// [count] The number of in-application streams to create.
  const ApplicationApplicationConfigurationSqlApplicationConfigurationInputInputParallelism({
    this.count,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'count': ?count,
    };
  }

  factory ApplicationApplicationConfigurationSqlApplicationConfigurationInputInputParallelism.fromMap(Map<String, dynamic> map) {
    return ApplicationApplicationConfigurationSqlApplicationConfigurationInputInputParallelism(
      count: (() { final guardedValue = map['count']; if (guardedValue == null) return null; return pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue)); })(),
    );
  }
}
