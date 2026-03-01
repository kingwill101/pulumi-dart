// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'elasticsearch_logs_filtering_tag.dart';

class ElasticsearchLogs {
  /// A list of `filtering_tag` blocks as defined above.
  final List<ElasticsearchLogsFilteringTag>? filteringTags;
  /// Specifies if the Azure Activity Logs should be sent to the Elasticsearch cluster. Defaults to `false`.
  final bool? sendActivityLogs;
  /// Specifies if the AzureAD Logs should be sent to the Elasticsearch cluster. Defaults to `false`.
  final bool? sendAzureadLogs;
  /// Specifies if the Azure Subscription Logs should be sent to the Elasticsearch cluster. Defaults to `false`.
  final bool? sendSubscriptionLogs;

  /// Creates a new [ElasticsearchLogs].
  /// [filteringTags] A list of `filtering_tag` blocks as defined above.
  /// [sendActivityLogs] Specifies if the Azure Activity Logs should be sent to the Elasticsearch cluster. Defaults to `false`.
  /// [sendAzureadLogs] Specifies if the AzureAD Logs should be sent to the Elasticsearch cluster. Defaults to `false`.
  /// [sendSubscriptionLogs] Specifies if the Azure Subscription Logs should be sent to the Elasticsearch cluster. Defaults to `false`.
  ElasticsearchLogs({
    this.filteringTags,
    this.sendActivityLogs,
    this.sendAzureadLogs,
    this.sendSubscriptionLogs,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'filteringTags': ?filteringTags == null ? null : pulumi.Input.encodeList<ElasticsearchLogsFilteringTag, Map<String, dynamic>>(filteringTags!, (value) => value.toMap()),
      'sendActivityLogs': ?sendActivityLogs,
      'sendAzureadLogs': ?sendAzureadLogs,
      'sendSubscriptionLogs': ?sendSubscriptionLogs,
    };
  }

  factory ElasticsearchLogs.fromMap(Map<String, dynamic> map) {
    return ElasticsearchLogs(
      filteringTags: map['filteringTags'] == null ? null : pulumi.Input.decodeList<ElasticsearchLogsFilteringTag>(map['filteringTags'], (value) => ElasticsearchLogsFilteringTag.fromMap((value as Map).cast<String, dynamic>())),
      sendActivityLogs: map['sendActivityLogs'] == null ? null : map['sendActivityLogs'] as bool,
      sendAzureadLogs: map['sendAzureadLogs'] == null ? null : map['sendAzureadLogs'] as bool,
      sendSubscriptionLogs: map['sendSubscriptionLogs'] == null ? null : map['sendSubscriptionLogs'] as bool,
    );
  }
}

