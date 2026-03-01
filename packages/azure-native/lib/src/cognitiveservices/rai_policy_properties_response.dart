// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'custom_blocklist_config_response.dart';
import 'custom_topic_config_response.dart';
import 'rai_policy_content_filter_response.dart';
import 'safety_provider_config_response.dart';

/// Azure OpenAI Content Filters properties.
class RaiPolicyPropertiesResponse {
  /// Name of Rai policy.
  final String? basePolicyName;
  /// The list of Content Filters.
  final List<RaiPolicyContentFilterResponse>? contentFilters;
  /// The list of custom Blocklist.
  final List<CustomBlocklistConfigResponse>? customBlocklists;
  /// The list of custom rai topics.
  final List<CustomTopicConfigResponse>? customTopics;
  /// Rai policy mode. The enum value mapping is as below: Default = 0, Deferred=1, Blocking=2, Asynchronous_filter =3. Please use 'Asynchronous_filter' after 2025-06-01. It is the same as 'Deferred' in previous version.
  final String? mode;
  /// The list of Safety Providers.
  final List<SafetyProviderConfigResponse>? safetyProviders;
  /// Content Filters policy type.
  final String type;

  /// Creates a new [RaiPolicyPropertiesResponse].
  /// [basePolicyName] Name of Rai policy.
  /// [contentFilters] The list of Content Filters.
  /// [customBlocklists] The list of custom Blocklist.
  /// [customTopics] The list of custom rai topics.
  /// [mode] Rai policy mode. The enum value mapping is as below: Default = 0, Deferred=1, Blocking=2, Asynchronous_filter =3. Please use 'Asynchronous_filter' after 2025-06-01. It is the same as 'Deferred' in previous version.
  /// [safetyProviders] The list of Safety Providers.
  /// [type] Content Filters policy type.
  RaiPolicyPropertiesResponse({
    this.basePolicyName,
    this.contentFilters,
    this.customBlocklists,
    this.customTopics,
    this.mode,
    this.safetyProviders,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'basePolicyName': ?basePolicyName,
      'contentFilters': ?contentFilters == null ? null : pulumi.Input.encodeList<RaiPolicyContentFilterResponse, Map<String, dynamic>>(contentFilters!, (value) => value.toMap()),
      'customBlocklists': ?customBlocklists == null ? null : pulumi.Input.encodeList<CustomBlocklistConfigResponse, Map<String, dynamic>>(customBlocklists!, (value) => value.toMap()),
      'customTopics': ?customTopics == null ? null : pulumi.Input.encodeList<CustomTopicConfigResponse, Map<String, dynamic>>(customTopics!, (value) => value.toMap()),
      'mode': ?mode,
      'safetyProviders': ?safetyProviders == null ? null : pulumi.Input.encodeList<SafetyProviderConfigResponse, Map<String, dynamic>>(safetyProviders!, (value) => value.toMap()),
      'type': type,
    };
  }

  factory RaiPolicyPropertiesResponse.fromMap(Map<String, dynamic> map) {
    return RaiPolicyPropertiesResponse(
      basePolicyName: map['basePolicyName'] == null ? null : map['basePolicyName'] as String,
      contentFilters: map['contentFilters'] == null ? null : pulumi.Input.decodeList<RaiPolicyContentFilterResponse>(map['contentFilters'], (value) => RaiPolicyContentFilterResponse.fromMap((value as Map).cast<String, dynamic>())),
      customBlocklists: map['customBlocklists'] == null ? null : pulumi.Input.decodeList<CustomBlocklistConfigResponse>(map['customBlocklists'], (value) => CustomBlocklistConfigResponse.fromMap((value as Map).cast<String, dynamic>())),
      customTopics: map['customTopics'] == null ? null : pulumi.Input.decodeList<CustomTopicConfigResponse>(map['customTopics'], (value) => CustomTopicConfigResponse.fromMap((value as Map).cast<String, dynamic>())),
      mode: map['mode'] == null ? null : map['mode'] as String,
      safetyProviders: map['safetyProviders'] == null ? null : pulumi.Input.decodeList<SafetyProviderConfigResponse>(map['safetyProviders'], (value) => SafetyProviderConfigResponse.fromMap((value as Map).cast<String, dynamic>())),
      type: map['type'] as String,
    );
  }
}

