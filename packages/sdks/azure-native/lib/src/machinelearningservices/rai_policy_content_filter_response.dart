// ignore_for_file: unused_element, unnecessary_cast


/// Azure OpenAI Content Filter.
class RaiPolicyContentFilterResponse {
  /// Level at which content is filtered.
  final String? allowedContentLevel;
  /// If blocking would occur.
  final bool? blocking;
  /// If the ContentFilter is enabled.
  final bool? enabled;
  /// Name of ContentFilter.
  final String? name;
  /// Content source to apply the Content Filters.
  final String? source;

  /// Creates a new [RaiPolicyContentFilterResponse].
  /// [allowedContentLevel] Level at which content is filtered.
  /// [blocking] If blocking would occur.
  /// [enabled] If the ContentFilter is enabled.
  /// [name] Name of ContentFilter.
  /// [source] Content source to apply the Content Filters.
  RaiPolicyContentFilterResponse({
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
      allowedContentLevel: map['allowedContentLevel'] == null ? null : map['allowedContentLevel'] as String,
      blocking: map['blocking'] == null ? null : map['blocking'] as bool,
      enabled: map['enabled'] == null ? null : map['enabled'] as bool,
      name: map['name'] == null ? null : map['name'] as String,
      source: map['source'] == null ? null : map['source'] as String,
    );
  }
}

