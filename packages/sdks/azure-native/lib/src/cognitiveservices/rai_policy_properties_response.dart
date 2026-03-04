// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'custom_blocklist_config_response.dart';
import 'custom_topic_config_response.dart';
import 'rai_policy_content_filter_response.dart';
import 'safety_provider_config_response.dart';

/// Azure OpenAI Content Filters properties.
class RaiPolicyPropertiesResponse {
  /// Name of Rai policy.
  final pulumi.Input<String>? basePolicyName;

  /// The list of Content Filters.
  final pulumi.Input<List<RaiPolicyContentFilterResponse>>? contentFilters;

  /// The list of custom Blocklist.
  final pulumi.Input<List<CustomBlocklistConfigResponse>>? customBlocklists;

  /// The list of custom rai topics.
  final pulumi.Input<List<CustomTopicConfigResponse>>? customTopics;

  /// Rai policy mode. The enum value mapping is as below: Default = 0, Deferred=1, Blocking=2, Asynchronous_filter =3. Please use 'Asynchronous_filter' after 2025-06-01. It is the same as 'Deferred' in previous version.
  final pulumi.Input<String>? mode;

  /// The list of Safety Providers.
  final pulumi.Input<List<SafetyProviderConfigResponse>>? safetyProviders;

  /// Content Filters policy type.
  final pulumi.Input<String> type;

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
      'contentFilters':
          ?pulumi.Input.mapOptionalInputValue<
            List<RaiPolicyContentFilterResponse>,
            List<Map<String, dynamic>>
          >(
            contentFilters,
            (value) =>
                pulumi.Input.encodeList<
                  RaiPolicyContentFilterResponse,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'customBlocklists':
          ?pulumi.Input.mapOptionalInputValue<
            List<CustomBlocklistConfigResponse>,
            List<Map<String, dynamic>>
          >(
            customBlocklists,
            (value) =>
                pulumi.Input.encodeList<
                  CustomBlocklistConfigResponse,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'customTopics':
          ?pulumi.Input.mapOptionalInputValue<
            List<CustomTopicConfigResponse>,
            List<Map<String, dynamic>>
          >(
            customTopics,
            (value) =>
                pulumi.Input.encodeList<
                  CustomTopicConfigResponse,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'mode': ?mode,
      'safetyProviders':
          ?pulumi.Input.mapOptionalInputValue<
            List<SafetyProviderConfigResponse>,
            List<Map<String, dynamic>>
          >(
            safetyProviders,
            (value) =>
                pulumi.Input.encodeList<
                  SafetyProviderConfigResponse,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'type': type,
    };
  }

  factory RaiPolicyPropertiesResponse.fromMap(Map<String, dynamic> map) {
    return RaiPolicyPropertiesResponse(
      basePolicyName: (() {
        final guardedValue = map['basePolicyName'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      contentFilters: (() {
        final guardedValue = map['contentFilters'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<RaiPolicyContentFilterResponse>(
            guardedValue,
            (value) => RaiPolicyContentFilterResponse.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
        );
      })(),
      customBlocklists: (() {
        final guardedValue = map['customBlocklists'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<CustomBlocklistConfigResponse>(
            guardedValue,
            (value) => CustomBlocklistConfigResponse.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
        );
      })(),
      customTopics: (() {
        final guardedValue = map['customTopics'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<CustomTopicConfigResponse>(
            guardedValue,
            (value) => CustomTopicConfigResponse.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
        );
      })(),
      mode: (() {
        final guardedValue = map['mode'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      safetyProviders: (() {
        final guardedValue = map['safetyProviders'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<SafetyProviderConfigResponse>(
            guardedValue,
            (value) => SafetyProviderConfigResponse.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
        );
      })(),
      type: pulumi.Input.fromValue(map['type'] as String),
    );
  }
}
