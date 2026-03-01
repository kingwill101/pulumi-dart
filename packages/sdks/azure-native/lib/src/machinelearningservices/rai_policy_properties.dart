// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'rai_blocklist_config.dart';
import 'rai_policy_content_filter.dart';

/// Azure OpenAI Content Filters properties.
class RaiPolicyProperties {
  /// Name of the base Content Filters.
  final String? basePolicyName;
  final List<RaiBlocklistConfig>? completionBlocklists;
  final List<RaiPolicyContentFilter>? contentFilters;
  /// Content Filters mode.
  final String? mode;
  final List<RaiBlocklistConfig>? promptBlocklists;
  /// Content Filters policy type.
  final String? type;

  /// Creates a new [RaiPolicyProperties].
  /// [basePolicyName] Name of the base Content Filters.
  /// [completionBlocklists] Optional.
  /// [contentFilters] Optional.
  /// [mode] Content Filters mode.
  /// [promptBlocklists] Optional.
  /// [type] Content Filters policy type.
  RaiPolicyProperties({
    this.basePolicyName,
    this.completionBlocklists,
    this.contentFilters,
    this.mode,
    this.promptBlocklists,
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'basePolicyName': ?basePolicyName,
      'completionBlocklists': ?completionBlocklists == null ? null : pulumi.Input.encodeList<RaiBlocklistConfig, Map<String, dynamic>>(completionBlocklists!, (value) => value.toMap()),
      'contentFilters': ?contentFilters == null ? null : pulumi.Input.encodeList<RaiPolicyContentFilter, Map<String, dynamic>>(contentFilters!, (value) => value.toMap()),
      'mode': ?mode,
      'promptBlocklists': ?promptBlocklists == null ? null : pulumi.Input.encodeList<RaiBlocklistConfig, Map<String, dynamic>>(promptBlocklists!, (value) => value.toMap()),
      'type': ?type,
    };
  }

  factory RaiPolicyProperties.fromMap(Map<String, dynamic> map) {
    return RaiPolicyProperties(
      basePolicyName: map['basePolicyName'] == null ? null : map['basePolicyName'] as String,
      completionBlocklists: map['completionBlocklists'] == null ? null : pulumi.Input.decodeList<RaiBlocklistConfig>(map['completionBlocklists'], (value) => RaiBlocklistConfig.fromMap((value as Map).cast<String, dynamic>())),
      contentFilters: map['contentFilters'] == null ? null : pulumi.Input.decodeList<RaiPolicyContentFilter>(map['contentFilters'], (value) => RaiPolicyContentFilter.fromMap((value as Map).cast<String, dynamic>())),
      mode: map['mode'] == null ? null : map['mode'] as String,
      promptBlocklists: map['promptBlocklists'] == null ? null : pulumi.Input.decodeList<RaiBlocklistConfig>(map['promptBlocklists'], (value) => RaiBlocklistConfig.fromMap((value as Map).cast<String, dynamic>())),
      type: map['type'] == null ? null : map['type'] as String,
    );
  }
}

