// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'content.dart';
import 'impact_details.dart';

/// Impact category properties.
class InsightProperties {
  /// additional details of the insight.
  final pulumi.Input<dynamic>? additionalDetails;
  /// category of the insight.
  final pulumi.Input<String> category;
  /// Contains title & description for the insight
  final pulumi.Input<Content> content;
  /// Identifier of the event that has been correlated with this insight. This can be used to aggregate insights for the same event.
  final pulumi.Input<String?>? eventId;
  /// Time of the event, which has been correlated the impact.
  final pulumi.Input<String?>? eventTime;
  /// Identifier that can be used to group similar insights.
  final pulumi.Input<String?>? groupId;
  /// details of of the impact for which insight has been generated.
  final pulumi.Input<ImpactDetails> impact;
  /// unique id of the insight.
  final pulumi.Input<String> insightUniqueId;
  /// status of the insight. example resolved, repaired, other.
  final pulumi.Input<String?>? status;

  /// Creates a new [InsightProperties].
  /// [additionalDetails] additional details of the insight.
  /// [category] category of the insight.
  /// [content] Contains title & description for the insight
  /// [eventId] Identifier of the event that has been correlated with this insight. This can be used to aggregate insights for the same event.
  /// [eventTime] Time of the event, which has been correlated the impact.
  /// [groupId] Identifier that can be used to group similar insights.
  /// [impact] details of of the impact for which insight has been generated.
  /// [insightUniqueId] unique id of the insight.
  /// [status] status of the insight. example resolved, repaired, other.
  const InsightProperties({
    this.additionalDetails,
    required this.category,
    required this.content,
    this.eventId,
    this.eventTime,
    this.groupId,
    required this.impact,
    required this.insightUniqueId,
    this.status,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'additionalDetails': ?additionalDetails,
      'category': category,
      'content': pulumi.Input.mapInputValue<Content, Map<String, dynamic>>(content, (value) => value.toMap()),
      'eventId': ?eventId,
      'eventTime': ?eventTime,
      'groupId': ?groupId,
      'impact': pulumi.Input.mapInputValue<ImpactDetails, Map<String, dynamic>>(impact, (value) => value.toMap()),
      'insightUniqueId': insightUniqueId,
      'status': ?status,
    };
  }

  factory InsightProperties.fromMap(Map<String, dynamic> map) {
    return InsightProperties(
      additionalDetails: (() { final guardedValue = map['additionalDetails']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
      category: pulumi.Input.fromValue(map['category'] as String),
      content: pulumi.Input.fromValue(Content.fromMap((map['content']! as Map).cast<String, dynamic>())),
      eventId: (() { final guardedValue = map['eventId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      eventTime: (() { final guardedValue = map['eventTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      groupId: (() { final guardedValue = map['groupId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      impact: pulumi.Input.fromValue(ImpactDetails.fromMap((map['impact']! as Map).cast<String, dynamic>())),
      insightUniqueId: pulumi.Input.fromValue(map['insightUniqueId'] as String),
      status: (() { final guardedValue = map['status']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
