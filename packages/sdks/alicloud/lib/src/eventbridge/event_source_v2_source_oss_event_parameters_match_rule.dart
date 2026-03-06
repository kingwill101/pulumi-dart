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
  const EventSourceV2SourceOssEventParametersMatchRule({
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
      matchState: (() { final guardedValue = map['matchState']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      prefix: (() { final guardedValue = map['prefix']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      suffix: (() { final guardedValue = map['suffix']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

