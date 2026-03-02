// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ScheduleTargetEventbridgeParameters {
  /// Free-form string used to decide what fields to expect in the event detail. Up to 128 characters.
  final pulumi.Input<String> detailType;
  /// Source of the event.
  final pulumi.Input<String> source;

  /// Creates a new [ScheduleTargetEventbridgeParameters].
  /// [detailType] Free-form string used to decide what fields to expect in the event detail. Up to 128 characters.
  /// [source] Source of the event.
  ScheduleTargetEventbridgeParameters({
    required this.detailType,
    required this.source,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'detailType': detailType,
      'source': source,
    };
  }

  factory ScheduleTargetEventbridgeParameters.fromMap(Map<String, dynamic> map) {
    return ScheduleTargetEventbridgeParameters(
      detailType: (map['detailType'] as String).input(),
      source: (map['source'] as String).input(),
    );
  }
}

