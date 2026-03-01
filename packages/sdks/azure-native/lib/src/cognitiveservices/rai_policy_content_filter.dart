// ignore_for_file: unused_element, unnecessary_cast


/// Azure OpenAI Content Filter.
class RaiPolicyContentFilter {
  /// The action types to apply to the content filters
  final String? action;
  /// If blocking would occur.
  final bool? blocking;
  /// If the ContentFilter is enabled.
  final bool? enabled;
  /// Name of ContentFilter.
  final String? name;
  /// Level at which content is filtered.
  final String? severityThreshold;
  /// Content source to apply the Content Filters.
  final String? source;

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
      action: map['action'] == null ? null : map['action'] as String,
      blocking: map['blocking'] == null ? null : map['blocking'] as bool,
      enabled: map['enabled'] == null ? null : map['enabled'] as bool,
      name: map['name'] == null ? null : map['name'] as String,
      severityThreshold: map['severityThreshold'] == null ? null : map['severityThreshold'] as String,
      source: map['source'] == null ? null : map['source'] as String,
    );
  }
}

