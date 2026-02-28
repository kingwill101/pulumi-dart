// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_cloud_discoveryengine_v1beta_reply_reference.dart';
import 'google_cloud_discoveryengine_v1beta_search_response_summary.dart';

/// Defines a reply message to user.
class GoogleCloudDiscoveryengineV1betaReply {
  /// References in the reply.
  final List<GoogleCloudDiscoveryengineV1betaReplyReference>? references;

  /// DEPRECATED: use `summary` instead. Text reply.
  final String? reply;

  /// Summary based on search results.
  final GoogleCloudDiscoveryengineV1betaSearchResponseSummary? summary;

  /// Creates a new [GoogleCloudDiscoveryengineV1betaReply].
  /// [references] References in the reply.
  /// [reply] DEPRECATED: use `summary` instead. Text reply.
  /// [summary] Summary based on search results.
  GoogleCloudDiscoveryengineV1betaReply({
    this.references,
    this.reply,
    this.summary,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final referencesValue = references;
    if (referencesValue != null) {
      map['references'] = pulumi.Input.encodeList<
          GoogleCloudDiscoveryengineV1betaReplyReference,
          Map<String, dynamic>>(referencesValue, (value) => value.toMap());
    }
    final replyValue = reply;
    if (replyValue != null) {
      map['reply'] = replyValue;
    }
    final summaryValue = summary;
    if (summaryValue != null) {
      map['summary'] = summaryValue.toMap();
    }
    return map;
  }

  factory GoogleCloudDiscoveryengineV1betaReply.fromMap(
      Map<String, dynamic> map) {
    return GoogleCloudDiscoveryengineV1betaReply(
      references: map['references'] == null
          ? null
          : pulumi.Input.decodeList<
                  GoogleCloudDiscoveryengineV1betaReplyReference>(
              map['references'],
              (value) => GoogleCloudDiscoveryengineV1betaReplyReference.fromMap(
                  (value as Map).cast<String, dynamic>())),
      reply: map['reply'] == null ? null : map['reply'] as String,
      summary: map['summary'] == null
          ? null
          : GoogleCloudDiscoveryengineV1betaSearchResponseSummary.fromMap(
              (map['summary'] as Map).cast<String, dynamic>()),
    );
  }
}
