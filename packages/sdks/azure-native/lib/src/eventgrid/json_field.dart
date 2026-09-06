// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// This is used to express the source of an input schema mapping for a single target field in the Event Grid Event schema. This is currently used in the mappings for the 'id', 'topic' and 'eventtime' properties. This represents a field in the input event schema.
class JsonField {
  /// Name of a field in the input event schema that's to be used as the source of a mapping.
  final pulumi.Input<String?>? sourceField;

  /// Creates a new [JsonField].
  /// [sourceField] Name of a field in the input event schema that's to be used as the source of a mapping.
  const JsonField({
    this.sourceField,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'sourceField': ?sourceField,
    };
  }

  factory JsonField.fromMap(Map<String, dynamic> map) {
    return JsonField(
      sourceField: (() { final guardedValue = map['sourceField']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
