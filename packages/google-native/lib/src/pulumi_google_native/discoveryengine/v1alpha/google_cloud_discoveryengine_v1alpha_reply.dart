// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' hide Config;
import 'google_cloud_discoveryengine_v1alpha_reply_reference.dart';
import 'google_cloud_discoveryengine_v1alpha_search_response_summary.dart';

/// Defines a reply message to user.
class GoogleCloudDiscoveryengineV1alphaReply {
  /// References in the reply.
  final List<GoogleCloudDiscoveryengineV1alphaReplyReference>? references;

  /// DEPRECATED: use `summary` instead. Text reply.
  final String? reply;

  /// Summary based on search results.
  final GoogleCloudDiscoveryengineV1alphaSearchResponseSummary? summary;

  GoogleCloudDiscoveryengineV1alphaReply({
    this.references,
    this.reply,
    this.summary,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final referencesValue = references;
    if (referencesValue != null) {
      map['references'] = Input.encodeList<
          GoogleCloudDiscoveryengineV1alphaReplyReference,
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

  factory GoogleCloudDiscoveryengineV1alphaReply.fromMap(
      Map<String, dynamic> map) {
    return GoogleCloudDiscoveryengineV1alphaReply(
      references: map['references'] == null
          ? null
          : Input.decodeList<GoogleCloudDiscoveryengineV1alphaReplyReference>(
              map['references'],
              (value) =>
                  GoogleCloudDiscoveryengineV1alphaReplyReference.fromMap(
                      (value as Map).cast<String, dynamic>())),
      reply: map['reply'] == null ? null : map['reply'] as String,
      summary: map['summary'] == null
          ? null
          : GoogleCloudDiscoveryengineV1alphaSearchResponseSummary.fromMap(
              (map['summary'] as Map).cast<String, dynamic>()),
    );
  }
}
