// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'rai_blocklist_config.dart';
import 'rai_policy_content_filter.dart';

/// Azure OpenAI Content Filters properties.
class RaiPolicyProperties {
  /// Name of the base Content Filters.
  final pulumi.Input<String>? basePolicyName;
  final pulumi.Input<List<RaiBlocklistConfig>>? completionBlocklists;
  final pulumi.Input<List<RaiPolicyContentFilter>>? contentFilters;
  /// Content Filters mode.
  final pulumi.Input<String>? mode;
  final pulumi.Input<List<RaiBlocklistConfig>>? promptBlocklists;
  /// Content Filters policy type.
  final pulumi.Input<String>? type;

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
      'completionBlocklists': ?pulumi.Input.mapOptionalInputValue<List<RaiBlocklistConfig>, List<Map<String, dynamic>>>(completionBlocklists, (value) => pulumi.Input.encodeList<RaiBlocklistConfig, Map<String, dynamic>>(value, (value) => value.toMap())),
      'contentFilters': ?pulumi.Input.mapOptionalInputValue<List<RaiPolicyContentFilter>, List<Map<String, dynamic>>>(contentFilters, (value) => pulumi.Input.encodeList<RaiPolicyContentFilter, Map<String, dynamic>>(value, (value) => value.toMap())),
      'mode': ?mode,
      'promptBlocklists': ?pulumi.Input.mapOptionalInputValue<List<RaiBlocklistConfig>, List<Map<String, dynamic>>>(promptBlocklists, (value) => pulumi.Input.encodeList<RaiBlocklistConfig, Map<String, dynamic>>(value, (value) => value.toMap())),
      'type': ?type,
    };
  }

  factory RaiPolicyProperties.fromMap(Map<String, dynamic> map) {
    return RaiPolicyProperties(
      basePolicyName: map['basePolicyName'] == null ? null : (map['basePolicyName']! as String).input(),
      completionBlocklists: map['completionBlocklists'] == null ? null : (pulumi.Input.decodeList<RaiBlocklistConfig>(map['completionBlocklists']!, (value) => RaiBlocklistConfig.fromMap((value as Map).cast<String, dynamic>()))).input(),
      contentFilters: map['contentFilters'] == null ? null : (pulumi.Input.decodeList<RaiPolicyContentFilter>(map['contentFilters']!, (value) => RaiPolicyContentFilter.fromMap((value as Map).cast<String, dynamic>()))).input(),
      mode: map['mode'] == null ? null : (map['mode']! as String).input(),
      promptBlocklists: map['promptBlocklists'] == null ? null : (pulumi.Input.decodeList<RaiBlocklistConfig>(map['promptBlocklists']!, (value) => RaiBlocklistConfig.fromMap((value as Map).cast<String, dynamic>()))).input(),
      type: map['type'] == null ? null : (map['type']! as String).input(),
    );
  }
}

