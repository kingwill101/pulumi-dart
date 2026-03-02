// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Azure OpenAI Content Filter.
class RaiPolicyContentFilterResponse {
  /// The action types to apply to the content filters
  final pulumi.Input<String>? action;
  /// If blocking would occur.
  final pulumi.Input<bool>? blocking;
  /// If the ContentFilter is enabled.
  final pulumi.Input<bool>? enabled;
  /// Name of ContentFilter.
  final pulumi.Input<String>? name;
  /// Level at which content is filtered.
  final pulumi.Input<String>? severityThreshold;
  /// Content source to apply the Content Filters.
  final pulumi.Input<String>? source;

  /// Creates a new [RaiPolicyContentFilterResponse].
  /// [action] The action types to apply to the content filters
  /// [blocking] If blocking would occur.
  /// [enabled] If the ContentFilter is enabled.
  /// [name] Name of ContentFilter.
  /// [severityThreshold] Level at which content is filtered.
  /// [source] Content source to apply the Content Filters.
  RaiPolicyContentFilterResponse({
    this.action,
    this.blocking,
    this.enabled,
    this.name,
    this.severityThreshold,
    this.source,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'action': ?action,
      'blocking': ?blocking,
      'enabled': ?enabled,
      'name': ?name,
      'severityThreshold': ?severityThreshold,
      'source': ?source,
    };
  }

  factory RaiPolicyContentFilterResponse.fromMap(Map<String, dynamic> map) {
    return RaiPolicyContentFilterResponse(
      action: map['action'] == null ? null : (map['action']! as String).input(),
      blocking: map['blocking'] == null ? null : (map['blocking']! as bool).input(),
      enabled: map['enabled'] == null ? null : (map['enabled']! as bool).input(),
      name: map['name'] == null ? null : (map['name']! as String).input(),
      severityThreshold: map['severityThreshold'] == null ? null : (map['severityThreshold']! as String).input(),
      source: map['source'] == null ? null : (map['source']! as String).input(),
    );
  }
}

