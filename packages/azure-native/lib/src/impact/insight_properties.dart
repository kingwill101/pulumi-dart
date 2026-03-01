// ignore_for_file: unused_element, unnecessary_cast

import 'content.dart';
import 'impact_details.dart';

/// Impact category properties.
class InsightProperties {
  /// additional details of the insight.
  final dynamic additionalDetails;
  /// category of the insight.
  final String category;
  /// Contains title & description for the insight
  final Content content;
  /// Identifier of the event that has been correlated with this insight. This can be used to aggregate insights for the same event.
  final String? eventId;
  /// Time of the event, which has been correlated the impact.
  final String? eventTime;
  /// Identifier that can be used to group similar insights.
  final String? groupId;
  /// details of of the impact for which insight has been generated.
  final ImpactDetails impact;
  /// unique id of the insight.
  final String insightUniqueId;
  /// status of the insight. example resolved, repaired, other.
  final String? status;

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
  InsightProperties({
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
      'content': content.toMap(),
      'eventId': ?eventId,
      'eventTime': ?eventTime,
      'groupId': ?groupId,
      'impact': impact.toMap(),
      'insightUniqueId': insightUniqueId,
      'status': ?status,
    };
  }

  factory InsightProperties.fromMap(Map<String, dynamic> map) {
    return InsightProperties(
      additionalDetails: map['additionalDetails'] == null ? null : map['additionalDetails'],
      category: map['category'] as String,
      content: Content.fromMap((map['content'] as Map).cast<String, dynamic>()),
      eventId: map['eventId'] == null ? null : map['eventId'] as String,
      eventTime: map['eventTime'] == null ? null : map['eventTime'] as String,
      groupId: map['groupId'] == null ? null : map['groupId'] as String,
      impact: ImpactDetails.fromMap((map['impact'] as Map).cast<String, dynamic>()),
      insightUniqueId: map['insightUniqueId'] as String,
      status: map['status'] == null ? null : map['status'] as String,
    );
  }
}

