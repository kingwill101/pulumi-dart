// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../retrohunt_process_interval/retrohunt_process_interval.dart';

/// The set of arguments for Retrohunt.
class RetrohuntArgs {
  /// The retrohunt ID of the Retrohunt. A retrohunt is an execution of a Rule over a time range in the past.
  final pulumi.Input<String>? retrohuntId;

  /// The unique identifier for the Chronicle instance, which is the same as the customer ID.
  final pulumi.Input<String> instance;

  /// The location of the resource. This is the geographical region where the Chronicle instance resides, such as "us" or "europe-west2".
  final pulumi.Input<String> location;

  /// Represents a time interval, encoded as a Timestamp start (inclusive) and a
  /// Timestamp end (exclusive).
  /// The start must be less than or equal to the end.
  /// When the start equals the end, the interval is empty (matches no time).
  /// When both start and end are unspecified, the interval matches any time.
  /// Structure is documented below.
  final pulumi.Input<RetrohuntProcessInterval> processInterval;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;

  /// The Rule ID of the rule.
  final pulumi.Input<String> rule;

  RetrohuntArgs({
    this.retrohuntId,
    required this.instance,
    required this.location,
    required this.processInterval,
    this.project,
    required this.rule,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final retrohuntIdValue = retrohuntId;
    if (retrohuntIdValue != null) {
      map['RetrohuntId'] = retrohuntIdValue;
    }
    map['instance'] = instance;
    map['location'] = location;
    map['processInterval'] = pulumi.Input.mapInputValue<
        RetrohuntProcessInterval,
        Map<String, dynamic>>(processInterval, (value) => value.toMap());
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    map['rule'] = rule;
    return map;
  }

  factory RetrohuntArgs.fromMap(Map<String, dynamic> map) {
    return RetrohuntArgs(
      retrohuntId: pulumi.Input.asOptionalInput<String>(map['RetrohuntId']),
      instance: pulumi.Input.asInput<String>(map['instance']),
      location: pulumi.Input.asInput<String>(map['location']),
      processInterval: pulumi.Input.asInput<RetrohuntProcessInterval>(
          map['processInterval']),
      project: pulumi.Input.asOptionalInput<String>(map['project']),
      rule: pulumi.Input.asInput<String>(map['rule']),
    );
  }
}
