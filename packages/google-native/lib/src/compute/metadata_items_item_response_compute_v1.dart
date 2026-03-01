// ignore_for_file: unused_element, unnecessary_cast

/// Metadata
class MetadataItemsItemResponseComputeV1 {
  /// Key for the metadata entry. Keys must conform to the following regexp: [a-zA-Z0-9-_]+, and be less than 128 bytes in length. This is reflected as part of a URL in the metadata server. Additionally, to avoid ambiguity, keys must not conflict with any other metadata keys for the project.
  final String key;

  /// Value for the metadata entry. These are free-form strings, and only have meaning as interpreted by the image running in the instance. The only restriction placed on values is that their size must be less than or equal to 262144 bytes (256 KiB).
  final String value;

  /// Creates a new [MetadataItemsItemResponseComputeV1].
  /// [key] Key for the metadata entry. Keys must conform to the following regexp: [a-zA-Z0-9-_]+, and be less than 128 bytes in length. This is reflected as part of a URL in the metadata server. Additionally, to avoid ambiguity, keys must not conflict with any other metadata keys for the project.
  /// [value] Value for the metadata entry. These are free-form strings, and only have meaning as interpreted by the image running in the instance. The only restriction placed on values is that their size must be less than or equal to 262144 bytes (256 KiB).
  MetadataItemsItemResponseComputeV1({required this.key, required this.value});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'key': key, 'value': value};
  }

  factory MetadataItemsItemResponseComputeV1.fromMap(Map<String, dynamic> map) {
    return MetadataItemsItemResponseComputeV1(
      key: map['key'] as String,
      value: map['value'] as String,
    );
  }
}
