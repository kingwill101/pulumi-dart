// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The Batch service does not assign any meaning to this metadata; it is solely for the use of user code.
class MetadataItemResponse {
  /// The name of the metadata item.
  final pulumi.Input<String> name;
  /// The value of the metadata item.
  final pulumi.Input<String> value;

  /// Creates a new [MetadataItemResponse].
  /// [name] The name of the metadata item.
  /// [value] The value of the metadata item.
  MetadataItemResponse({
    required this.name,
    required this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'value': value,
    };
  }

  factory MetadataItemResponse.fromMap(Map<String, dynamic> map) {
    return MetadataItemResponse(
      name: (map['name'] as String).input(),
      value: (map['value'] as String).input(),
    );
  }
}

