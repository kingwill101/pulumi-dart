// ignore_for_file: unused_element, unnecessary_cast


class EventSourceV2SourceOssEventParametersMatchRule {
  final String? matchState;
  final String? name;
  final String? prefix;
  final String? suffix;

  /// Creates a new [EventSourceV2SourceOssEventParametersMatchRule].
  /// [matchState] Optional.
  /// [name] Optional.
  /// [prefix] Optional.
  /// [suffix] Optional.
  EventSourceV2SourceOssEventParametersMatchRule({
    this.matchState,
    this.name,
    this.prefix,
    this.suffix,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'matchState': ?matchState,
      'name': ?name,
      'prefix': ?prefix,
      'suffix': ?suffix,
    };
  }

  factory EventSourceV2SourceOssEventParametersMatchRule.fromMap(Map<String, dynamic> map) {
    return EventSourceV2SourceOssEventParametersMatchRule(
      matchState: map['matchState'] == null ? null : map['matchState'] as String,
      name: map['name'] == null ? null : map['name'] as String,
      prefix: map['prefix'] == null ? null : map['prefix'] as String,
      suffix: map['suffix'] == null ? null : map['suffix'] as String,
    );
  }
}

