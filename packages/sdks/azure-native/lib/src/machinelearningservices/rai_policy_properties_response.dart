// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'rai_blocklist_config_response.dart';
import 'rai_policy_content_filter_response.dart';

/// Azure OpenAI Content Filters properties.
class RaiPolicyPropertiesResponse {
  /// Name of the base Content Filters.
  final pulumi.Input<String?>? basePolicyName;
  final pulumi.Input<List<RaiBlocklistConfigResponse>?>? completionBlocklists;
  final pulumi.Input<List<RaiPolicyContentFilterResponse>?>? contentFilters;
  /// Content Filters mode.
  final pulumi.Input<String?>? mode;
  final pulumi.Input<List<RaiBlocklistConfigResponse>?>? promptBlocklists;
  /// Content Filters policy type.
  final pulumi.Input<String?>? type;

  /// Creates a new [RaiPolicyPropertiesResponse].
  /// [basePolicyName] Name of the base Content Filters.
  /// [completionBlocklists] Optional.
  /// [contentFilters] Optional.
  /// [mode] Content Filters mode.
  /// [promptBlocklists] Optional.
  /// [type] Content Filters policy type.
  const RaiPolicyPropertiesResponse({
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
      'completionBlocklists': ?pulumi.Input.mapOptionalInputValue<List<RaiBlocklistConfigResponse>, List<Map<String, dynamic>>>(completionBlocklists, (value) => pulumi.Input.encodeList<RaiBlocklistConfigResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'contentFilters': ?pulumi.Input.mapOptionalInputValue<List<RaiPolicyContentFilterResponse>, List<Map<String, dynamic>>>(contentFilters, (value) => pulumi.Input.encodeList<RaiPolicyContentFilterResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'mode': ?mode,
      'promptBlocklists': ?pulumi.Input.mapOptionalInputValue<List<RaiBlocklistConfigResponse>, List<Map<String, dynamic>>>(promptBlocklists, (value) => pulumi.Input.encodeList<RaiBlocklistConfigResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'type': ?type,
    };
  }

  factory RaiPolicyPropertiesResponse.fromMap(Map<String, dynamic> map) {
    return RaiPolicyPropertiesResponse(
      basePolicyName: (() { final guardedValue = map['basePolicyName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      completionBlocklists: (() { final guardedValue = map['completionBlocklists']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<RaiBlocklistConfigResponse>(guardedValue, (value) => RaiBlocklistConfigResponse.fromMap((value as Map).cast<String, dynamic>()))); })(),
      contentFilters: (() { final guardedValue = map['contentFilters']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<RaiPolicyContentFilterResponse>(guardedValue, (value) => RaiPolicyContentFilterResponse.fromMap((value as Map).cast<String, dynamic>()))); })(),
      mode: (() { final guardedValue = map['mode']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      promptBlocklists: (() { final guardedValue = map['promptBlocklists']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<RaiBlocklistConfigResponse>(guardedValue, (value) => RaiBlocklistConfigResponse.fromMap((value as Map).cast<String, dynamic>()))); })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
