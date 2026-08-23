// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The Batch service does not assign any meaning to this metadata; it is solely for the use of user code.
class MetadataItem {
  /// The name of the metadata item.
  final pulumi.Input<String> name;
  /// The value of the metadata item.
  final pulumi.Input<String> value;

  /// Creates a new [MetadataItem].
  /// [name] The name of the metadata item.
  /// [value] The value of the metadata item.
  const MetadataItem({
    required this.name,
    required this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'value': value,
    };
  }

  factory MetadataItem.fromMap(Map<String, dynamic> map) {
    return MetadataItem(
      name: pulumi.Input.fromValue(map['name'] as String),
      value: pulumi.Input.fromValue(map['value'] as String),
    );
  }
}
