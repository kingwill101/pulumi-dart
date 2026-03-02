// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class SyntheticTaskCustomPeriod {
  /// End hours, 0-24.
  final pulumi.Input<int>? endHour;
  /// Starting hours, 0-24.
  final pulumi.Input<int>? startHour;

  /// Creates a new [SyntheticTaskCustomPeriod].
  /// [endHour] End hours, 0-24.
  /// [startHour] Starting hours, 0-24.
  SyntheticTaskCustomPeriod({
    this.endHour,
    this.startHour,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'endHour': ?endHour,
      'startHour': ?startHour,
    };
  }

  factory SyntheticTaskCustomPeriod.fromMap(Map<String, dynamic> map) {
    return SyntheticTaskCustomPeriod(
      endHour: map['endHour'] == null ? null : (map['endHour']! as int).input(),
      startHour: map['startHour'] == null ? null : (map['startHour']! as int).input(),
    );
  }
}

