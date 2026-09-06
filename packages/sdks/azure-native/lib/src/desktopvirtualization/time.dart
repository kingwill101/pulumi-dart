// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The time for a scaling action to occur.
class Time {
  /// The hour.
  final pulumi.Input<int> hour;
  /// The minute.
  final pulumi.Input<int> minute;

  /// Creates a new [Time].
  /// [hour] The hour.
  /// [minute] The minute.
  const Time({
    required this.hour,
    required this.minute,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'hour': hour,
      'minute': minute,
    };
  }

  factory Time.fromMap(Map<String, dynamic> map) {
    return Time(
      hour: pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(map['hour'])),
      minute: pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(map['minute'])),
    );
  }
}
