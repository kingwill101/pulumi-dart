// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetTagsTimePeriod {
  /// Beginning of the time period.
  final pulumi.Input<String> end;

  /// End of the time period.
  final pulumi.Input<String> start;

  /// Creates a new [GetTagsTimePeriod].
  /// [end] Beginning of the time period.
  /// [start] End of the time period.
  GetTagsTimePeriod({required this.end, required this.start});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'end': end, 'start': start};
  }

  factory GetTagsTimePeriod.fromMap(Map<String, dynamic> map) {
    return GetTagsTimePeriod(
      end: pulumi.Input.fromValue(map['end'] as String),
      start: pulumi.Input.fromValue(map['start'] as String),
    );
  }
}
