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
      basePolicyName: map['basePolicyName'] == null ? null : (map['basePolicyName'] as String).input(),
      contentFilters: map['contentFilters'] == null ? null : (pulumi.Input.decodeList<RaiPolicyContentFilter>(map['contentFilters'], (value) => RaiPolicyContentFilter.fromMap((value as Map).cast<String, dynamic>()))).input(),
      customBlocklists: map['customBlocklists'] == null ? null : (pulumi.Input.decodeList<CustomBlocklistConfig>(map['customBlocklists'], (value) => CustomBlocklistConfig.fromMap((value as Map).cast<String, dynamic>()))).input(),
      customTopics: map['customTopics'] == null ? null : (pulumi.Input.decodeList<CustomTopicConfig>(map['customTopics'], (value) => CustomTopicConfig.fromMap((value as Map).cast<String, dynamic>()))).input(),
      mode: map['mode'] == null ? null : (map['mode'] as String).input(),
      safetyProviders: map['safetyProviders'] == null ? null : (pulumi.Input.decodeList<SafetyProviderConfig>(map['safetyProviders'], (value) => SafetyProviderConfig.fromMap((value as Map).cast<String, dynamic>()))).input(),
    );
  }
}

