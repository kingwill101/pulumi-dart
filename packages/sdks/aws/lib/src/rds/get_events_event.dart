// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetEventsEvent {
  /// Date and time of the event, in RFC3339 format.
  final pulumi.Input<String> date;
  /// Set of event categories to filter on, e.g. `failure`, `maintenance`, `configuration change`. Defaults to all categories.
  final pulumi.Input<List<String>> eventCategories;
  /// Text of the event.
  final pulumi.Input<String> message;
  /// ARN of the event source.
  final pulumi.Input<String> sourceArn;
  /// Identifier of the source, such as a DB instance or DB cluster identifier. Requires `sourceType` to also be set.
  final pulumi.Input<String> sourceIdentifier;
  /// Type of source. Valid values include `db-instance`, `db-cluster`, `db-snapshot`, `db-parameter-group`, `db-security-group`, `db-cluster-snapshot`, `custom-engine-version`, `db-proxy`, `blue-green-deployment`, `db-shard-group`, and `zero-etl`.
  final pulumi.Input<String> sourceType;

  /// Creates a new [GetEventsEvent].
  /// [date] Date and time of the event, in RFC3339 format.
  /// [eventCategories] Set of event categories to filter on, e.g. `failure`, `maintenance`, `configuration change`. Defaults to all categories.
  /// [message] Text of the event.
  /// [sourceArn] ARN of the event source.
  /// [sourceIdentifier] Identifier of the source, such as a DB instance or DB cluster identifier. Requires `sourceType` to also be set.
  /// [sourceType] Type of source. Valid values include `db-instance`, `db-cluster`, `db-snapshot`, `db-parameter-group`, `db-security-group`, `db-cluster-snapshot`, `custom-engine-version`, `db-proxy`, `blue-green-deployment`, `db-shard-group`, and `zero-etl`.
  const GetEventsEvent({
    required this.date,
    required this.eventCategories,
    required this.message,
    required this.sourceArn,
    required this.sourceIdentifier,
    required this.sourceType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'date': date,
      'eventCategories': eventCategories,
      'message': message,
      'sourceArn': sourceArn,
      'sourceIdentifier': sourceIdentifier,
      'sourceType': sourceType,
    };
  }

  factory GetEventsEvent.fromMap(Map<String, dynamic> map) {
    return GetEventsEvent(
      date: pulumi.Input.fromValue(map['date'] as String),
      eventCategories: pulumi.Input.fromValue((map['eventCategories'] as List).cast<String>()),
      message: pulumi.Input.fromValue(map['message'] as String),
      sourceArn: pulumi.Input.fromValue(map['sourceArn'] as String),
      sourceIdentifier: pulumi.Input.fromValue(map['sourceIdentifier'] as String),
      sourceType: pulumi.Input.fromValue(map['sourceType'] as String),
    );
  }
}
