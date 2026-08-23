// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Specify the name and value of custom metadata item.
class MetadataItem {
  /// Metadata item key name. Type: string (or Expression with resultType string).
  final pulumi.Input<dynamic>? name;
  /// Metadata item value. Type: string (or Expression with resultType string).
  final pulumi.Input<dynamic>? value;

  /// Creates a new [MetadataItem].
  /// [name] Metadata item key name. Type: string (or Expression with resultType string).
  /// [value] Metadata item value. Type: string (or Expression with resultType string).
  const MetadataItem({
    this.name,
    this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': ?name,
      'value': ?value,
    };
  }

  factory MetadataItem.fromMap(Map<String, dynamic> map) {
    return MetadataItem(
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
      value: (() { final guardedValue = map['value']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
    );
  }
}
