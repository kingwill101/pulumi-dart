// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'rai_blocklist_config_response.dart';
import 'rai_policy_content_filter_response.dart';

/// Azure OpenAI Content Filters properties.
class RaiPolicyPropertiesResponse {
  /// Name of the base Content Filters.
  final pulumi.Input<String>? basePolicyName;
  final pulumi.Input<List<RaiBlocklistConfigResponse>>? completionBlocklists;
  final pulumi.Input<List<RaiPolicyContentFilterResponse>>? contentFilters;
  /// Content Filters mode.
  final pulumi.Input<String>? mode;
  final pulumi.Input<List<RaiBlocklistConfigResponse>>? promptBlocklists;
  /// Content Filters policy type.
  final pulumi.Input<String>? type;

  /// Creates a new [RaiPolicyPropertiesResponse].
  /// [basePolicyName] Name of the base Content Filters.
  /// [completionBlocklists] Optional.
  /// [contentFilters] Optional.
  /// [mode] Content Filters mode.
  /// [promptBlocklists] Optional.
  /// [type] Content Filters policy type.
  RaiPolicyPropertiesResponse({
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
      basePolicyName: map['basePolicyName'] == null ? null : (map['basePolicyName'] as String).input(),
      completionBlocklists: map['completionBlocklists'] == null ? null : (pulumi.Input.decodeList<RaiBlocklistConfigResponse>(map['completionBlocklists'], (value) => RaiBlocklistConfigResponse.fromMap((value as Map).cast<String, dynamic>()))).input(),
      contentFilters: map['contentFilters'] == null ? null : (pulumi.Input.decodeList<RaiPolicyContentFilterResponse>(map['contentFilters'], (value) => RaiPolicyContentFilterResponse.fromMap((value as Map).cast<String, dynamic>()))).input(),
      mode: map['mode'] == null ? null : (map['mode'] as String).input(),
      promptBlocklists: map['promptBlocklists'] == null ? null : (pulumi.Input.decodeList<RaiBlocklistConfigResponse>(map['promptBlocklists'], (value) => RaiBlocklistConfigResponse.fromMap((value as Map).cast<String, dynamic>()))).input(),
      type: map['type'] == null ? null : (map['type'] as String).input(),
    );
  }
}

