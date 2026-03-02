// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Azure OpenAI Content Filter.
class RaiPolicyContentFilter {
  /// Level at which content is filtered.
  final pulumi.Input<String>? allowedContentLevel;
  /// If blocking would occur.
  final pulumi.Input<bool>? blocking;
  /// If the ContentFilter is enabled.
  final pulumi.Input<bool>? enabled;
  /// Name of ContentFilter.
  final pulumi.Input<String>? name;
  /// Content source to apply the Content Filters.
  final pulumi.Input<String>? source;

  /// Creates a new [RaiPolicyContentFilter].
  /// [allowedContentLevel] Level at which content is filtered.
  /// [blocking] If blocking would occur.
  /// [enabled] If the ContentFilter is enabled.
  /// [name] Name of ContentFilter.
  /// [source] Content source to apply the Content Filters.
  RaiPolicyContentFilter({
    this.allowedContentLevel,
    this.blocking,
    this.enabled,
    this.name,
    this.source,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'allowedContentLevel': ?allowedContentLevel,
      'blocking': ?blocking,
      'enabled': ?enabled,
      'name': ?name,
      'source': ?source,
    };
  }

  factory RaiPolicyContentFilter.fromMap(Map<String, dynamic> map) {
    return RaiPolicyContentFilter(
      allowedContentLevel: map['allowedContentLevel'] == null ? null : (map['allowedContentLevel']! as String).input(),
      blocking: map['blocking'] == null ? null : (map['blocking']! as bool).input(),
      enabled: map['enabled'] == null ? null : (map['enabled']! as bool).input(),
      name: map['name'] == null ? null : (map['name']! as String).input(),
      source: map['source'] == null ? null : (map['source']! as String).input(),
    );
  }
}

