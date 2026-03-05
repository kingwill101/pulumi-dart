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
      basePolicyName: (() { final guardedValue = map['basePolicyName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      completionBlocklists: (() { final guardedValue = map['completionBlocklists']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<RaiBlocklistConfig>(guardedValue, (value) => RaiBlocklistConfig.fromMap((value as Map).cast<String, dynamic>()))); })(),
      contentFilters: (() { final guardedValue = map['contentFilters']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<RaiPolicyContentFilter>(guardedValue, (value) => RaiPolicyContentFilter.fromMap((value as Map).cast<String, dynamic>()))); })(),
      mode: (() { final guardedValue = map['mode']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      promptBlocklists: (() { final guardedValue = map['promptBlocklists']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<RaiBlocklistConfig>(guardedValue, (value) => RaiBlocklistConfig.fromMap((value as Map).cast<String, dynamic>()))); })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

