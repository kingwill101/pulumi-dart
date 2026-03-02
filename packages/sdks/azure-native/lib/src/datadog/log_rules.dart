// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'filtering_tag.dart';

/// Set of rules for sending logs for the Monitor resource.
class LogRules {
  /// List of filtering tags to be used for capturing logs. This only takes effect if SendResourceLogs flag is enabled. If empty, all resources will be captured. If only Exclude action is specified, the rules will apply to the list of all available resources. If Include actions are specified, the rules will only include resources with the associated tags.
  final pulumi.Input<List<FilteringTag>>? filteringTags;
  /// Flag specifying if AAD logs should be sent for the Monitor resource.
  final pulumi.Input<bool>? sendAadLogs;
  /// Flag specifying if Azure resource logs should be sent for the Monitor resource.
  final pulumi.Input<bool>? sendResourceLogs;
  /// Flag specifying if Azure subscription logs should be sent for the Monitor resource.
  final pulumi.Input<bool>? sendSubscriptionLogs;

  /// Creates a new [LogRules].
  /// [filteringTags] List of filtering tags to be used for capturing logs. This only takes effect if SendResourceLogs flag is enabled. If empty, all resources will be captured. If only Exclude action is specified, the rules will apply to the list of all available resources. If Include actions are specified, the rules will only include resources with the associated tags.
  /// [sendAadLogs] Flag specifying if AAD logs should be sent for the Monitor resource.
  /// [sendResourceLogs] Flag specifying if Azure resource logs should be sent for the Monitor resource.
  /// [sendSubscriptionLogs] Flag specifying if Azure subscription logs should be sent for the Monitor resource.
  LogRules({
    this.filteringTags,
    this.sendAadLogs,
    this.sendResourceLogs,
    this.sendSubscriptionLogs,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'filteringTags': ?pulumi.Input.mapOptionalInputValue<List<FilteringTag>, List<Map<String, dynamic>>>(filteringTags, (value) => pulumi.Input.encodeList<FilteringTag, Map<String, dynamic>>(value, (value) => value.toMap())),
      'sendAadLogs': ?sendAadLogs,
      'sendResourceLogs': ?sendResourceLogs,
      'sendSubscriptionLogs': ?sendSubscriptionLogs,
    };
  }

  factory LogRules.fromMap(Map<String, dynamic> map) {
    return LogRules(
      filteringTags: map['filteringTags'] == null ? null : (pulumi.Input.decodeList<FilteringTag>(map['filteringTags'], (value) => FilteringTag.fromMap((value as Map).cast<String, dynamic>()))).input(),
      sendAadLogs: map['sendAadLogs'] == null ? null : (map['sendAadLogs'] as bool).input(),
      sendResourceLogs: map['sendResourceLogs'] == null ? null : (map['sendResourceLogs'] as bool).input(),
      sendSubscriptionLogs: map['sendSubscriptionLogs'] == null ? null : (map['sendSubscriptionLogs'] as bool).input(),
    );
  }
}

