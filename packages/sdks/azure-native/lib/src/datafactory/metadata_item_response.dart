// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Specify the name and value of custom metadata item.
class MetadataItemResponse {
  /// Metadata item key name. Type: string (or Expression with resultType string).
  final pulumi.Input<dynamic>? name;
  /// Metadata item value. Type: string (or Expression with resultType string).
  final pulumi.Input<dynamic>? value;

  /// Creates a new [MetadataItemResponse].
  /// [name] Metadata item key name. Type: string (or Expression with resultType string).
  /// [value] Metadata item value. Type: string (or Expression with resultType string).
  const MetadataItemResponse({
    this.name,
    this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': ?name,
      'value': ?value,
    };
  }

  factory MetadataItemResponse.fromMap(Map<String, dynamic> map) {
    return MetadataItemResponse(
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
      value: (() { final guardedValue = map['value']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
    );
  }
}
