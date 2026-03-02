// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'filtering_tag.dart';

/// Set of rules for sending logs for the Monitor resource.
class LogRules {
  /// List of filtering tags to be used for capturing logs. This only takes effect if SendActivityLogs flag is enabled. If empty, all resources will be captured. If only Exclude action is specified, the rules will apply to the list of all available resources. If Include actions are specified, the rules will only include resources with the associated tags.
  final pulumi.Input<List<FilteringTag>>? filteringTags;
  /// Flag specifying if AAD logs should be sent for the Monitor resource.
  final pulumi.Input<bool>? sendAadLogs;
  /// Flag specifying if activity logs from Azure resources should be sent for the Monitor resource.
  final pulumi.Input<bool>? sendActivityLogs;
  /// Flag specifying if subscription logs should be sent for the Monitor resource.
  final pulumi.Input<bool>? sendSubscriptionLogs;

  /// Creates a new [LogRules].
  /// [filteringTags] List of filtering tags to be used for capturing logs. This only takes effect if SendActivityLogs flag is enabled. If empty, all resources will be captured. If only Exclude action is specified, the rules will apply to the list of all available resources. If Include actions are specified, the rules will only include resources with the associated tags.
  /// [sendAadLogs] Flag specifying if AAD logs should be sent for the Monitor resource.
  /// [sendActivityLogs] Flag specifying if activity logs from Azure resources should be sent for the Monitor resource.
  /// [sendSubscriptionLogs] Flag specifying if subscription logs should be sent for the Monitor resource.
  LogRules({
    this.filteringTags,
    this.sendAadLogs,
    this.sendActivityLogs,
    this.sendSubscriptionLogs,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'filteringTags': ?pulumi.Input.mapOptionalInputValue<List<FilteringTag>, List<Map<String, dynamic>>>(filteringTags, (value) => pulumi.Input.encodeList<FilteringTag, Map<String, dynamic>>(value, (value) => value.toMap())),
      'sendAadLogs': ?sendAadLogs,
      'sendActivityLogs': ?sendActivityLogs,
      'sendSubscriptionLogs': ?sendSubscriptionLogs,
    };
  }

  factory LogRules.fromMap(Map<String, dynamic> map) {
    return LogRules(
      filteringTags: map['filteringTags'] == null ? null : (pulumi.Input.decodeList<FilteringTag>(map['filteringTags'], (value) => FilteringTag.fromMap((value as Map).cast<String, dynamic>()))).input(),
      sendAadLogs: map['sendAadLogs'] == null ? null : (map['sendAadLogs'] as bool).input(),
      sendActivityLogs: map['sendActivityLogs'] == null ? null : (map['sendActivityLogs'] as bool).input(),
      sendSubscriptionLogs: map['sendSubscriptionLogs'] == null ? null : (map['sendSubscriptionLogs'] as bool).input(),
    );
  }
}

