// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'filtering_tag_response.dart';

/// Set of rules for sending logs for the Monitor resource.
class LogRulesResponse {
  /// List of filtering tags to be used for capturing logs. This only takes effect if SendActivityLogs flag is enabled. If empty, all resources will be captured. If only Exclude action is specified, the rules will apply to the list of all available resources. If Include actions are specified, the rules will only include resources with the associated tags.
  final List<FilteringTagResponse>? filteringTags;
  /// Flag specifying if AAD logs should be sent for the Monitor resource.
  final bool? sendAadLogs;
  /// Flag specifying if activity logs from Azure resources should be sent for the Monitor resource.
  final bool? sendActivityLogs;
  /// Flag specifying if subscription logs should be sent for the Monitor resource.
  final bool? sendSubscriptionLogs;

  /// Creates a new [LogRulesResponse].
  /// [filteringTags] List of filtering tags to be used for capturing logs. This only takes effect if SendActivityLogs flag is enabled. If empty, all resources will be captured. If only Exclude action is specified, the rules will apply to the list of all available resources. If Include actions are specified, the rules will only include resources with the associated tags.
  /// [sendAadLogs] Flag specifying if AAD logs should be sent for the Monitor resource.
  /// [sendActivityLogs] Flag specifying if activity logs from Azure resources should be sent for the Monitor resource.
  /// [sendSubscriptionLogs] Flag specifying if subscription logs should be sent for the Monitor resource.
  LogRulesResponse({
    this.filteringTags,
    this.sendAadLogs,
    this.sendActivityLogs,
    this.sendSubscriptionLogs,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'filteringTags': ?filteringTags == null ? null : pulumi.Input.encodeList<FilteringTagResponse, Map<String, dynamic>>(filteringTags!, (value) => value.toMap()),
      'sendAadLogs': ?sendAadLogs,
      'sendActivityLogs': ?sendActivityLogs,
      'sendSubscriptionLogs': ?sendSubscriptionLogs,
    };
  }

  factory LogRulesResponse.fromMap(Map<String, dynamic> map) {
    return LogRulesResponse(
      filteringTags: map['filteringTags'] == null ? null : pulumi.Input.decodeList<FilteringTagResponse>(map['filteringTags'], (value) => FilteringTagResponse.fromMap((value as Map).cast<String, dynamic>())),
      sendAadLogs: map['sendAadLogs'] == null ? null : map['sendAadLogs'] as bool,
      sendActivityLogs: map['sendActivityLogs'] == null ? null : map['sendActivityLogs'] as bool,
      sendSubscriptionLogs: map['sendSubscriptionLogs'] == null ? null : map['sendSubscriptionLogs'] as bool,
    );
  }
}

