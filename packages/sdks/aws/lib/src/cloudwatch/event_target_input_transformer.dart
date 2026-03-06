// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class EventTargetInputTransformer {
  /// Key value pairs specified in the form of JSONPath (for example, time = $.time)
  /// * You can have as many as 100 key-value pairs.
  /// * You must use JSON dot notation, not bracket notation.
  /// * The keys can't start with "AWS".
  final pulumi.Input<Map<String, String>>? inputPaths;
  /// Template to customize data sent to the target. Must be valid JSON. To send a string value, the string value must include double quotes.
  final pulumi.Input<String> inputTemplate;

  /// Creates a new [EventTargetInputTransformer].
  /// [inputPaths] Key value pairs specified in the form of JSONPath (for example, time = $.time)
  /// [inputTemplate] Template to customize data sent to the target. Must be valid JSON. To send a string value, the string value must include double quotes.
  const EventTargetInputTransformer({
    this.inputPaths,
    required this.inputTemplate,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'inputPaths': ?inputPaths,
      'inputTemplate': inputTemplate,
    };
  }

  factory EventTargetInputTransformer.fromMap(Map<String, dynamic> map) {
    return EventTargetInputTransformer(
      inputPaths: (() { final guardedValue = map['inputPaths']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      inputTemplate: pulumi.Input.fromValue(map['inputTemplate'] as String),
    );
  }
}

