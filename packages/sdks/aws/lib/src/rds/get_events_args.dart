// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_rds_get_events_get_events_args_doc}
/// Arguments for getEvents.
/// {@endtemplate}
/// {@macro pulumi_rds_get_events_get_events_args_doc}
class GetEventsArgs {
  /// Number of minutes to look back from now. Conflicts with `startTime` and `endTime`.
  final pulumi.Input<int?>? duration;
  /// End of the time interval, in RFC3339 format. Conflicts with `duration`.
  final pulumi.Input<String?>? endTime;
  /// Set of event categories to filter on, e.g. `failure`, `maintenance`, `configuration change`. Defaults to all categories.
  final pulumi.Input<List<String>?>? eventCategories;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String?>? region;
  /// Identifier of the source, such as a DB instance or DB cluster identifier. Requires `sourceType` to also be set.
  final pulumi.Input<String?>? sourceIdentifier;
  /// Type of source. Valid values include `db-instance`, `db-cluster`, `db-snapshot`, `db-parameter-group`, `db-security-group`, `db-cluster-snapshot`, `custom-engine-version`, `db-proxy`, `blue-green-deployment`, `db-shard-group`, and `zero-etl`.
  final pulumi.Input<String?>? sourceType;
  /// Start of the time interval, in RFC3339 format. Conflicts with `duration`.
  final pulumi.Input<String?>? startTime;

  /// Creates a new [GetEventsArgs].
  /// [duration] Number of minutes to look back from now. Conflicts with `startTime` and `endTime`.
  /// [endTime] End of the time interval, in RFC3339 format. Conflicts with `duration`.
  /// [eventCategories] Set of event categories to filter on, e.g. `failure`, `maintenance`, `configuration change`. Defaults to all categories.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [sourceIdentifier] Identifier of the source, such as a DB instance or DB cluster identifier. Requires `sourceType` to also be set.
  /// [sourceType] Type of source. Valid values include `db-instance`, `db-cluster`, `db-snapshot`, `db-parameter-group`, `db-security-group`, `db-cluster-snapshot`, `custom-engine-version`, `db-proxy`, `blue-green-deployment`, `db-shard-group`, and `zero-etl`.
  /// [startTime] Start of the time interval, in RFC3339 format. Conflicts with `duration`.
  const GetEventsArgs({
    this.duration,
    this.endTime,
    this.eventCategories,
    this.region,
    this.sourceIdentifier,
    this.sourceType,
    this.startTime,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'duration': ?duration,
      'endTime': ?endTime,
      'eventCategories': ?eventCategories,
      'region': ?region,
      'sourceIdentifier': ?sourceIdentifier,
      'sourceType': ?sourceType,
      'startTime': ?startTime,
    };
  }

  factory GetEventsArgs.fromMap(Map<String, dynamic> map) {
    return GetEventsArgs(
      duration: (() { final guardedValue = map['duration']; if (guardedValue == null) return null; return pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue)); })(),
      endTime: (() { final guardedValue = map['endTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      eventCategories: (() { final guardedValue = map['eventCategories']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      sourceIdentifier: (() { final guardedValue = map['sourceIdentifier']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      sourceType: (() { final guardedValue = map['sourceType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      startTime: (() { final guardedValue = map['startTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
