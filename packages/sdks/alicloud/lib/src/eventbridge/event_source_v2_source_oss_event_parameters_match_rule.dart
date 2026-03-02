// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class EventSourceV2SourceOssEventParametersMatchRule {
  final pulumi.Input<String>? matchState;
  final pulumi.Input<String>? name;
  final pulumi.Input<String>? prefix;
  final pulumi.Input<String>? suffix;

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
      matchState: map['matchState'] == null ? null : (map['matchState'] as String).input(),
      name: map['name'] == null ? null : (map['name'] as String).input(),
      prefix: map['prefix'] == null ? null : (map['prefix'] as String).input(),
      suffix: map['suffix'] == null ? null : (map['suffix'] as String).input(),
    );
  }
}

