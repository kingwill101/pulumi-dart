// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'filtering_tag_response.dart';

/// Set of rules for sending logs for the Monitor resource.
class LogRulesResponse {
  /// List of filtering tags to be used for capturing logs. This only takes effect if SendActivityLogs flag is enabled. If empty, all resources will be captured. If only Exclude action is specified, the rules will apply to the list of all available resources. If Include actions are specified, the rules will only include resources with the associated tags.
  final pulumi.Input<List<FilteringTagResponse>>? filteringTags;
  /// Flag specifying if AAD logs should be sent for the Monitor resource.
  final pulumi.Input<bool>? sendAadLogs;
  /// Flag specifying if activity logs from Azure resources should be sent for the Monitor resource.
  final pulumi.Input<bool>? sendActivityLogs;
  /// Flag specifying if subscription logs should be sent for the Monitor resource.
  final pulumi.Input<bool>? sendSubscriptionLogs;

  /// Creates a new [LogRulesResponse].
  /// [filteringTags] List of filtering tags to be used for capturing logs. This only takes effect if SendActivityLogs flag is enabled. If empty, all resources will be captured. If only Exclude action is specified, the rules will apply to the list of all available resources. If Include actions are specified, the rules will only include resources with the associated tags.
  /// [sendAadLogs] Flag specifying if AAD logs should be sent for the Monitor resource.
  /// [sendActivityLogs] Flag specifying if activity logs from Azure resources should be sent for the Monitor resource.
  /// [sendSubscriptionLogs] Flag specifying if subscription logs should be sent for the Monitor resource.
  const LogRulesResponse({
    this.filteringTags,
    this.sendAadLogs,
    this.sendActivityLogs,
    this.sendSubscriptionLogs,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'filteringTags': ?pulumi.Input.mapOptionalInputValue<List<FilteringTagResponse>, List<Map<String, dynamic>>>(filteringTags, (value) => pulumi.Input.encodeList<FilteringTagResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'sendAadLogs': ?sendAadLogs,
      'sendActivityLogs': ?sendActivityLogs,
      'sendSubscriptionLogs': ?sendSubscriptionLogs,
    };
  }

  factory LogRulesResponse.fromMap(Map<String, dynamic> map) {
    return LogRulesResponse(
      filteringTags: (() { final guardedValue = map['filteringTags']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<FilteringTagResponse>(guardedValue, (value) => FilteringTagResponse.fromMap((value as Map).cast<String, dynamic>()))); })(),
      sendAadLogs: (() { final guardedValue = map['sendAadLogs']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      sendActivityLogs: (() { final guardedValue = map['sendActivityLogs']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      sendSubscriptionLogs: (() { final guardedValue = map['sendSubscriptionLogs']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
    );
  }
}

