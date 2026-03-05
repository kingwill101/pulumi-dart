// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'custom_blocklist_config.dart';
import 'custom_topic_config.dart';
import 'rai_policy_content_filter.dart';
import 'safety_provider_config.dart';

/// Azure OpenAI Content Filters properties.
class RaiPolicyProperties {
  /// Name of Rai policy.
  final pulumi.Input<String>? basePolicyName;
  /// The list of Content Filters.
  final pulumi.Input<List<RaiPolicyContentFilter>>? contentFilters;
  /// The list of custom Blocklist.
  final pulumi.Input<List<CustomBlocklistConfig>>? customBlocklists;
  /// The list of custom rai topics.
  final pulumi.Input<List<CustomTopicConfig>>? customTopics;
  /// Rai policy mode. The enum value mapping is as below: Default = 0, Deferred=1, Blocking=2, Asynchronous_filter =3. Please use 'Asynchronous_filter' after 2025-06-01. It is the same as 'Deferred' in previous version.
  final pulumi.Input<String>? mode;
  /// The list of Safety Providers.
  final pulumi.Input<List<SafetyProviderConfig>>? safetyProviders;

  /// Creates a new [RaiPolicyProperties].
  /// [basePolicyName] Name of Rai policy.
  /// [contentFilters] The list of Content Filters.
  /// [customBlocklists] The list of custom Blocklist.
  /// [customTopics] The list of custom rai topics.
  /// [mode] Rai policy mode. The enum value mapping is as below: Default = 0, Deferred=1, Blocking=2, Asynchronous_filter =3. Please use 'Asynchronous_filter' after 2025-06-01. It is the same as 'Deferred' in previous version.
  /// [safetyProviders] The list of Safety Providers.
  RaiPolicyProperties({
    this.basePolicyName,
    this.contentFilters,
    this.customBlocklists,
    this.customTopics,
    this.mode,
    this.safetyProviders,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'basePolicyName': ?basePolicyName,
      'contentFilters': ?pulumi.Input.mapOptionalInputValue<List<RaiPolicyContentFilter>, List<Map<String, dynamic>>>(contentFilters, (value) => pulumi.Input.encodeList<RaiPolicyContentFilter, Map<String, dynamic>>(value, (value) => value.toMap())),
      'customBlocklists': ?pulumi.Input.mapOptionalInputValue<List<CustomBlocklistConfig>, List<Map<String, dynamic>>>(customBlocklists, (value) => pulumi.Input.encodeList<CustomBlocklistConfig, Map<String, dynamic>>(value, (value) => value.toMap())),
      'customTopics': ?pulumi.Input.mapOptionalInputValue<List<CustomTopicConfig>, List<Map<String, dynamic>>>(customTopics, (value) => pulumi.Input.encodeList<CustomTopicConfig, Map<String, dynamic>>(value, (value) => value.toMap())),
      'mode': ?mode,
      'safetyProviders': ?pulumi.Input.mapOptionalInputValue<List<SafetyProviderConfig>, List<Map<String, dynamic>>>(safetyProviders, (value) => pulumi.Input.encodeList<SafetyProviderConfig, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory RaiPolicyProperties.fromMap(Map<String, dynamic> map) {
    return RaiPolicyProperties(
      basePolicyName: (() { final guardedValue = map['basePolicyName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      contentFilters: (() { final guardedValue = map['contentFilters']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<RaiPolicyContentFilter>(guardedValue, (value) => RaiPolicyContentFilter.fromMap((value as Map).cast<String, dynamic>()))); })(),
      customBlocklists: (() { final guardedValue = map['customBlocklists']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<CustomBlocklistConfig>(guardedValue, (value) => CustomBlocklistConfig.fromMap((value as Map).cast<String, dynamic>()))); })(),
      customTopics: (() { final guardedValue = map['customTopics']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<CustomTopicConfig>(guardedValue, (value) => CustomTopicConfig.fromMap((value as Map).cast<String, dynamic>()))); })(),
      mode: (() { final guardedValue = map['mode']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      safetyProviders: (() { final guardedValue = map['safetyProviders']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<SafetyProviderConfig>(guardedValue, (value) => SafetyProviderConfig.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}

