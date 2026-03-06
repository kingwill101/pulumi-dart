// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Azure OpenAI Content Filter.
class RaiPolicyContentFilterResponse {
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

  /// Creates a new [RaiPolicyContentFilterResponse].
  /// [allowedContentLevel] Level at which content is filtered.
  /// [blocking] If blocking would occur.
  /// [enabled] If the ContentFilter is enabled.
  /// [name] Name of ContentFilter.
  /// [source] Content source to apply the Content Filters.
  const RaiPolicyContentFilterResponse({
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

  factory RaiPolicyContentFilterResponse.fromMap(Map<String, dynamic> map) {
    return RaiPolicyContentFilterResponse(
      allowedContentLevel: (() { final guardedValue = map['allowedContentLevel']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      blocking: (() { final guardedValue = map['blocking']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      enabled: (() { final guardedValue = map['enabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      source: (() { final guardedValue = map['source']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

