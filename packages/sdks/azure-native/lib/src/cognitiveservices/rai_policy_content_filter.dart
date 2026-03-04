// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Azure OpenAI Content Filter.
class RaiPolicyContentFilter {
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

  /// Creates a new [RaiPolicyContentFilter].
  /// [action] The action types to apply to the content filters
  /// [blocking] If blocking would occur.
  /// [enabled] If the ContentFilter is enabled.
  /// [name] Name of ContentFilter.
  /// [severityThreshold] Level at which content is filtered.
  /// [source] Content source to apply the Content Filters.
  RaiPolicyContentFilter({
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

  factory RaiPolicyContentFilter.fromMap(Map<String, dynamic> map) {
    return RaiPolicyContentFilter(
      action: (() {
        final guardedValue = map['action'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      blocking: (() {
        final guardedValue = map['blocking'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      enabled: (() {
        final guardedValue = map['enabled'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      name: (() {
        final guardedValue = map['name'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      severityThreshold: (() {
        final guardedValue = map['severityThreshold'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      source: (() {
        final guardedValue = map['source'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
