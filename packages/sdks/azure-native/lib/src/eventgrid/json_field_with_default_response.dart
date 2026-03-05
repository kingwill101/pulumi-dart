// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// This is used to express the source of an input schema mapping for a single target field
/// in the Event Grid Event schema. This is currently used in the mappings for the 'subject',
/// 'eventtype' and 'dataversion' properties. This represents a field in the input event schema
/// along with a default value to be used, and at least one of these two properties should be provided.
class JsonFieldWithDefaultResponse {
  /// The default value to be used for mapping when a SourceField is not provided or if there's no property with the specified name in the published JSON event payload.
  final pulumi.Input<String>? defaultValue;
  /// Name of a field in the input event schema that's to be used as the source of a mapping.
  final pulumi.Input<String>? sourceField;

  /// Creates a new [JsonFieldWithDefaultResponse].
  /// [defaultValue] The default value to be used for mapping when a SourceField is not provided or if there's no property with the specified name in the published JSON event payload.
  /// [sourceField] Name of a field in the input event schema that's to be used as the source of a mapping.
  JsonFieldWithDefaultResponse({
    this.defaultValue,
    this.sourceField,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'defaultValue': ?defaultValue,
      'sourceField': ?sourceField,
    };
  }

  factory JsonFieldWithDefaultResponse.fromMap(Map<String, dynamic> map) {
    return JsonFieldWithDefaultResponse(
      defaultValue: (() { final guardedValue = map['defaultValue']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      sourceField: (() { final guardedValue = map['sourceField']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

