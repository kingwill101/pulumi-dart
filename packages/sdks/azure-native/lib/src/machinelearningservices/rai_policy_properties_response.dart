// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'rai_blocklist_config_response.dart';
import 'rai_policy_content_filter_response.dart';

/// Azure OpenAI Content Filters properties.
class RaiPolicyPropertiesResponse {
  /// Name of the base Content Filters.
  final String? basePolicyName;
  final List<RaiBlocklistConfigResponse>? completionBlocklists;
  final List<RaiPolicyContentFilterResponse>? contentFilters;
  /// Content Filters mode.
  final String? mode;
  final List<RaiBlocklistConfigResponse>? promptBlocklists;
  /// Content Filters policy type.
  final String? type;

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
      'completionBlocklists': ?completionBlocklists == null ? null : pulumi.Input.encodeList<RaiBlocklistConfigResponse, Map<String, dynamic>>(completionBlocklists!, (value) => value.toMap()),
      'contentFilters': ?contentFilters == null ? null : pulumi.Input.encodeList<RaiPolicyContentFilterResponse, Map<String, dynamic>>(contentFilters!, (value) => value.toMap()),
      'mode': ?mode,
      'promptBlocklists': ?promptBlocklists == null ? null : pulumi.Input.encodeList<RaiBlocklistConfigResponse, Map<String, dynamic>>(promptBlocklists!, (value) => value.toMap()),
      'type': ?type,
    };
  }

  factory RaiPolicyPropertiesResponse.fromMap(Map<String, dynamic> map) {
    return RaiPolicyPropertiesResponse(
      basePolicyName: map['basePolicyName'] == null ? null : map['basePolicyName'] as String,
      completionBlocklists: map['completionBlocklists'] == null ? null : pulumi.Input.decodeList<RaiBlocklistConfigResponse>(map['completionBlocklists'], (value) => RaiBlocklistConfigResponse.fromMap((value as Map).cast<String, dynamic>())),
      contentFilters: map['contentFilters'] == null ? null : pulumi.Input.decodeList<RaiPolicyContentFilterResponse>(map['contentFilters'], (value) => RaiPolicyContentFilterResponse.fromMap((value as Map).cast<String, dynamic>())),
      mode: map['mode'] == null ? null : map['mode'] as String,
      promptBlocklists: map['promptBlocklists'] == null ? null : pulumi.Input.decodeList<RaiBlocklistConfigResponse>(map['promptBlocklists'], (value) => RaiBlocklistConfigResponse.fromMap((value as Map).cast<String, dynamic>())),
      type: map['type'] == null ? null : map['type'] as String,
    );
  }
}

