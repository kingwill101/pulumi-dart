// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'custom_blocklist_config_response.dart';
import 'rai_policy_content_filter_subscription_rai_policy_response.dart';
import 'safety_provider_config_response.dart';

/// Azure OpenAI Content Filters properties.
class RaiPolicyPropertiesSubscriptionRaiPolicyResponse {
  /// Name of Rai policy.
  final pulumi.Input<String?>? basePolicyName;
  /// The list of Content Filters.
  final pulumi.Input<List<RaiPolicyContentFilterSubscriptionRaiPolicyResponse>?>? contentFilters;
  /// The list of custom Blocklist.
  final pulumi.Input<List<CustomBlocklistConfigResponse>?>? customBlocklists;
  /// Rai policy mode. The enum value mapping is as below: Default = 0, Deferred=1, Blocking=2, Asynchronous_filter =3. Please use 'Asynchronous_filter' after 2025-06-01. It is the same as 'Deferred' in previous version.
  final pulumi.Input<String?>? mode;
  /// The list of Safety Providers.
  final pulumi.Input<List<SafetyProviderConfigResponse>?>? safetyProviders;
  /// Content Filters policy type.
  final pulumi.Input<String> type;

  /// Creates a new [RaiPolicyPropertiesSubscriptionRaiPolicyResponse].
  /// [basePolicyName] Name of Rai policy.
  /// [contentFilters] The list of Content Filters.
  /// [customBlocklists] The list of custom Blocklist.
  /// [mode] Rai policy mode. The enum value mapping is as below: Default = 0, Deferred=1, Blocking=2, Asynchronous_filter =3. Please use 'Asynchronous_filter' after 2025-06-01. It is the same as 'Deferred' in previous version.
  /// [safetyProviders] The list of Safety Providers.
  /// [type] Content Filters policy type.
  const RaiPolicyPropertiesSubscriptionRaiPolicyResponse({
    this.basePolicyName,
    this.contentFilters,
    this.customBlocklists,
    this.mode,
    this.safetyProviders,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'basePolicyName': ?basePolicyName,
      'contentFilters': ?pulumi.Input.mapOptionalInputValue<List<RaiPolicyContentFilterSubscriptionRaiPolicyResponse>, List<Map<String, dynamic>>>(contentFilters, (value) => pulumi.Input.encodeList<RaiPolicyContentFilterSubscriptionRaiPolicyResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'customBlocklists': ?pulumi.Input.mapOptionalInputValue<List<CustomBlocklistConfigResponse>, List<Map<String, dynamic>>>(customBlocklists, (value) => pulumi.Input.encodeList<CustomBlocklistConfigResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'mode': ?mode,
      'safetyProviders': ?pulumi.Input.mapOptionalInputValue<List<SafetyProviderConfigResponse>, List<Map<String, dynamic>>>(safetyProviders, (value) => pulumi.Input.encodeList<SafetyProviderConfigResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'type': type,
    };
  }

  factory RaiPolicyPropertiesSubscriptionRaiPolicyResponse.fromMap(Map<String, dynamic> map) {
    return RaiPolicyPropertiesSubscriptionRaiPolicyResponse(
      basePolicyName: (() { final guardedValue = map['basePolicyName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      contentFilters: (() { final guardedValue = map['contentFilters']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<RaiPolicyContentFilterSubscriptionRaiPolicyResponse>(guardedValue, (value) => RaiPolicyContentFilterSubscriptionRaiPolicyResponse.fromMap((value as Map).cast<String, dynamic>()))); })(),
      customBlocklists: (() { final guardedValue = map['customBlocklists']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<CustomBlocklistConfigResponse>(guardedValue, (value) => CustomBlocklistConfigResponse.fromMap((value as Map).cast<String, dynamic>()))); })(),
      mode: (() { final guardedValue = map['mode']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      safetyProviders: (() { final guardedValue = map['safetyProviders']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<SafetyProviderConfigResponse>(guardedValue, (value) => SafetyProviderConfigResponse.fromMap((value as Map).cast<String, dynamic>()))); })(),
      type: pulumi.Input.fromValue(map['type'] as String),
    );
  }
}
