// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'content_response.dart';
import 'impact_details_response.dart';

/// Impact category properties.
class InsightPropertiesResponse {
  /// additional details of the insight.
  final pulumi.Input<dynamic>? additionalDetails;
  /// category of the insight.
  final pulumi.Input<String> category;
  /// Contains title & description for the insight
  final pulumi.Input<ContentResponse> content;
  /// Identifier of the event that has been correlated with this insight. This can be used to aggregate insights for the same event.
  final pulumi.Input<String>? eventId;
  /// Time of the event, which has been correlated the impact.
  final pulumi.Input<String>? eventTime;
  /// Identifier that can be used to group similar insights.
  final pulumi.Input<String>? groupId;
  /// details of of the impact for which insight has been generated.
  final pulumi.Input<ImpactDetailsResponse> impact;
  /// unique id of the insight.
  final pulumi.Input<String> insightUniqueId;
  /// Resource provisioning state.
  final pulumi.Input<String> provisioningState;
  /// status of the insight. example resolved, repaired, other.
  final pulumi.Input<String>? status;

  /// Creates a new [InsightPropertiesResponse].
  /// [additionalDetails] additional details of the insight.
  /// [category] category of the insight.
  /// [content] Contains title & description for the insight
  /// [eventId] Identifier of the event that has been correlated with this insight. This can be used to aggregate insights for the same event.
  /// [eventTime] Time of the event, which has been correlated the impact.
  /// [groupId] Identifier that can be used to group similar insights.
  /// [impact] details of of the impact for which insight has been generated.
  /// [insightUniqueId] unique id of the insight.
  /// [provisioningState] Resource provisioning state.
  /// [status] status of the insight. example resolved, repaired, other.
  InsightPropertiesResponse({
    this.additionalDetails,
    required this.category,
    required this.content,
    this.eventId,
    this.eventTime,
    this.groupId,
    required this.impact,
    required this.insightUniqueId,
    required this.provisioningState,
    this.status,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'additionalDetails': ?additionalDetails,
      'category': category,
      'content': pulumi.Input.mapInputValue<ContentResponse, Map<String, dynamic>>(content, (value) => value.toMap()),
      'eventId': ?eventId,
      'eventTime': ?eventTime,
      'groupId': ?groupId,
      'impact': pulumi.Input.mapInputValue<ImpactDetailsResponse, Map<String, dynamic>>(impact, (value) => value.toMap()),
      'insightUniqueId': insightUniqueId,
      'provisioningState': provisioningState,
      'status': ?status,
    };
  }

  factory InsightPropertiesResponse.fromMap(Map<String, dynamic> map) {
    return InsightPropertiesResponse(
      additionalDetails: map['additionalDetails'] == null ? null : (map['additionalDetails']!).input(),
      category: (map['category'] as String).input(),
      content: (ContentResponse.fromMap((map['content'] as Map).cast<String, dynamic>())).input(),
      eventId: map['eventId'] == null ? null : (map['eventId']! as String).input(),
      eventTime: map['eventTime'] == null ? null : (map['eventTime']! as String).input(),
      groupId: map['groupId'] == null ? null : (map['groupId']! as String).input(),
      impact: (ImpactDetailsResponse.fromMap((map['impact'] as Map).cast<String, dynamic>())).input(),
      insightUniqueId: (map['insightUniqueId'] as String).input(),
      provisioningState: (map['provisioningState'] as String).input(),
      status: map['status'] == null ? null : (map['status']! as String).input(),
    );
  }
}

