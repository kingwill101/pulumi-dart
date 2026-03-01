// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
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

  /// Creates a new [GoogleCloudDiscoveryengineV1alphaReply].
  /// [references] References in the reply.
  /// [reply] DEPRECATED: use `summary` instead. Text reply.
  /// [summary] Summary based on search results.
  GoogleCloudDiscoveryengineV1alphaReply({
    this.references,
    this.reply,
    this.summary,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'references': ?references == null
          ? null
          : pulumi.Input.encodeList<
              GoogleCloudDiscoveryengineV1alphaReplyReference,
              Map<String, dynamic>
            >(references!, (value) => value.toMap()),
      'reply': ?reply,
      'summary': ?summary == null ? null : summary!.toMap(),
    };
  }

  factory GoogleCloudDiscoveryengineV1alphaReply.fromMap(
    Map<String, dynamic> map,
  ) {
    return GoogleCloudDiscoveryengineV1alphaReply(
      references: map['references'] == null
          ? null
          : pulumi.Input.decodeList<
              GoogleCloudDiscoveryengineV1alphaReplyReference
            >(
              map['references'],
              (value) =>
                  GoogleCloudDiscoveryengineV1alphaReplyReference.fromMap(
                    (value as Map).cast<String, dynamic>(),
                  ),
            ),
      reply: map['reply'] == null ? null : map['reply'] as String,
      summary: map['summary'] == null
          ? null
          : GoogleCloudDiscoveryengineV1alphaSearchResponseSummary.fromMap(
              (map['summary'] as Map).cast<String, dynamic>(),
            ),
    );
  }
}
